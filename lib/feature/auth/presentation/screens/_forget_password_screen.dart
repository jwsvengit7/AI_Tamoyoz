import 'package:ai_tamayoz/core/appbar/font.dart';
import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/widget/tamayoz_input_field.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_text_field.dart';
import 'package:ai_tamayoz/feature/auth/presentation/screens/login_screen_two.dart';
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
    final email = TextEditingController();
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
                          style: font.titleStyle,
                        ),
                        Text("\nWill sent you Reset Link", style: font.titleStyle2)
                      ],
                    )),
              ),
              BottomSheets(
                height: 350.0.h,
                child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
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
                      TamayozSearchTextField(
                           controller: email,
                                                     type: "email",

                          hintText: "Email",
                          // passwordField: true,
                          ),

                           
                       
                        Padding(
                          padding: const EdgeInsets.only(top:12.0,bottom: 12.0),
                          child: TamayozLoanButtons(
                                  context: context,
                                  onTap: () {},
                                  text: "Reset Password",
                                  textColor: TamayozLoanColors.white,
                                  color: TamayozLoanColors.grey1)
                              .normal(),
                        ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                             children:[
                             const Text("Remenber Your Password?"),
                             const SizedBox(width: 10,),
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