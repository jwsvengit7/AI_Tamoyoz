import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_input.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars_widget.dart';
import 'package:ai_tamayoz/feature/cars/presentation/screens/widget/car_view.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AvailableScreen extends StatefulWidget {
  const AvailableScreen({super.key});
  @override
  AvailableScreenState createState() => AvailableScreenState();
}

class AvailableScreenState extends State<AvailableScreen> {
  bool status = false;
  final PageController _pageController = PageController();
  int _currentPage = 0;
  int count = 0;

  @override
  void initState() {
    super.initState();
  setState(() {
    status=false;
    _currentPage=0;
  }); 
  }

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
              title: "Available Cars",
              shouldPop: true,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
               const  Padding(
                   padding:  EdgeInsets.only(left:13.0,right:13.0,top:10,bottom:5),
                   child:  SearchBarInput(),
                 ),
              Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        // height: 70,
                        margin: const EdgeInsets.only(bottom: 20, top: 5),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              cars.length,
                              (index) {
                                final value = cars[index];
                             
                                return InkWell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: SizedBox(
                                      width: 110,
                                      height: 60,
                                      child: CarViewProduct(i:index)
                                
                                  )
                                  )
                                  );

                          
                            },
                          ),
                        ),
                        ))

                    
                    ],
                
                  ), 
                    Padding(
      padding: const EdgeInsets.only(top: 14.0, bottom: 10, right: 15, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${cars.length} results found"),
          SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                  const FilterScreenRoute().push(context);
                    debugPrint(status.toString());
                  },
                  child: Image.asset(Assets.icons.settingsSliders.path),
                ),
InkWell(
  onTap: () {
    setState(() {
      count = (count == 1) ? 0 : 1; // Toggle count between 0 and 1
    });
    debugPrint(count.toString()); // Print the value of count
  },
  child: count == 1
      ? Image.asset(Assets.icons.list.path)
      : Image.asset(Assets.icons.apps1.path),
)

              ],
            ),
          ),
        ],
      ),
    ),
    SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 14.0, bottom: 10, right: 5, left: 5),
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: cars.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: count==1 ? 1 : 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 5,
            childAspectRatio: count==1 ? 1.5 : 0.90,
          ),
          itemBuilder: (BuildContext context, int index) {
            final item = cars[index];
            return CarWidget(
              car: item,
              width: count==1 ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width / 2,
              status: count!=1 ? "available" : null,
            );
          },
        ),
      ),
    ),
  ],
              ),
            )));
  }
}
