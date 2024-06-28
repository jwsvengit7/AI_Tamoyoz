import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:flutter/material.dart';

class CarWidget extends StatelessWidget{
  final Car car;
  const CarWidget({super.key,required this.car});

  @override
  Widget build(BuildContext context) {
     return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
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
      child: Image.asset(
       car.icon,
        fit: BoxFit.cover,
      ),
          ),
          Text(car.name),
          const Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text("24534"),
              Text("3544")
            ]
          )
        ]
      ),
    );
  }
}