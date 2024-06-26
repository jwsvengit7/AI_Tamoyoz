import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ai_tamayoz/feature/startup/presentation/widgets/onboarding_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
     const OnboardingScreenRoute().push(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: OnBoardingBackground(
          child: SizedBox(),
        ),
      ),
    );
  }
}
