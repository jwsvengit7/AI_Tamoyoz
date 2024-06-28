import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/widget/tamayoz_input_field.dart';
import 'package:ai_tamayoz/feature/auth/presentation/screens/_forget_password_screen.dart';
import 'package:ai_tamayoz/feature/startup/presentation/widgets/bottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/feature/startup/presentation/widgets/onboarding_background.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';

class OnboardingScreenSignup extends StatefulWidget {
  const OnboardingScreenSignup({super.key});

  @override
  OnboardingScreenSignupState createState() => OnboardingScreenSignupState();
}

class OnboardingScreenSignupState extends State<OnboardingScreenSignup> {
  TextStyle get titleStyle => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 30,
        height: 1,
        color: TamayozLoanColors.white,
      );
  TextStyle get titleStyle2 => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 1,
        color: TamayozLoanColors.white,
      );

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
          body: SingleChildScrollView(
        child: OnBoardingBackground(
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
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Join Us!",
                          style: titleStyle,
                        ),
                        Text("\nCreate an Account", style: titleStyle2)
                      ],
                    )),
              ),
              BottomSheets(
                height: 550.0,
                child: Padding(
                  padding: const EdgeInsets.only(top:15.0,bottom: 15,left:25,right:25),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                      const  Text(
                          'Provide Following Details',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                    const TamayozInputWidget(
                          title: "Full Name",
                          hintText: "Full Name"),
                       const SizedBox(
                          height: 10,
                        ),
                     const TamayozInputWidget(
                          title: "Email", 
                          hintText: "Email",
                          // passwordField: true,
                          ),

                               const TamayozInputWidget(
                          title: "Mobile Number", 
                          hintText: "Mobile Number",
                          // passwordField: true,
                          ),
                             const TamayozInputWidget(
                          title: "Password", 
                          hintText: "Password",
                          // passwordField: true,
                          ),
                       
                        TamayozLoanButtons(
                                context: context,
                                onTap: () =>
                                    Navigator.of(context).push(_createRoute()),
                                text: "Register",
                                textColor: TamayozLoanColors.white,
                                color: TamayozLoanColors.black1)
                            .normal(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                             children:[
                             const Text("Already have an Account?"),
                            const  SizedBox(width: 10,),
                              InkWell(
                                onTap: () {
                                const  OnboardingScreenLoginRoute().push(context);
                                },
                                child:const Text("Log in Here",  style: TextStyle(
                                    color: Color.fromRGBO(19, 201, 226, 1),
                                    fontSize: 16,
                                  ),),
                              ),
                             ]
                            )
                      ]),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const ForgetPasswordScreen(),
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
