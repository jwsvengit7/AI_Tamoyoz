import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:flutter/widgets.dart';

class AddCarsScreen extends StatefulWidget {
  const AddCarsScreen({super.key});
  @override
  AddCarsScreenState createState() => AddCarsScreenState();
}

class AddCarsScreenState extends State<AddCarsScreen> {

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

