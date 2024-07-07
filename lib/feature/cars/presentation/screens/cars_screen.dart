import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CarsScreen extends StatefulWidget{
  const CarsScreen({super.key});
  @override
  CarsScreenState createState()=> CarsScreenState();
}
class CarsScreenState extends State<CarsScreen>{

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

        appBar:const TamayozLoanAppBar(title: "My Cars",shouldPop: true,),
        body:SingleChildScrollView(
          child:   SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 14.0, bottom: 10, right: 5, left: 5),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            crossAxisSpacing: 3,
                            mainAxisSpacing: 2,
                            childAspectRatio: 1.5,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final item = cars[index];
                            return CarWidget(car: item,status:"cars",width:MediaQuery.of(context).size.width);
                          },
                        ),
                      ),
                   
                              const SizedBox(height:10),
                         
                          TamayozLoanButtons(
                                  context: context,
                                  onTap: () =>_handleSubmission(context),
                                  text: "Add Car",
                                  textColor: TamayozLoanColors.white,
                                  color:  TamayozLoanColors.black1 )
                              .normal(),
                   
                    ],
                  ),
                ),
             
        )
      ));
  
  }

  void _handleSubmission(BuildContext context){
     const AvailableScreenRoute().push(context);
  }
  
}