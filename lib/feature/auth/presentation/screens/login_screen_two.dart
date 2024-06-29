import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/dialog/failure_dialog.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/widget/loading/progress_indicator_scaffold.dart';
import 'package:ai_tamayoz/core/widget/tamayoz_input_field.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_text_field.dart';
import 'package:ai_tamayoz/feature/auth/presentation/bloc/authentication_bloc.dart';
import 'package:ai_tamayoz/feature/startup/presentation/widgets/bottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/feature/startup/presentation/widgets/onboarding_background.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:ai_tamayoz/core/extensions/size_extension.dart';

class OnboardingScreenTwo extends StatefulWidget {
  const OnboardingScreenTwo({super.key});

  @override
  OnboardingScreenTwoState createState() => OnboardingScreenTwoState();
}

class OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
  final email = TextEditingController();
  final password = TextEditingController();
  TextStyle get titleStyle => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 30,
        height: 1,
        color: TamayozLoanColors.white,
      );

      bool colorStatus=false;


  TextStyle get titleStyle2 => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 1,
        color: TamayozLoanColors.white,
      );

@override
  void initState() {
    super.initState();
    colorStatus = false; // Initialize the status variable
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: _authBlocListener,
      builder: (context, state) {
        return ProgressIndicatorPage(
          isLoading: state.maybeWhen(
            orElse: () => false,
            settingUpTamayozAuth: () => true,
          ),
      child: AnnotatedRegion<SystemUiOverlayStyle>(
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
                    padding: const EdgeInsets.only(
                        top: 15.0, bottom: 15, left: 25, right: 25),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Enter Your Crendentials',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           TamayozSearchTextField(
                              hintText: "Email/Mobile Number",
                               type: "email",

                              controller:email),
                          const SizedBox(
                            height: 10,
                          ),
                           TamayozSearchTextField(
                            hintText: "Password",
                            controller: password,
                            type:"password",
                            onChanged: (data){
                                setState(() {
        colorStatus =true;
      });
                            },
                            // passwordField: true,
                          ),
                          const SizedBox(height:10),
                          Container(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding:const EdgeInsets.only(left: 8.0, right: 8.0),
                                child: InkWell(
                                  onTap: () {
                                    const ForgetPasswordRoute().push(context);
                                  },
                                  child: const Text(
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
                                  onTap: () =>_handleSubmission(context),
                                  text: "Login",
                                  textColor: TamayozLoanColors.white,
                                  color: colorStatus? TamayozLoanColors.black1 : TamayozLoanColors.grey4)
                              .normal(),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Dont have an Account?"),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                   onTap:  () {
        const OnboardingScreenSignupRoute().push(context);
      },
  
                                  child: const Text(
                                    "Register Here",
                                    style: TextStyle(
                                      color: Color.fromRGBO(19, 201, 226, 1),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ])
                        ]),
                  ),
                )
              ],
            ),
          ),
        )),
      ),);
      }
    );
  
  }



  void _handleSubmission(
    BuildContext context,
  ) {

    if(password.text=="" || email.text=="" ){
      setState(() {
        colorStatus =false;
      });
    }else{
 
  setState(() {
        colorStatus =true;
      });
   
    context.read<AuthenticationBloc>().add(
          AuthenticationEvent.generateToken(
              clientId: email.text,
              password: password.text,
              accountNumber: ""),
        );
    }
  }

  void _authBlocListener(BuildContext context, AuthenticationState state) {
    state.maybeWhen(
      orElse: () {},
      TamayozAuthFailed: (message) {
        // FailureDialog.show(
        //   context,
        //   message,
        //   header: "Error",
        // );
        context.showToast(message);
      },
      TamayozAuthSuccessful: (kioskAuthData) {
        
          const  HomeRoute().go(context);
      },
    );
  }
}