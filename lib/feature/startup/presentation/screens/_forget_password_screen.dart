import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/widget/tamayoz_input_field.dart';
import 'package:ai_tamayoz/feature/startup/presentation/screens/onboarding_screen_two.dart';
import 'package:ai_tamayoz/feature/startup/presentation/widgets/bottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/feature/startup/presentation/widgets/onboarding_background.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  ForgetPasswordScreenState createState() => ForgetPasswordScreenState();
}

class ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                          "Forget Password",
                          style: titleStyle,
                        ),
                        Text("\nWill sent you Reset Link", style: titleStyle2)
                      ],
                    )),
              ),
              BottomSheets(
                height: 320.0,
                child: Padding(
                  padding: const EdgeInsets.only(top:15.0,bottom: 15,left:25,right:25),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                      const  Text(
                          'Enter Your Details',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      const SizedBox(
                          height: 10,
                        ),
                     const TamayozInputWidget(
                          title: "Email", 
                          hintText: "Email",
                          // passwordField: true,
                          ),

                           
                       
                        TamayozLoanButtons(
                                context: context,
                                onTap: () {},
                                text: "Reset Password",
                                textColor: TamayozLoanColors.white,
                                color: TamayozLoanColors.grey1)
                            .normal(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                             children:[
                              Text("Remenber Your Password?"),
                              SizedBox(width: 10,),
                             InkWell(
                                onTap: () {
                                const  OnboardingScreenLoginRoute().push(context);
                                },
                                child:const Text("Log in Here",  style: TextStyle(
                                    color: Color.fromRGBO(19, 201, 226, 1),
                                    fontSize: 16,
                                  ),),
                             )
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