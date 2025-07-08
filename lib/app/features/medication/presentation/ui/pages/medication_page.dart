import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../presentation/providers/medication_providers.dart';
import '../../providers/medication_state.dart';
import '../widgets/medication_item.dart';

class MedicationPage extends ConsumerStatefulWidget {
  const MedicationPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MedicationPage> createState() => _MedicationPageState();
}

class _MedicationPageState extends ConsumerState<MedicationPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchMedications();
    });
  }

  void _fetchMedications() {
    final medicationNotifier = ref.read(medicationProvider.notifier);
    medicationNotifier.getMedications();
  }

  @override
  Widget build(BuildContext context) {
    final medicationState = ref.watch(medicationProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Medications'),
      ),
      body: _buildBody(medicationState),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add medication page (to be implemented)
          // context.go(MedicationRoutes.addMedicationPath);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody(MedicationState medicationState) {
    if (medicationState.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (medicationState.error.isNotEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 60,
            ),
            const SizedBox(height: 16),
            Text(
              'Error: ${medicationState.error}',
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref.read(medicationProvider.notifier).getMedications();
              },
              child: const Text('Try Again'),
            ),
          ],
        ),
      );
    }

    if (medicationState.medications.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.medication_outlined,
              size: 60,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            const Text(
              'No medications found',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to add medication page (to be implemented)
                // context.go(MedicationRoutes.addMedicationPath);
              },
              child: const Text('Add Medication'),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(medicationProvider.notifier).getMedications();
      },
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        itemCount: medicationState.medications.length,
        itemBuilder: (context, index) {
          final medication = medicationState.medications[index];
          return MedicationItem(medication: medication);
        },
      ),
    );
  }
}
