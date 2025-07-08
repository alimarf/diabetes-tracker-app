import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/glucose/glucose.entity.dart';
import '../../providers/glucose_providers.dart';
import '../../../../../features/auth/presentation/providers/auth_providers.dart';
import '../../../../../routes/routes.dart';
import '../../providers/glucose_state.dart';
import '../widgets/glucose_item.dart';
import 'add_glucose_page.dart';

class GlucosePage extends ConsumerStatefulWidget {
  const GlucosePage({Key? key}) : super(key: key);

  @override
  ConsumerState<GlucosePage> createState() => _GlucosePageState();
}

class _GlucosePageState extends ConsumerState<GlucosePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(glucoseNotifierProvider.notifier).getGlucoseReadings();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(glucoseNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Glucose Readings'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _showLogoutConfirmationDialog(context),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: _buildBody(state),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAddPage(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody(GlucoseState state) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (state.error.isNotEmpty) {
      return Center(child: Text('Error: ${state.error}'));
    } else if (state.glucoseReadings.isEmpty) {
      return const Center(child: Text('No glucose readings found'));
    } else {
      return ListView.separated(
        itemCount: state.glucoseReadings.length,
        itemBuilder: (context, index) {
          final reading = state.glucoseReadings[index];
          return GlucoseItem(
            reading: reading,
            onDelete: () {},
            onEdit: () {},
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      );
    }
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout Confirmation'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _logout(context);
              },
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }

  void _logout(BuildContext context) {
    ref.read(authNotifierProvider.notifier).logout();
    if (context.mounted) {
      context.go(Routes.login);
    }
  }

  void _navigateToAddPage(BuildContext context) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AddGlucosePage(),
      ),
    );
  }

  void _navigateToEditPage(BuildContext context, GlucoseData reading) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AddGlucosePage(glucoseReading: reading),
      ),
    );
  }
}
