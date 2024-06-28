import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class CarWidget extends StatelessWidget{
  final Car car;
  const CarWidget({super.key,required this.car});

  @override
  Widget build(BuildContext context) {
     return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
     color: Color.fromARGB(28, 139, 138, 138),

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
         car.icon,
          fit: BoxFit.cover,
        ),
      ),
          ),

          const SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(children:[
              Text(car.name),
             const SizedBox(width: 10,),
              Image.asset(Assets.images.check.path),
             
             
                       ]),
           ),

        
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
               const Text("8,750 KWD  | 2000"),
                Text(car.kilometer,style:const TextStyle(color:Colors.red,fontWeight: FontWeight.bold))
              ]
            ),
          )
        ]
      ),
    );
  }
}