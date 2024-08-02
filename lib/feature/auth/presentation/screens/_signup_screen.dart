import 'package:ai_tamayoz/core/appbar/font.dart';
import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/widget/text_field/number_input.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_text_field.dart';
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
      final email = TextEditingController();
      final fullName = TextEditingController();
      final password = TextEditingController();
      final mobileNumber = TextEditingController();
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
                            style: font.titleStyle,
                          ),
                          Text("\nCreate an Account", style: font.titleStyle2)
                        ],
                      )),
                ),
                BottomSheets(
                  height: 600.0.h,
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0,bottom: 15,left:15,right:15),
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
                       TamayozSearchTextField(
                            controller: fullName,
                                                      type: "text",
          
                            hintText: "Full Name"),
                         const SizedBox(
                            height: 12,
                          ),
                        TamayozSearchTextField(
                            controller: email,
                            hintText: "Email",
                            type: "email",
                            ),
                            SizedBox(height:12),
          
                             PhoneNumberInput(
                      controller: mobileNumber,
                      type: "Mobile Number",
                   
          
                      // passwordField: true,
                    ),
                                                      SizedBox(height:12),
          
                                TamayozSearchTextField(
                            controller: password,
                            hintText: "Password",
                            type:"password",
                            
          
                            ),
                            SizedBox(height:12),
                         
                          Padding(
                            padding: const EdgeInsets.only(top:12.0,bottom: 5.0),
                            child: TamayozLoanButtons(
                                    context: context,
                                    onTap: () =>
                                        Navigator.of(context).push(_createRoute()),
                                    text: "Register",
                                    textColor: TamayozLoanColors.white,
                                    color: TamayozLoanColors.black1)
                                .normal(),
                          ),
                          SizedBox(height:10),
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
