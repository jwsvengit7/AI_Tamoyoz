import 'package:ai_tamayoz/core/appbar/font.dart';
import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/feature/auth/presentation/screens/auth_screen.dart';
import 'package:ai_tamayoz/feature/auth/presentation/screens/login_screen_two.dart';
import 'package:ai_tamayoz/feature/startup/presentation/widgets/bottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/feature/startup/presentation/widgets/onboarding_background.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  GetStatedScreenState createState() => GetStatedScreenState();
}

class GetStatedScreenState extends State<OnboardingScreen> {
        final font = FontFamilys();



  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
          body: OnBoardingBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  Assets.images.logo.path,
                  width: 500.w,
                  height: 200.h,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome!",
                        style: font.titleStyle,
                      ),
                      Text("\nLets Get Started!", style: font.titleStyle2)
                    ],
                  )),
            ),
            BottomSheets(
              height: 270.0.h,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Column(
                    children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Select Langauge',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TamayozLoanButtons(
                            context: context,
                            onTap: () => Navigator.of(context).push(_createRoute()),
                            text: "English",
                            color: TamayozLoanColors.black1)
                        .normal(),
                           const SizedBox(
                      height: 15,
                    ),
                    TamayozLoanButtons(
                            context: context,
                            onTap:  () => Navigator.of(context).push(_createRoute()),
                            text: "العربية",
                            textColor: TamayozLoanColors.black1,
                            color: TamayozLoanColors.scaffoldBackgroundColor)
                        .normal()
                  ]),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const OnboardingScreenTwo(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
