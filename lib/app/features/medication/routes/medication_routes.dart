import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/ui/pages/medication_page.dart';

class MedicationRoutes {
  static const String medicationPath = '/medication';
  static const String addMedicationPath = '/medication/add';
  static const String medicationDetailsPath = '/medication/details';

  static List<RouteBase> get routes => [
        GoRoute(
          path: medicationPath,
          builder: (BuildContext context, GoRouterState state) {
            return const MedicationPage();
          },
        ),
        // These routes can be implemented as needed when those pages are created
        // GoRoute(
        //   path: addMedicationPath,
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const AddMedicationPage();
        //   },
        // ),
        // GoRoute(
        //   path: '$medicationDetailsPath/:id',
        //   builder: (BuildContext context, GoRouterState state) {
        //     final id = state.pathParameters['id'];
        //     return MedicationDetailsPage(medicationId: id);
        //   },
        // ),
      ];
}
