import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_input.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars_widget.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BrandScreen extends StatefulWidget {
  final CarType brand;
  const BrandScreen({super.key,required this.brand});
  @override
  BrandScreenState createState() => BrandScreenState();
}

class BrandScreenState extends State<BrandScreen> {
  bool status = false;
  final PageController _pageController = PageController();
  int _currentPage = 0;

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

            appBar:  TamayozLoanAppBar(
              title: widget.brand.name,
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
                                              : TamayozLoanColors.grey8,
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
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 14.0, bottom: 10, right: 15, left: 15),
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
                                      setState(() {
                                        status = false;
                                      });
                                      debugPrint(status.toString());
                                    },
                                    child: Image.asset(
                                        Assets.icons.settingsSliders.path)),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        status = true;
                                      });
                                      debugPrint(status.toString());
                                    },
                                    child: Image.asset(Assets.icons.list.path))
                              ],
                            ))
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
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: status ? 1 : 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 5,
                          childAspectRatio: status ? 1.5 : 0.70,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          final item = cars[index];
                          return CarWidget(
                              car: item,
                              width: status
                                  ? MediaQuery.of(context).size.width
                                  : MediaQuery.of(context).size.width / 2,
                              status: !status ? "available" : null);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
