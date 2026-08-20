import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/design_system/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        context.go('/');
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Premium abstract logo placeholder (e.g., journey path)
              const Icon(
                Icons.flight_takeoff_rounded,
                size: 80,
                color: Colors.white,
              ),
              const SizedBox(height: 24),
              Text(
                'رحلتي بصحتي',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 12),
              Text(
                'خطط رحلتك... وصحتك تسافر معك',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColors.primaryLight,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
