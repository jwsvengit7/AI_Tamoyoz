import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/widget/drawer/bottom_sheet.dart';
import 'package:ai_tamayoz/core/widget/loading/progress_indicator_scaffold.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_text_field.dart';
import 'package:ai_tamayoz/feature/cars/domain/model/cars_details_model.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/utils/fonts.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars_widget.dart';

import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';

class CarsDetailsScreen extends StatefulWidget {
  final CarsDetailsModel data;
  const CarsDetailsScreen({super.key, required this.data});
  @override
  CarsDetailsScreenState createState() => CarsDetailsScreenState();
}

class CarsDetailsScreenState extends State<CarsDetailsScreen> with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  TextStyle styleText = const TextStyle(fontWeight: FontWeight.bold);
  int _currentPage = 0;


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
            title: "Car Details",
            shouldPop: true,
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.data.name),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("8,750 KWD  | ${widget.data.price}"),
                          Text(widget.data.brand, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            child: PageView.builder(
                              controller: _pageController,
                              itemCount: widget.data.image.length,
                              onPageChanged: (int page) {
                                setState(() {
                                  _currentPage = page;
                                });
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return CarDetailsWidget(
                                  carImage: widget.data.image[index],
                                  width: MediaQuery.of(context).size.width,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(widget.data.image.length, (index) {
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
                      const SizedBox(height: 10),
                      Text("Details", style: styleText),
                      const SizedBox(height: 10),
                      const Text(
                        style: TextStyle(color: Colors.grey),
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in ",
                      ),
                      const SizedBox(height: 20),
                      Text("Specifications", style: styleText),
                      const SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        decoration: BoxDecoration(
                          color: TamayozLoanColors.grey8,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Make"),
                                  Image.asset(Assets.images.jeepLogo1.path, width: 40, height: 40),
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Model"),
                                  Text(widget.data.name),
                                ],
                              ),
                              const Divider(),
                              const SizedBox(height: 10),
                              TamayozLoanButtons(
                                context: context,
                                onTap: null,
                                text: "Sold",
                                textColor: TamayozLoanColors.white,
                                color: TamayozLoanColors.red2,
                              ).normal(),
                              const SizedBox(height: 10),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Cylinder"),
                                  Text("6"),
                                ],
                              ),
                              const Divider(),
                              const SizedBox(height: 10),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Mileage"),
                                  Text("201,109 KM"),
                                ],
                              ),
                              const Divider(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Similar Cars",
                            style: TextStyle(fontSize: 17),
                          ),
                          InkWell(
                            onTap: () {
                              const SpecialCarsScreenRoute().push(context);
                            },
                            child: const Text("View All", style: redFontText),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
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
                                            width: MediaQuery.of(context).size.width,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () { openSideBar(context);},
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 1.3,
                                height: 50,
                                child: const Text(
                                  "Bid Now",
                                  style: TextStyle(color: TamayozLoanColors.white),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: TamayozLoanColors.black2,
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 198, 234, 192),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Image.asset(Assets.images.phoneCall.path, width: 30, height: 30),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
             
            ],
          ),
        ),
    );
  }

      void openSideBar(BuildContext context) {
   BottomTop(widget:  Expanded(
              child: Container()
            )).openBid(context,
             Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("Bid Amount"),
                            ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TamayozSearchTextField(
                                         controller: TextEditingController(),
                                                                   type: "email",
                                
                                        hintText: "Bid Amount",
                                        // passwordField: true,
                                        ),
                              ),
            
                                        Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: TamayozLoanButtons(
                                              context: context,
                                              onTap: () {},
                                              text: "Submit",
                                              textColor: TamayozLoanColors.white,
                                              color: TamayozLoanColors.black1)
                                          .normal(),
                                    ),
            
            
                           
                            
                          ],
                        ) );
}
}


class CarDetailsWidget extends StatelessWidget {
  final String carImage;
  final double width;

  const CarDetailsWidget({super.key, required this.carImage, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 15,
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20), 
            child: Image.asset(
              carImage,
              width: width,
              height: 240,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Image.asset(Assets.icons.vector.path)
          ),
        ],
      ),
    );
  }






}
