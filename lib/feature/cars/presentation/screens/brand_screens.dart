import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_input.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:go_router/go_router.dart';

class CarBrandScreen extends StatefulWidget {
  const CarBrandScreen({super.key});
  @override
  CarBrandScreenState createState() => CarBrandScreenState();
}

class CarBrandScreenState extends State<CarBrandScreen> {
  TextStyle styleText = const TextStyle(fontWeight: FontWeight.bold);


  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ),
        child: Scaffold(
                    backgroundColor: Colors.white,

            appBar: const TamayozLoanAppBar(
              title: "Car Brands",
              shouldPop: true,
            ),
            body: SingleChildScrollView(
                child: Container(
                  color:Colors.white,
                  child: Column(
                      children: [
                       
                         const  Padding(
                       padding:  EdgeInsets.only(left:13.0,right:13.0,top:10,bottom:5),
                       child:  SearchBarInput(),
                     ),
                   const SizedBox(height: 10),
                  
                      Padding(
                        padding:EdgeInsets.all(8.0),
                        
                      child:Column(
                    children: carsBrand.reversed.map((brand) {
                      return BrandWidget(brands: brand);
                    }).toList(),
                          ),),
                        
                  
                                 
                      
                  
                      ]),
                ))));
  }

 
}

class BrandWidget extends StatelessWidget {
  final CarType brands;

  const BrandWidget({super.key, required this.brands});

  @override
  Widget build(BuildContext context) {
    return InkWell(
 
        onTap: (){
        context.push(const BrandCarViewScreenRoute().location,
            extra:
                BrandRouteType(brands:brands));
      },
      child: Container(
        
         padding: const EdgeInsets.all(1.0),
        width: MediaQuery.of(context).size.width,
        height: 100,
      
        child: Container(
                 padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      
                color: Colors.grey[200],
      
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(brands.icon),
                    const SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(brands.name),
                        Text("150 cars"),
                      ],
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right,size: 32,),
            ],
          ),
        ),
      ),
    );
  }
}
