/// Routes constants class
/// Contains all route paths used in the app
class Routes {
  /// Private constructor to prevent instantiation
  Routes._();

  /// Root routes
  static const String splash = '/splash';
  static const String home = '/home';
  
  /// Auth routes
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  
  /// Feature routes can be namespaced
  // Dashboard routes
  static const String dashboard = '/dashboard';
  static const String dashboardDetails = '/dashboard/details';
  
  // Profile routes
  static const String profile = '/profile';
  static const String profileEdit = '/profile/edit';
  
  // Add more routes as needed
}
