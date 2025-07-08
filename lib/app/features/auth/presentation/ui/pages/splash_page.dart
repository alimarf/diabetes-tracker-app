import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../routes/routes.dart';
import '../../providers/auth_providers.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.6, curve: Curves.easeInOut),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.4, 1.0, curve: Curves.elasticOut),
      ),
    );

    _animationController.forward();
    
    // Use Future.microtask to defer the provider modification until after build
    Future.microtask(() => _navigateToNext());
  }

  Future<void> _navigateToNext() async {
    try {
      // Get the auth notifier to check authentication
      final authNotifier = ref.read(authNotifierProvider.notifier);
      
      // Check auth status (deferred to run after widget tree is built)
      await authNotifier.checkAuthStatus();

      // Wait for animation to complete
      await Future.delayed(const Duration(seconds: 3));

      // Check if widget is still mounted before navigating
      if (!mounted) return;

      // Get the current auth state
      final authState = ref.read(authNotifierProvider);

      // Navigate based on auth state
      if (authState.isAuthenticated) {
        context.go(Routes.home);
      } else {
        context.go(Routes.login);
      }
    } catch (e) {
      // On error, navigate to login if widget is still mounted
      if (mounted) {
        context.go(Routes.login);
      }
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return FadeTransition(
              opacity: _fadeAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'app-logo',
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const FlutterLogo(
                          size: 120,
                          style: FlutterLogoStyle.horizontal,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      'Diabetes App',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Manage your health journey',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                    const SizedBox(height: 48),
                    const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      strokeWidth: 2.0,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
