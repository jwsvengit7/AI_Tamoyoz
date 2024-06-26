
import 'package:flutter/material.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';

class LandingPage extends StatefulWidget{
  const LandingPage({super.key});

@override
  LandingPageState createState()=> LandingPageState();
}

class LandingPageState extends State<LandingPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: TamayozLoanAppBar(title: "Dashboard",shouldPop: true),
    body: SizedBox(),
   );
  }

}