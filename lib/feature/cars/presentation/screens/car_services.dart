import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CarServiceScreen extends StatefulWidget{
  const CarServiceScreen({super.key});
  @override
  CarServiceScreenState createState()=> CarServiceScreenState();
}
class CarServiceScreenState extends State<CarServiceScreen>{
  List<String> service = ["Maintenance","Exterior","Interior","Glass","Maintenance","Exterior"];

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

        appBar:const TamayozLoanAppBar(title: "Car Service",shouldPop: true,),
        body:SingleChildScrollView(
          child:   Column(
            children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                          height: 55,
                          margin: const EdgeInsets.only(bottom: 20, top: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                service.length,
                                (index) {
                                  final value = service[index];
                               
                                  return InkWell(
                                      child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                        width: 100,
                                        height: 50,
                                          
                                        child: Text(value),
                                        decoration: BoxDecoration(
                                        color: TamayozLoanColors.grey8,
                                        borderRadius: BorderRadius.circular(10)
                 
                                        ),
                                        
                                  
                                    )
                                    )
                                    );
                              },
                            ),
                          ),
                          ))          
                      ],
                  
                    ),
               ), 
                   Padding(
                    padding: const EdgeInsets.only(
                        top: 4.0, bottom: 10, right: 15, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("${carsService.length} results found"),
                      ],
                    ),
                  ),
              SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 14.0, bottom: 10, right: 10, left: 10),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 6,
                          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            crossAxisSpacing: 3,
                            mainAxisSpacing: 2,
                            childAspectRatio: 1.5,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final item = carsService[index];
                            return CarWidget(car: item,width:MediaQuery.of(context).size.width);
                          },
                        ),
                      ),
                    ),
            ],
          ),
             
        )
      ));
  
  }
  
}