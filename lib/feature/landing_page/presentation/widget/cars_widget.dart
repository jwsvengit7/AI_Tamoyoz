import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/feature/cars/domain/model/cars_details_model.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:string_extensions/string_extensions.dart';

class CarWidget extends StatelessWidget {
  final Car car;
  final String? status;
  final double width;
  const CarWidget({super.key, required this.car, this.status, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TamayozLoanColors.grey8,
      child: InkWell(
        onTap: () {
          context.push(
            const CarsDetailsRoute().location,
            extra: CarsDetailsRouteData(
              data: CarsDetailsModel(
                name: car.name,
                price: car.price,
                description: 'lorem',
                date: '123',
                brand: car.name,
                image: [car.icon,Assets.images.benfull.path,Assets.images.ben1.path],
              ),
            ),
          );
        },
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    car.icon,
                    width: width,
                    height: status == "available" ? 150.h : 180.h,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child:Image.asset(Assets.icons.vector.path,width:20,height:20)
                  
                  //  Icon(
                  //   Icons.favorite,
                  //   color: Colors.red,
                  // ),
                ),

              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(car.name),
                  const SizedBox(width: 10),
                  status != "cars" ? Image.asset(Assets.images.check.path) : const SizedBox(),
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left:8.0,right:8.0),
               child: status=="available" ? 
               
               Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                 children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  const Text("8,750 KWD  | 2001",style: TextStyle(fontSize: 10),),
                   Text(car.kilometer,style:const TextStyle(color:Colors.red,fontWeight: FontWeight.bold,fontSize: 10))
                  ],),

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