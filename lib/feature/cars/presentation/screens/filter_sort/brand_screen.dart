import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_input.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:go_router/go_router.dart';

class BrandScreenSort extends StatefulWidget {
  const BrandScreenSort({super.key});
  @override
  BrandScreenState createState() => BrandScreenState();
}

class BrandScreenState extends State<BrandScreenSort> {
  TextStyle styleText = const TextStyle(fontWeight: FontWeight.bold);
List<String> filters = ["All","BMW (202)","Jeep (27)","Mini Cooper (308)","Tesla (20)","Mercedes (308)"];
bool _isChecked = false;
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
              title: "Brand",
              shouldPop: true,
            ),
            body: SingleChildScrollView(
                child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              
                Padding(
  padding: EdgeInsets.only(
                      left: 13.0, right: 13.0, top: 10, bottom: 5),                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Car Brand",style: TextStyle(fontSize: 17),textAlign: TextAlign.left,)),
                ),
  Padding(
  padding: EdgeInsets.only(
                      left: 13.0, right: 13.0, top: 10, bottom: 5),                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Choose desired car model",style: TextStyle(fontSize: 14),textAlign: TextAlign.left,)),
                ), 
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: filters.map((value) {
                      return FilterWidget(value: value,child: Center(
      child: Checkbox(
        value: _isChecked,
        onChanged: (bool? value) {
          setState(() {
            _isChecked = value ?? false;
          });
        },
      ),
    ),);
                    }).toList(),
                  ),
                ),

             
           
              ]),
            ))));
  }
}

class FilterWidget extends StatelessWidget {
  final String value;
  final Widget child;

  const FilterWidget({super.key, required this.value,required this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if(value=="Exterior Color" || value=="Internal Color"){
          debugPrint(value);
             context.push(ColorScreenRoute(text: value).location);
          }
           
                  debugPrint(value);

       
      },
      child: Container(
        padding: const EdgeInsets.all(4.0),
        width: MediaQuery.of(context).size.width,
        height: 70,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          decoration: const BoxDecoration(
            color: TamayozLoanColors.white,
            border:  Border(bottom: BorderSide(width: 1.0,color: TamayozLoanColors.grey8))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: 
         
                        Text(value),
                    
                  
              ),
             child,
            ],
          ),
        ),
      ),
    );
  }
}
