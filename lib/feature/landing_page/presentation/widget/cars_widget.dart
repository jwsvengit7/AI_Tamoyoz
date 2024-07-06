import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/feature/cars/domain/model/cars_details_model.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CarWidget extends StatelessWidget{
  final Car car;
  final String? status;
  final double width;
  const CarWidget({super.key,required this.car,this.status,required this.width});

  @override
  Widget build(BuildContext context) {
     return InkWell(
      onTap: (){
        context.push(const CarsDetailsRoute().location,
            extra:
                CarsDetailsRouteData(data:CarsDetailsModel(name: car.name, price: car.price, description: 'lorem', date: '123', brand: car.name), ));
      },
       child: Container(
        
        width: width,
        // height: 250,
       color: const Color.fromARGB(28, 139, 138, 138),
       
        child:Column(
          children:[
            Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 208, 222, 245),
              blurRadius: 15,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            width:MediaQuery.of(context).size.width,
        height: status=="available" ? 150.h : 170.h ,
           car.icon,
            fit: BoxFit.fill,
            
          ),
        ),
            ),
       
            const SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(children:[
                Text(car.name),
               const SizedBox(width: 10,),
               status != "cars" ? Image.asset(Assets.images.check.path): const SizedBox(),
               
               
                         ]),
             ),
       
          
            Padding(
              padding: const EdgeInsets.only(left:8.0,right:8.0),
              child: status=="available" ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                children:[
                 const Text("8,750 KWD  | 2000"),
                  Text(car.kilometer,style:const TextStyle(color:Colors.red,fontWeight: FontWeight.bold))
                ]
              ) : 
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                 const Text("8,750 KWD  | 2000"),
                  Text(car.kilometer,style:const TextStyle(color:Colors.red,fontWeight: FontWeight.bold))
                ]
              ),
            )
          ]
        ),
           ),
     );
  }
}