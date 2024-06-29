import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars_widget.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AvailableScreen extends StatefulWidget{
  const AvailableScreen({super.key});
  @override
  AvailableScreenState createState()=> AvailableScreenState();
}
class AvailableScreenState extends State<AvailableScreen>{
 bool status =false;

 @override
  void initState() {
    super.initState();
    // Initialize the status variable directly
    status = false;
  }
  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion<SystemUiOverlayStyle>(
      value:const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar:const TamayozLoanAppBar(title: "Available Cars",shouldPop: true,),
        body:SingleChildScrollView(
          child:     Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(
                            top: 14.0, bottom: 10, right: 15, left: 15),
                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text("${cars.length} results found"),
                    SizedBox(
                      width:100,child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: 
                      [
                        InkWell(
                          onTap: (){
                            setState(() {
                              status=false;
                            });
                            debugPrint(status.toString());
                          },
                          child: Image.asset(Assets.icons.settingsSliders.path)),
                        InkWell(
                            onTap: (){
                            setState(() {
                              status=true;
                            });
                                                        debugPrint(status.toString());

                          },
                          child: Image.asset(Assets.icons.list.path))
                      ],)
                    )
                
                  ],
                ),
              ),
              SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 14.0, bottom: 10, right: 5, left: 5),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: cars.length,
                          gridDelegate:
                               SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: status ? 1 : 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 5,
                              childAspectRatio: status ? 1.5 : 0.70,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final item = cars[index];
                            return CarWidget(car: item,width:status ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width / 2,status: !status ?"available":null);
                          },
                        ),
                      ),
                    ),
            ],
          ),
             
        )
      ));
  
  }
  
}