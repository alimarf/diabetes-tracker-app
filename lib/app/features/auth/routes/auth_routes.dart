import 'package:go_router/go_router.dart';

import '../presentation/ui/pages/login_page.dart';
import '../../../routes/routes.dart';

/// Auth feature routes configuration
class AuthRoutes {
  /// Private constructor to prevent instantiation
  AuthRoutes._();

  /// Get auth routes to be included in the main router
  static List<RouteBase> get routes => [
        GoRoute(
          path: Routes.login,
          name: Routes.login.substring(1),
          builder: (context, state) => const LoginPage(),
        ),
        
        // Add more auth routes as needed
        // GoRoute(
        //   path: Routes.register,
        //   name: Routes.register.substring(1),
        //   builder: (context, state) => const RegisterPage(),
        // ),
        // 
        // GoRoute(
        //   path: Routes.forgotPassword,
        //   name: Routes.forgotPassword.substring(1),
        //   builder: (context, state) => const ForgotPasswordPage(),
        // ),
      ];
}
