import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/design_system/theme.dart';
import 'core/routing/app_router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: RehlatiBesehatiApp(),
    ),
  );
}

class RehlatiBesehatiApp extends StatelessWidget {
  const RehlatiBesehatiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'رحلتي بصحتي',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      
      // Arabic RTL as Primary
      locale: const Locale('ar', 'SA'),
      supportedLocales: const [
        Locale('ar', 'SA'),
        Locale('en', 'US'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: (context, child) {
        // Enforce RTL text direction at the root level just in case
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
    );
  }
}
