import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/glucose/glucose.entity.dart';
import '../../providers/glucose_providers.dart';

class AddGlucosePage extends ConsumerStatefulWidget {
  final GlucoseData? glucoseReading;

  const AddGlucosePage({Key? key, this.glucoseReading}) : super(key: key);

  @override
  ConsumerState<AddGlucosePage> createState() => _AddGlucosePageState();
}

class _AddGlucosePageState extends ConsumerState<AddGlucosePage> {
  final _formKey = GlobalKey<FormState>();
  final _valueController = TextEditingController();
  final _noteController = TextEditingController();
  
  DateTime _selectedDateTime = DateTime.now();
  bool _isSubmitting = false;

  @override
  void initState() {
    super.initState();
    
    // If editing an existing reading, populate the form
    if (widget.glucoseReading != null) {
      _valueController.text = widget.glucoseReading!.value.toString();
      _noteController.text = widget.glucoseReading!.note ?? '';
      
      // Parse timestamp if available
      if (widget.glucoseReading!.timestamp != null) {
        final parsedDate = DateTime.tryParse(widget.glucoseReading!.timestamp!);
        if (parsedDate != null) {
          _selectedDateTime = parsedDate;
        }
      }
    }
  }

  @override
  void dispose() {
    _valueController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  Future<void> _selectDateTime() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime.now().add(const Duration(days: 1)),
    );
    
    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(_selectedDateTime),
      );
      
      if (pickedTime != null) {
        setState(() {
          _selectedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
      }
    }
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isSubmitting = true;
      });

      final glucoseValue = int.parse(_valueController.text);
      final note = _noteController.text.trim();
      final timestamp = _selectedDateTime.toUtc().toIso8601String();

      try {
        if (widget.glucoseReading != null) {
          // Update existing reading
          // await ref.read(glucoseNotifierProvider.notifier).updateGlucoseReading(
          //   id: widget.glucoseReading!.id!,
          //   value: glucoseValue,
          //   timestamp: timestamp,
          //   note: note.isNotEmpty ? note : null,
          // );
        } else {
          // Add new reading
          // await ref.read(glucoseNotifierProvider.notifier).addGlucoseReading(
          //   value: glucoseValue,
          //   timestamp: timestamp,
          //   note: note.isNotEmpty ? note : null,
          // );
        }

        if (mounted) {
          Navigator.of(context).pop();
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      } finally {
        if (mounted) {
          setState(() {
            _isSubmitting = false;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.glucoseReading != null
            ? 'Edit Glucose Reading'
            : 'Add Glucose Reading'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _valueController,
                decoration: const InputDecoration(
                  labelText: 'Glucose Value (mg/dL)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a glucose value';
                  }
                  final intValue = int.tryParse(value);
                  if (intValue == null) {
                    return 'Please enter a valid number';
                  }
                  if (intValue < 10 || intValue > 600) {
                    return 'Please enter a value between 10 and 600';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: _selectDateTime,
                child: InputDecorator(
                  decoration: const InputDecoration(
                    labelText: 'Date & Time',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                  child: Text(
                    DateFormat('MMM d, yyyy - h:mm a').format(_selectedDateTime),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _noteController,
                decoration: const InputDecoration(
                  labelText: 'Note (Optional)',
                  border: OutlineInputBorder(),
                  hintText: 'e.g., After breakfast, Before bed, etc.',
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _isSubmitting ? null : _submitForm,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: _isSubmitting
                    ? const CircularProgressIndicator()
                    : Text(
                        widget.glucoseReading != null ? 'Update' : 'Save',
                        style: const TextStyle(fontSize: 16),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
