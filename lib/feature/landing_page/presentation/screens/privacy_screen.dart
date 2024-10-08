import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:flutter/widgets.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});
  @override
  PrivacyScreenScreenState createState() => PrivacyScreenScreenState();
}

class PrivacyScreenScreenState extends State<PrivacyScreen> {

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
        value:  SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ),
     child:  Scaffold(
                backgroundColor: Colors.white,

            appBar:  TamayozLoanAppBar(
              title: "Privacy Policy",
              shouldPop: true,
            ),
            body: Padding(
          padding:  EdgeInsets.all(10.0),
          child: SingleChildScrollView(
                 child: Column(
              children: [
                 SizedBox(height: 10),
                  
       
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  Text( style:TextStyle(color:Colors.grey),"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. AliquaLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare Lorem ipsum"),
                )
              ]
                 )
              )  ),
        ),);
                 
  }


}

