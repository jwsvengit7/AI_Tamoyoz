import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:go_router/go_router.dart';
 enum Content {
    None,
    Image,
    ColoredBox,
  }

  // State variable to track which content is selected
class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});
  @override
  FilterScreenState createState() => FilterScreenState();
}

class FilterScreenState extends State<FilterScreen> {
  

  // State variable to track which content is selected
  Content selectedContent = Content.None;
  TextStyle styleText = const TextStyle(fontWeight: FontWeight.bold);
List<String> filters = ["Brand","Model","Exterior Color","Internal Color"];
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
              title: "Filter & Sort",
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
                    child: Text("Filters",style: TextStyle(fontSize: 17),textAlign: TextAlign.left,)),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: filters.map((value) {
                      return FilterWidget(value: value);
                    }).toList(),
                  ),
                ),

                     Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                          padding: const EdgeInsets.all(4.0),
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: InkWell(
                              onTap: (){
                                setState(() {
              selectedContent = Content.Image; // Toggle to show image
            });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                              decoration: const BoxDecoration(
                                color: TamayozLoanColors.white,
                                border:  Border(bottom: BorderSide(width: 1.0,color: TamayozLoanColors.grey8))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                               const   SizedBox(
                                              child: Text("Lowest Price")),
                                       Container(
                              decoration: BoxDecoration(
                                color: TamayozLoanColors.white, // Background color inside the border
                                borderRadius: BorderRadius.circular(10.0), // Adjust radius for roundness
                                border: Border.all(
                                  color: TamayozLoanColors.black1, // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                              padding: EdgeInsets.all(2.0), // Optional padding inside the border
                              child:  selectedContent == Content.Image ?  ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0), // Same radius for clipping
                                  child: Image.asset(
                                    Assets.icons.rad1.path,
                                    fit: BoxFit.cover, // Adjusts image to fit container
                                  ),
                                ) : Container(
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0), 
                                color:Colors.white
                                ),// Same radius for clipping
                               width: 10,
                               height:10
                              )
                            )
                            
                                ],
                              ),
                            ),
                          ),
                        ),
                ),
             

             Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                          padding: const EdgeInsets.all(4.0),
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: InkWell(
                            onTap: (){
                                setState(() {
              selectedContent = Content.Image; // Toggle to show image
            });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                              decoration: const BoxDecoration(
                                color: TamayozLoanColors.white,
                                border:  Border(bottom: BorderSide(width: 1.0,color: TamayozLoanColors.grey8))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                               const   SizedBox(
                                              child: Text("Highest Price")),
                                       Container(
                              decoration: BoxDecoration(
                                color: TamayozLoanColors.white, // Background color inside the border
                                borderRadius: BorderRadius.circular(10.0), // Adjust radius for roundness
                                border: Border.all(
                                  color: TamayozLoanColors.black1, // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                              padding: EdgeInsets.all(2.0), // Optional padding inside the border
                              child:  selectedContent == Content.Image ?  ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0), // Same radius for clipping
                                  child: Image.asset(
                                    Assets.icons.rad1.path,
                                    fit: BoxFit.cover, // Adjusts image to fit container
                                  ),
                                ) : Container(
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0), 
                                color:Colors.white
                                ),// Same radius for clipping
                               width: 10,
                               height:10
                              ))
                            
                                ],
                              ),
                            ),
                          ),
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                          padding: const EdgeInsets.all(4.0),
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: InkWell(
                              onTap: (){
                                setState(() {
              selectedContent = Content.Image; // Toggle to show image
            });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                              decoration: const BoxDecoration(
                                color: TamayozLoanColors.white,
                                border:  Border(bottom: BorderSide(width: 1.0,color: TamayozLoanColors.grey8))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                               const   SizedBox(
                                              child: Text("Newest")),
                                       Container(
                              decoration: BoxDecoration(
                                color: TamayozLoanColors.white, // Background color inside the border
                                borderRadius: BorderRadius.circular(10.0), // Adjust radius for roundness
                                border: Border.all(
                                  color: TamayozLoanColors.black1, // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                              padding: EdgeInsets.all(2.0), // Optional padding inside the border
                              child:  selectedContent == Content.Image ?  ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0), // Same radius for clipping
                                  child: Image.asset(
                                    Assets.icons.rad1.path,
                                    fit: BoxFit.cover, // Adjusts image to fit container
                                  ),
                                ) : Container(
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0), 
                                color:Colors.white
                                ),// Same radius for clipping
                               width: 10,
                               height:10
                              )
                            )
                            
                                ],
                              ),
                            ),
                          ),
                        ),
                ),
             
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                          padding: const EdgeInsets.all(4.0),
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: InkWell(
                              onTap: (){
                                setState(() {
              selectedContent = Content.Image; // Toggle to show image
            });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                              decoration: const BoxDecoration(
                                color: TamayozLoanColors.white,
                                border:  Border(bottom: BorderSide(width: 1.0,color: TamayozLoanColors.grey8))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                               const   SizedBox(
                                              child: Text("Oldest")),
                                       Container(
                              decoration: BoxDecoration(
                                color: TamayozLoanColors.white, // Background color inside the border
                                borderRadius: BorderRadius.circular(10.0), // Adjust radius for roundness
                                border: Border.all(
                                  color: TamayozLoanColors.black1, // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                              padding: EdgeInsets.all(2.0), // Optional padding inside the border
                              child:  selectedContent == Content.Image ?  ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0), // Same radius for clipping
                                  child: Image.asset(
                                    Assets.icons.rad1.path,
                                    fit: BoxFit.cover, // Adjusts image to fit container
                                  ),
                                ) : Container(
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0), 
                                color:Colors.white
                                ),// Same radius for clipping
                               width: 10,
                               height:10
                              )
                            )
                            
                                ],
                              ),
                            ),
                          ),
                        ),
                ),
             
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                          padding: const EdgeInsets.all(4.0),
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: InkWell(
                              onTap: (){
                                setState(() {
              selectedContent = Content.Image; // Toggle to show image
            });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                              decoration: const BoxDecoration(
                                color: TamayozLoanColors.white,
                                border:  Border(bottom: BorderSide(width: 1.0,color: TamayozLoanColors.grey8))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                               const   SizedBox(
                                              child: Text("Recently Added")),
                                       Container(
                              decoration: BoxDecoration(
                                color: TamayozLoanColors.white, // Background color inside the border
                                borderRadius: BorderRadius.circular(10.0), // Adjust radius for roundness
                                border: Border.all(
                                  color: TamayozLoanColors.black1, // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                              padding: EdgeInsets.all(2.0), // Optional padding inside the border
                              child:  selectedContent == Content.Image ?  ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0), // Same radius for clipping
                                  child: Image.asset(
                                    Assets.icons.rad1.path,
                                    fit: BoxFit.cover, // Adjusts image to fit container
                                  ),
                                ) : Container(
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0), 
                                color:Colors.white
                                ),// Same radius for clipping
                               width: 10,
                               height:10
                              )
                            )
                            
                                ],
                              ),
                            ),
                          ),
                        ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:     SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                            
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 2.2,
                                height: 50,
                                child:  Text(
                                  "Reset",
                                  style: TextStyle(color: TamayozLoanColors.white),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: TamayozLoanColors.black2,
                                ),
                              ),
                            ),
                            InkWell(
                            
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 2.2,
                                height: 50,
                                child: const Text(
                                  "Apply",
                                  style: TextStyle(color: TamayozLoanColors.white),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(19, 201, 226, 1)),
                                ),
                              
                            ),
                          ],
                        ),
                      ),
                     
                )
             
              ]),
            ))));
  }
}

class FilterWidget extends StatelessWidget {
  final String value;

  const FilterWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if(value=="Exterior Color" || value=="Internal Color"){
          debugPrint(value);
             context.push(ColorScreenRoute(text: value).location);
          }
              if(value=="Brand"){
          debugPrint(value);
              const BrandScreenRoute().push(context);
          }
            if(value=="Model"){
          debugPrint(value);
              const ModelScreenRoute().push(context);
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
              const Icon(
                Icons.chevron_right,
                size: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
