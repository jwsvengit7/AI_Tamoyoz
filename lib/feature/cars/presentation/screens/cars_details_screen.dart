import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/feature/cars/domain/model/cars_details_model.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars_widget.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:flutter/widgets.dart';

class CarsDetailsScreen extends StatefulWidget {
  final CarsDetailsModel data;
  const CarsDetailsScreen({super.key, required this.data});
  @override
  CarsDetailsScreenState createState() => CarsDetailsScreenState();
}

class CarsDetailsScreenState extends State<CarsDetailsScreen> {
  final PageController _pageController = PageController();
  TextStyle styleText = const TextStyle(fontWeight: FontWeight.bold);
  int _currentPage = 0;
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
              title: "Car Details",
              shouldPop: true,
            ),
            body: SingleChildScrollView(
                child: Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.data.name),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("8,750 KWD  | ${widget.data.price}"),
                          Text(widget.data.brand,
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold))
                        ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
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
                              return CarDetailsWidget(
                                car: cars[index],
                                width: MediaQuery.of(context).size.width,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                     Text("Details",style: styleText,),
                    const SizedBox(height: 10),
                    const Text(
                      style:TextStyle(color:Colors.grey),
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in "),
                            const SizedBox(height: 10),
                     Text("Specifications",style: styleText,),
                                                const SizedBox(height: 10),

                                                Container(

width: MediaQuery.of(context).size.width,
height: 300,
color: TamayozLoanColors.grey7,
child:Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    children: [
  
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        const Text("Make"),
        Image.asset(Assets.images.jeepLogo1.path,width:40,height:40),
      ],),     
      const Divider(),
            Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        const Text("Model"),
        Text(widget.data.name),
      ],),     
      const Divider(),

         const SizedBox(height:10),
                         
                          TamayozLoanButtons(
                                  context: context,
                                  onTap: () =>_handleEidt(context),
                                  text: "Edit",
                                  textColor: TamayozLoanColors.white,
                                  color:  TamayozLoanColors.black1 )
                              .normal(),
         const SizedBox(height:10),

                            const     Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text("Cylinder"),
        Text("6"),
      ],),     
      const Divider(),

               const SizedBox(height:10),

                            const     Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text("Mileage"),
        Text("201,109 KM"),
      ],),     
      const Divider(),
  
    ],
  ),
)

                                                )
,
const SizedBox(height:10),
 Text("Contact Number",style: styleText,),
const SizedBox(height:10),
const SizedBox(
  width: 100,
  child:  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("998",style:TextStyle(color:Color.fromRGBO(19, 201, 226, 1),fontSize: 15)),
      Text("551551"),
    ],
  ),
),
    const  SizedBox(height: 40,)

                  ]),

            ))));
  }

  void _handleEidt(BuildContext context){

  }
}

class CarDetailsWidget extends StatelessWidget {
  final Car car;
  final double width;

  const CarDetailsWidget({super.key, required this.car, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // Same radius as the container
        child: Image.asset(
          car.icon,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
