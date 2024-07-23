import 'package:ai_tamayoz/core/widget/text_field/number_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:flutter/widgets.dart';
import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/extensions/logger_extension.dart';
import 'package:ai_tamayoz/core/widget/confirm/confirm_box.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_text_field.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});
  @override
  ContactUsScreenState createState() => ContactUsScreenState();
}

class ContactUsScreenState extends State<ContactUsScreen> {


  TextStyle styleText = const TextStyle(fontWeight: FontWeight.bold);
  final name = TextEditingController();
  final phone = TextEditingController();
  bool modar =false;

    @override
  void initState() {
    super.initState();
  setState(() {
    modar=false;
  }); 
  }
 List<Widget> items = [];
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ),
        child: ConfirmBoxWidget(
                    message: "Your request to sell your car is submitted successfully. We will contact you within 48 hours to confirm details.",
                    modar: modar,
                    onTap: _handleSubmission,
                    title:"Submitted Successfully",
                    image:Assets.icons.check.path,
                    status:true,
                   
          child: Scaffold(
            backgroundColor: Colors.white,
              appBar: const TamayozLoanAppBar(
                title: "Contact us",
                shouldPop: true,
              ),
              body: SingleChildScrollView(
                
                        child:   Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                              width: MediaQuery.of(context).size.width,
                                              child: const Text("Customer Support",style:TextStyle(color:Color.fromRGBO(19, 201, 226, 1),fontSize: 20))),
                        
                                            const  Text("Add your details, we will contact you within 48 hours"),
                                                                              const SizedBox(height: 10,),
                                                                                      TamayozSearchTextField(
                                type:"text",
                                hintText: "Name",
                                controller:name),
                           
                            const SizedBox(height:10),
                        
                              TamayozSearchTextField(
                              hintText: "Full Name",
                              controller: phone,
                              type:"text"
                             
                              // passwordField: true,
                            ),
                        
                                            
                           
                        
          
                             const SizedBox(height:10),
          
                        
                             
                                PhoneNumberInput(
                    controller: phone,
                    type: "Phone",
                 

                    // passwordField: true,
                  ),
          
                            const SizedBox(height:10),

                          Container(
  width: MediaQuery.of(context).size.width,
  height: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 1, color: TamayozLoanColors.grey8),
    color: TamayozLoanColors.white,
  ),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        Expanded(
          child: TextFormField(
            maxLines: null, 
            maxLength: 250, 
            decoration: const InputDecoration(
              hintText: "",
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            onChanged: (value) {
             
            },
          ),
        ),
      ],
    ),
  ),
),
const SizedBox(height: 10),
Container(
  alignment: Alignment.centerRight,
  width: MediaQuery.of(context).size.width,
  child: const Text(
    "Max 250 Characters",
    style: TextStyle(color: Colors.lightBlue),
    textAlign: TextAlign.right,
  ),
),

                           

                            



          
                          
             TamayozLoanButtons(
                                    context: context,
                                    onTap: () {
                                      setState(() {
                                        modar=true;
                                      });
                                    },
                                    text: "Send",
                                    textColor: TamayozLoanColors.white,
                                    color:  TamayozLoanColors.black1 )
                                .normal(),
                       const SizedBox(height:20),
          
                                      
                            ],
                          ),
                        ),
              
              ),
          ),
        ),);
                 
  }


   
  void _handleSubmission(BuildContext context)  {
      setState(() {
         modar=false;
       });
    ">>>>>>>-----<<<<<<<".log();
    // final authType =
    //     await TransactionAuthenticationRoute(accountNumber.text).push(context);
    // if (!context.mounted) return;

    // if (authType is! TransactionAuthResponse) {
    //   return;
    // }

    // if (authType.isSuccessful) {
    //   context.read<UnblockAccountBloc>().add(
    //         UnblockAccountEvent.requestUnblockAccount(accountNumber.text,_authenticationApi.getLoginTime()),
    //       );
    // }
  }
}





