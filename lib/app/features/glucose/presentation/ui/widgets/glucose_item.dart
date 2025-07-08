
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/glucose/glucose.entity.dart';

class GlucoseItem extends StatelessWidget {
  final GlucoseData reading;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const GlucoseItem({
    Key? key,
    required this.reading,
    required this.onDelete,
    required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Parse the timestamp string to DateTime
    final DateTime? timestamp = reading.timestamp != null
        ? DateTime.tryParse(reading.timestamp!)
        : null;

    // Format the timestamp for display
    final String formattedDate = timestamp != null
        ? DateFormat('MMM d, yyyy - h:mm a').format(timestamp)
        : 'Unknown date';

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${reading.value} mg/dL',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: onEdit,
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        // Show confirmation dialog
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: const Text('Delete Reading'),
                            content: const Text(
                              'Are you sure you want to delete this reading?',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(ctx).pop(),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () {
                                  onDelete();
                                  Navigator.of(ctx).pop();
                                },
                                child: const Text('Delete'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              formattedDate,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            if (reading.note != null && reading.note!.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                'Note: ${reading.note}',
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
