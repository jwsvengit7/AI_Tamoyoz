import 'package:ai_tamayoz/core/appbar/font.dart';
import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/dialog/failure_dialog.dart';
import 'package:ai_tamayoz/core/extensions/logger_extension.dart';
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
  enum Authstatus  {LOGIN,SIGNUP,FORGET}

class OnboardingScreenTwo extends StatefulWidget {
  const OnboardingScreenTwo({super.key});

  @override
  OnboardingScreenTwoState createState() => OnboardingScreenTwoState();
}

class OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
  final email = TextEditingController();
  final password = TextEditingController();
  final font = FontFamilys();


  bool colorStatus=false;
  Authstatus status = Authstatus.LOGIN;





@override
  void initState() {
    super.initState();
    colorStatus = false; 
    status == Authstatus.LOGIN;// Initialize the status variable
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      Assets.images.logo.path,
                      width: 500.w,
                      height: 200.h,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome Back",
                                style: font.titleStyle,
                              ),
                              Text("\nLogin to your Account", style: font.titleStyle2)
                            ],
                          )),
                    ),
               
               const SizedBox(height:15),

                BottomSheets(
                  height: 440.h,
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                           Text(
                            'Enter Your Crendentials',
style: font.textLabelForm,
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
                            

                          Padding(
                            padding: const EdgeInsets.only(top:12.0,bottom: 12.0),
                            child: TamayozLoanButtons(
                                    context: context,
                                    onTap: () =>_handleSubmission(context),
                                    text: "Login",
                                    textColor: TamayozLoanColors.white,
                                    color: colorStatus? TamayozLoanColors.black1 : TamayozLoanColors.grey4)
                                .normal(),
                          ),
                            
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
    "************".log();
    state.maybeWhen(
      orElse: () {},
      TamayozAuthFailed: (message) {
           "***** $message *******".log();
        // FailureDialog.show(
        //   context,
        //   message,
        //   header: "Error",
        // );
        debugPrint(message);
        context.showToast(message);
      },
      TamayozAuthSuccessful: (kioskAuthData) {
        
          const  HomeRoute().go(context);
      },
    );
  }
}