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
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ),
        child: Scaffold(
            appBar: const TamayozLoanAppBar(
              title: "Add Car",
              shouldPop: true,
            ),
            body: SingleChildScrollView(
            
            ),
        ),);
                 
  }


}

