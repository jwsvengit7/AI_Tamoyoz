import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/widget/drawer/drawer_widget.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/utils/fonts.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars_widget.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const TamayozDrawer(),
         appBar: PreferredSize(
           preferredSize: Size.fromHeight(100.0),
           child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading :false,
            flexibleSpace: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Find Your\nNew Vehicle",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      icon: const FaIcon(FontAwesomeIcons.bars, color: Colors.black),
                      iconSize: 25,
                    ),
                  ],
                ),
              ),
            ),
                   ),
         ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
              
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: 2,
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
                    Positioned(
                      bottom: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(2, (index) {
                          return GestureDetector(
                            onTap: () {
                              _pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              width: _currentPage == index ? 12.0 : 8.0,
                              height: _currentPage == index ? 12.0 : 8.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentPage == index
                                    ? Colors.blue
                                    : Colors.grey,
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: const Color.fromRGBO(0, 0, 0, 0.11),
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
                          )),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 100,
                        width: 220,
                        child: Image.asset(Assets.images.cars.path),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(3, (index) {
                        final value = carsVendors[index];
                        return Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 110,
                                height: 150,
                                // margin:
                                //     const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: TamayozLoanColors.white2,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                      offset: const Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,

                                        color: index == 1
                                            ? const Color.fromRGBO(
                                                201, 116, 116, 0.27)
                                            : index == 2
                                                ? const Color.fromRGBO(
                                                    36, 226, 19, 0.17)
                                                : const Color.fromRGBO(
                                                    253, 204, 78, 0.2),

                                        //  borderRadius: BorderRadius.circular(30)
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
                          ],
                        );
                      }),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Brands",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("View All", style: redFontText),
                      ]),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 14.0, bottom: 10, right: 5, left: 5),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 5,
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
                                  borderRadius: BorderRadius.circular(10)),
                              height: 120,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                item.icon,
                                width: 50,
                                height: 70,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Special Cars",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text("View All",
                            style: redFontText),
                      ]),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: cars.length,
                          onPageChanged: (int page) {
                            setState(() {
                              _currentPage = page;
                            });
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return CarWidget(car: cars[index]);
                          },
                        ),
                      ),
                    ),
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
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 208, 222, 245),
            blurRadius: 15,
          ),
        ],
      ),
      child: Image.asset(
        Assets.images.maincar.path,
        fit: BoxFit.cover,
      ),
    );
  }
}
