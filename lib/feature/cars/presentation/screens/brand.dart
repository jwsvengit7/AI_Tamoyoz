import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_input.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:flutter/widgets.dart';

class CarBrandScreen extends StatefulWidget {
  const CarBrandScreen({super.key});
  @override
  CarBrandScreenState createState() => CarBrandScreenState();
}

class CarBrandScreenState extends State<CarBrandScreen> {
  final PageController _pageController = PageController();
  TextStyle styleText = const TextStyle(fontWeight: FontWeight.bold);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
  setState(() {
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
            appBar: const TamayozLoanAppBar(
              title: "Car Brands",
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            child: PageView.builder(
                              controller: _pageController,
                
                              itemCount: (cars.length / 3)
                                  .ceil(), // Divide data length by 3
                              onPageChanged: (int page) {
                                setState(() {
                                  _currentPage = page;
                                });
                              },
                              itemBuilder: (BuildContext context, int pageIndex) {
                                int startIndex = pageIndex * 3;
                                int endIndex = startIndex + 3;
                                List<Widget> items = [];
                                for (int i = startIndex;
                                    i < endIndex && i < cars.length;
                                    i++) {
                                  items.add(
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: i == 0
                                                ? const Color.fromARGB(
                                                    255, 65, 64, 64)
                                                : TamayozLoanColors.white,
                                          ),
                                          width: 30,
                                          height: 70,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Image.asset(
                                                  Assets.images.brandCar2.path),
                                              Text("Sedan",
                                                  style: TextStyle(
                                                      color: i == 0
                                                          ? TamayozLoanColors
                                                              .white
                                                          : TamayozLoanColors
                                                              .black1))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                while (items.length < 3) {
                                  items.add(Expanded(child: Container()));
                                }
                
                                return Row(
                                  children: items,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    
                
                    ]))));
  }

 
}

