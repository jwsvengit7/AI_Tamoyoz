import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget{

  final String image;
  final String title;
  final String message;
  final Function(BuildContext) onTap;

  const SuccessScreen({
    Key? key,
    required this.message,
    required this.image,
     required this.title,
    required this.onTap,
  }) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                                const SizedBox(height:20),
      
                            Image.asset(image,width:70,height:70),
                            const SizedBox(height:20),
                            Text(
                              title,
                               textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 20),
                             Text(
                              textAlign: TextAlign.center,
                            message,
                              style: TextStyle(fontSize: 16),
                            ),
                          
                          const SizedBox(height: 10),
      
                           
                          ],
                        ),
                      ),
                    ],
                  ),
    );
             

  }
}