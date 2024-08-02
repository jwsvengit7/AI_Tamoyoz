import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/widget/drawer/bottom_sheet.dart';
import 'package:ai_tamayoz/core/widget/drawer/drawer_widget.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/utils/fonts.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars_widget.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 1;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 final List<String> carPage = [
        Assets.images.maincar.path,
      Assets.images.maincar.path,
      Assets.images.benWhitaker.path,
      Assets.images.benWhitaker2.path,

    ];


  
    void openSideBar(BuildContext context) {
   BottomTop(widget:  Expanded(
              child: TamayozDrawer()
            )).openSideBar(context);
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
        key: _scaffoldKey,
        // drawer: TamayozDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                "Find Your",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                "New Vehicle",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            openSideBar(context);
                          },
                          child: Image.asset(Assets.icons.menu2.path,width:30,height:30),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 170,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: carPage.length,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return buildImageSection(index, context);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(carPage.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          _pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          width: _currentPage == index ? 25.0 : 20.0,
                          height: _currentPage == index ? 5.0 : 5.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _currentPage == index
                                ? TamayozLoanColors.grey3
                                : TamayozLoanColors.grey8,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    const AvailableScreenRoute().push(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(0, 0, 0, 0.11),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 140,
                          width: 140,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text("  Available Cars",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text("  Browse our",
                                  style: TextStyle(fontSize: 15)),
                              Text("  Available Cars",
                                  style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          height: 100,
                          width: 220,
                          child: Image.asset(Assets.images.cars.path),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(3, (index) {
                        final value = carsVendors[index];
                        return Row(
                          children: [
                            InkWell(
                              onTap: () {
                                debugPrint(index.toString());
                                if (index == 0) {
                                  const AddCarsScreenRoute().push(context);
                                } else if (index == 1) {
                                  const RequestCarsScreenRoute().push(context);
                                } else {
                                  const CarServiceRoute().push(context);
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.7,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: TamayozLoanColors.white2,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          // shape: BoxShape.circle,
                                          borderRadius: BorderRadius.circular(100),
                                          color: index == 1
                                              ? const Color.fromRGBO(
                                                  201, 116, 116, 0.27)
                                              : index == 2
                                                  ? const Color.fromRGBO(
                                                      36, 226, 19, 0.17)
                                                  : const Color.fromRGBO(
                                                      253, 204, 78, 0.2),
                                        ),
                                        child: Image.asset(
                                          value.icon,
                                          width: 30,
                                          height: 30,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        value.name,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          color: TamayozLoanColors.black2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              

                                Padding(padding: 
                        const EdgeInsets.only(right: 5, left: 5),
                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      const Text(
                                                        "Popular Brands",
                                                        style: TextStyle(fontSize: 17),
                                                      ),
                                                      InkWell(
                                                          onTap: () {
                                                            const BrandCarScreenRoute().push(context);
                                                          },
                                                          child: const Text("View All", style: redFontText)),
                                                    ],
                                                  ),
                                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 5, left: 5),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 8,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.90,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final item = carsBrand[index];
                        return InkWell(
                          child: Center(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(0, 0, 0, 0.11),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 90,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                item.icon,
                                width: 70,
                                height: 70,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding:   const EdgeInsets.only(right: 5, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Special Cars",
                        style: TextStyle(fontSize: 17),
                      ),
                      InkWell(
                          onTap: () {
                            const SpecialCarsScreenRoute().push(context);
                          },
                          child: const Text("View All", style: redFontText)),
                    ],
                  ),
                ),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        height: 250,
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
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                      width: 250,
                                      height: 240,
                                      child: CarWidget(
                                        car: value,
                                        width:
                                            MediaQuery.of(context).size.width,
                                      )),
                                ));
                              },
                            ),
                          ),
                        )),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImageSection(int index, BuildContext context) {
   
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 208, 222, 245),
            blurRadius: 15,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          carPage[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
