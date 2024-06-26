import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/widget/tamayoz_input_field.dart';
import 'package:ai_tamayoz/feature/startup/presentation/widgets/bottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/feature/startup/presentation/widgets/onboarding_background.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';

class OnboardingScreenTwo extends StatefulWidget {
  const OnboardingScreenTwo({super.key});

  @override
  OnboardingScreenTwoState createState() => OnboardingScreenTwoState();
}

class OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
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
                          "Welcome Back",
                          style: titleStyle,
                        ),
                        Text("\nLogin to your Account", style: titleStyle2)
                      ],
                    )),
              ),
              BottomSheets(
                height: 420.0,
                child: Padding(
                  padding: const EdgeInsets.only(top:15.0,bottom: 15,left:25,right:25),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                      const  Text(
                          'Enter Your Crendentials',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                    const TamayozInputWidget(
                          title: "Email/Mobile Number",
                          hintText: "Email/Mobile Number"),
                       const SizedBox(
                          height: 10,
                        ),
                     const TamayozInputWidget(
                          title: "Password", 
                          hintText: "Password",
                          // passwordField: true,
                          ),
                        Container(
                            alignment: Alignment.topRight,
                            child:  Padding(
                            padding:  EdgeInsets.only(left:8.0,right:8.0),
                              child:  InkWell(
                                onTap: () {
                                const  ForgetPasswordRoute().push(context);
                                },
                                child:const Text(
                                  "Forget Password",
                                  style: TextStyle(
                                    color: Color.fromRGBO(19, 201, 226, 1),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            )),
                        TamayozLoanButtons(
                                context: context,
                                onTap: () {},
                                text: "Login",
                                textColor: TamayozLoanColors.white,
                                color: TamayozLoanColors.grey4)
                            .normal(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                             children:[
                            const  Text("Dont have an Account?"),
                            const  SizedBox(width: 10,),
                              InkWell(
                                onTap:() {
                                 const   OnboardingScreenSignupRoute().push(context);
                                },
                                child:const Text("Register Here",  style: TextStyle(
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

}
