import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/widget/text_field/number_input.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AccountScreen extends StatefulWidget{
  const AccountScreen({super.key});
@override
AccountScreenState createState()=> AccountScreenState();
}

class AccountScreenState extends State<AccountScreen>{
  final email =TextEditingController();
  final name =TextEditingController();
  final phone =TextEditingController();
  @override
  Widget build(BuildContext context){
    return   AnnotatedRegion<SystemUiOverlayStyle>(
      value:  const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar:const TamayozLoanAppBar(title: "Edit Account",shouldPop: true,),
        body:SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text("Update Your Account\nInformation",style:TextStyle(color:Color.fromRGBO(19, 201, 226, 1),fontSize: 20))),
               const   SizedBox(
                            height: 20,
                          ),
                           TamayozSearchTextField(
                              type:"text",
                              hintText: "Name",
                              controller:name),
                          const SizedBox(
                            height: 10,
                          ),
                           TamayozSearchTextField(
                            hintText: "chiorlujack@gmail.com",
                            controller: email,
                            type:"text",readonly: true,
                            value:"chiorlujack@gmail.com"
                           
                            // passwordField: true,
                          ),
                          const SizedBox(height:10),

                           
                           PhoneNumberInput(
                    controller: phone,
                    type: "Phone",

                    // passwordField: true,
                  ),
                          
                          const SizedBox(height:10),
                         
                          TamayozLoanButtons(
                                  context: context,
                                  onTap: () =>_handleSubmission(context),
                                  text: "UPDATE",
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