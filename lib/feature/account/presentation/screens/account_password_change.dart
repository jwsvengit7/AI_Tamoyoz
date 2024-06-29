import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChangePasswordScreen extends StatefulWidget{
  const ChangePasswordScreen({super.key});
@override
ChangePasswordScreenState createState()=> ChangePasswordScreenState();
}

class ChangePasswordScreenState extends State<ChangePasswordScreen>{
  final oldPassword =TextEditingController();
  final newPassword =TextEditingController();
  final confirmPassword =TextEditingController();
  @override
  Widget build(BuildContext context){
    return   AnnotatedRegion<SystemUiOverlayStyle>(
      value:  const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar:const TamayozLoanAppBar(title: "Change Password",shouldPop: true,),
        body:SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text("Change Your Account\nPassword",style:TextStyle(color:Color.fromRGBO(19, 201, 226, 1),fontSize: 20))),
               const   SizedBox(
                            height: 20,
                          ),
                           TamayozSearchTextField(
                             type:"password",
                              hintText: "Password",
                              controller:oldPassword),
                          const SizedBox(
                            height: 10,
                          ),
                           TamayozSearchTextField(
                            hintText: "New Password",
                            controller: newPassword,
                            type:"password",
                           
                            // passwordField: true,
                          ),
                          const SizedBox(height:10),

                            TamayozSearchTextField(
                            hintText: "Confirm Password",
                            controller: confirmPassword,
                            type:"password"
                           
                            // passwordField: true,
                          ),
                          const SizedBox(height:10),
                         
                          TamayozLoanButtons(
                                  context: context,
                                  onTap: () =>_handleSubmission(context),
                                  text: "Change",
                                  textColor: TamayozLoanColors.white,
                                  color:  TamayozLoanColors.black1 )
                              .normal(),
              ],
            ),
          )
        )

    ));
  }


  void _handleSubmission(BuildContext context){

  }
}