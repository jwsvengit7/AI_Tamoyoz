import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CarsDetailsScreen extends StatefulWidget{
  const CarsDetailsScreen({super.key});
  @override
  CarsDetailsScreenState createState()=> CarsDetailsScreenState();
}
class CarsDetailsScreenState extends State<CarsDetailsScreen>{

  @override

  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold());
  
  }
  
}