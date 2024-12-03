import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fresh_fruits_app/views/onboarding_view.dart';

class SplashView extends StatefulWidget {
  static String viewId = 'SplashView';

  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, OnboardingView.viewId);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEC54B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Image.asset('assets/images/logo.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Fresh Fruits',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 38,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
