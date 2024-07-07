import 'package:ai_tamayoz/core/widget/text_field/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:flutter/widgets.dart';

class AddCarsScreen extends StatefulWidget {
  const AddCarsScreen({super.key});
  @override
  AddCarsScreenState createState() => AddCarsScreenState();
}

class AddCarsScreenState extends State<AddCarsScreen> {
  TextStyle styleText = const TextStyle(fontWeight: FontWeight.bold);
  final name = TextEditingController();
  final phone = TextEditingController();

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
              title: "Add Car",
              shouldPop: true,
            ),
            body: SingleChildScrollView(
              
                      child:   Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                            width: MediaQuery.of(context).size.width,
                                            child: const Text("Sell Your Car With Us",style:TextStyle(color:Color.fromRGBO(19, 201, 226, 1),fontSize: 20))),
                      
                                          const  Text("Add your car details, we will contact you within 48 hours"),
                                          const SizedBox(height: 10,),
                                          Text("Seller Details",style: styleText,),
                                                                                    const SizedBox(height: 10,),
                                                                                    TamayozSearchTextField(
                              type:"text",
                              hintText: "Name",
                              controller:name),
                         
                          const SizedBox(height:10),
                      
                            TamayozSearchTextField(
                            hintText: "Phone",
                            controller: phone,
                            type:"number"
                           
                            // passwordField: true,
                          ),
                      
                                                         const SizedBox(height: 10,),
                                          Text("Car Details",style: styleText,),
                                                                                    const SizedBox(height: 10,),
                                                                                    TamayozSearchTextField(
                              type:"text",
                              hintText: "Name",
                              controller:name),
                         
                          const SizedBox(height:10),
                      
                            TamayozSearchTextField(
                            hintText: "Phone",
                            controller: phone,
                            type:"number"
                           
                            // passwordField: true,
                          ),
                      
                      
                      
                                          
                          ],
                        ),
                      ),
            
            ),
        ),);
                 
  }


}

