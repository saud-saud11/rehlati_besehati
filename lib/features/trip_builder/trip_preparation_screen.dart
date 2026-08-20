import 'package:flutter/material.dart';
import '../../core/design_system/colors.dart';
import 'package:go_router/go_router.dart';

class TripPreparationScreen extends StatefulWidget {
  const TripPreparationScreen({super.key});

  @override
  State<TripPreparationScreen> createState() => _TripPreparationScreenState();
}

class _TripPreparationScreenState extends State<TripPreparationScreen> {
  final List<String> _steps = [
    'راجعنا الوجهات',
    'حسبنا مدة الرحلة',
    'راجعنا الموسم',
    'جهزنا ملف كل مسافر',
    'رتبنا أهم استعدادات الرحلة',
  ];
  
  int _currentStep = 0;

  @override
  void initState() {
    super.initState();
    _animateSteps();
  }

  Future<void> _animateSteps() async {
    for (int i = 0; i < _steps.length; i++) {
      await Future.delayed(const Duration(milliseconds: 800));
      if (mounted) {
        setState(() {
          _currentStep = i;
        });
      }
    }
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      context.go('/trip-dashboard');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'قاعد نجهز رحلتكم...',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 48),
              
              ...List.generate(_steps.length, (index) {
                final isActive = index <= _currentStep;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Row(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: isActive ? Colors.white : Colors.transparent,
                          border: Border.all(color: Colors.white, width: 2),
                          shape: BoxShape.circle,
                        ),
                        child: isActive 
                            ? const Icon(Icons.check, size: 16, color: AppColors.primary)
                            : null,
                      ),
                      const SizedBox(width: 16),
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: isActive ? 1.0 : 0.5,
                        child: Text(
                          _steps[index],
                          style: const TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
