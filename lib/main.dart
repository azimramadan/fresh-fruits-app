import 'package:flutter/material.dart';
import 'package:fresh_fruits_app/views/onboarding_view.dart';
import 'package:fresh_fruits_app/views/splash_view.dart';

void main() {
  runApp(const FruitsApp());
}

class FruitsApp extends StatelessWidget {
  const FruitsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashView.viewId: (context) => const SplashView(),
        OnboardingView.viewId: (context) => OnboardingView(),
      },
      initialRoute: SplashView.viewId,
    );
  }
}
