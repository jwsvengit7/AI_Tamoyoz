import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WhistListScreen extends StatefulWidget{
  const WhistListScreen({super.key});
  @override
  WhistListScreenState createState()=> WhistListScreenState();
}
class WhistListScreenState extends State<WhistListScreen>{

  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion<SystemUiOverlayStyle>(
      value:const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
                  backgroundColor: Colors.white,

        appBar:const TamayozLoanAppBar(title: "Whist List",shouldPop: true,),
        body:SingleChildScrollView(
          child:   SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 14.0, bottom: 10, right: 10, left: 10),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 3,
                        mainAxisSpacing: 2,
                        childAspectRatio: 1.5,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final item = cars[index];
                        return CarWidget(car: item,width:MediaQuery.of(context).size.width);
                      },
                    ),
                  ),
                ),
             
        )
      ));
  
  }
  
}