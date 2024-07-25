import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_input.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:go_router/go_router.dart';

class ColorScreen extends StatefulWidget {
  final String text;
  const ColorScreen({super.key,required this.text});
  @override
  ColorScreenState createState() => ColorScreenState();
}

class ColorScreenState extends State<ColorScreen> {
  TextStyle styleText = const TextStyle(fontWeight: FontWeight.bold);
  List<Color> colors=[
    Colors.purple,
   const Color.fromARGB(255, 132, 128, 128),
    Colors.lightBlue,
     Colors.indigo,
     Colors.red, Colors.white,
       Colors.yellow,Colors.brown,
        Colors.deepPurpleAccent, Colors.black,
         Colors.lightBlue, Colors.black,
         ];
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
              title: "Colors",
              shouldPop: true,
            ),
            body: SingleChildScrollView(
                child: Container(
              color: Colors.white,
              child: Column(children: [
             
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child:    Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
   
           Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(widget.text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Choose desired exterior colors"),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:     SizedBox(
                    width: MediaQuery.of(context).size.width,

                       child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: colors.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                        childAspectRatio: 1.5,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final color = colors[index];
  return Container(
                      width: 30,
                      height: 30,
                    
                      decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: color,
                                      boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 208, 222, 245),
            blurRadius: 15,
          ),
        ],
                                      border: Border.all(
                                       color:color,
                                        width: 2.0,
                                      ),
                      )
                                    );
                      
                }
                       )
            
          
                
            
                ),
              ),

              SizedBox(height: 20,),

            
          
        
        ],
      ),
    
                ),
              ]),
            ))));
  }
}
