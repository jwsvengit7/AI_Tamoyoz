import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/extensions/logger_extension.dart';
import 'package:ai_tamayoz/core/widget/drawer/bottom_sheet.dart';
import 'package:ai_tamayoz/core/widget/text_field/number_input.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_text_field.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';

class RequestCarsScreen extends StatefulWidget {
  const RequestCarsScreen({super.key});
  @override
  RequestCarsScreenState createState() => RequestCarsScreenState();
}

class RequestCarsScreenState extends State<RequestCarsScreen> {
  bool modar = false;
  TextEditingController description =TextEditingController();
  List<Color> colors=[
    Colors.purple,
   const Color.fromARGB(255, 132, 128, 128),
    Colors.lightBlue,
     Colors.indigo,
     Colors.red, Colors.white,
       Colors.yellow,Colors.brown,
        Colors.deepPurpleAccent, Colors.black,
         ];
  @override
  void initState() {
    super.initState();
    setState(() {
      modar = false;
    });
  }

  TextStyle styleText = const TextStyle(fontWeight: FontWeight.bold);
  final name = TextEditingController();
  final phone = TextEditingController();
  List<Widget> items = [];
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
          title: "Request Car",
          shouldPop: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text("Request Your Desired Car",
                        style: TextStyle(
                            color: Color.fromRGBO(19, 201, 226, 1),
                            fontSize: 20))),
                const Text(
                    "Tell us the details, and we will contact you once found"),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Customer Details",
                  style: styleText,
                ),
                const SizedBox(
                  height: 10,
                ),
                TamayozSearchTextField(
                    type: "text", hintText: "Full Name", controller: name),
                const SizedBox(height: 10),
              
                     PhoneNumberInput(
                  controller: phone,
                  type: "Enter you contact number",
      
                  // passwordField: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Car Details",
                  style: styleText,
                ),
                const SizedBox(
                  height: 10,
                ),
              
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DropdownButtonFormField<CarType>(
                    decoration: InputDecoration(
                      hintText: 'Brand',
                      border: OutlineInputBorder(
        borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ), 
        enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
                    ),
                    items: carsBrand
                        .map((CarType? value) {
                      return DropdownMenuItem<CarType>(
                        value: value,
                        child: Text(value!.name),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButtonFormField<CarType>(
                    decoration: InputDecoration(
                      hintText: 'Model',
                       border: OutlineInputBorder(
        borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
        borderRadius: BorderRadius.circular(1.0),
      ),
        enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
                    ),
                    items: carsBrand
                        .map((CarType? value) {
                      return DropdownMenuItem<CarType>(
                        value: value,
                        child: Text(value!.name),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                  ),
                ),
              ],
            ),
               const SizedBox(height: 10),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Year',
                      border: OutlineInputBorder(
        borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ), 
        enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      ),
                    items: <String>['2017', '2018', '2019','2020', '2021', '2022','2023', '2024']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Cylinders',
                       border: OutlineInputBorder(
        borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
        borderRadius: BorderRadius.circular(1.0),
      ),
        enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
                    ),
      
                    items: <String>['1', '2', '3','4', '5', '6']
                        .map((String size) {
                      return DropdownMenuItem<String>(
                        value: size,
                        child: Text(size),
                      );
                    }).toList(),
                    onChanged: (newValue) {},
                  ),
                ),
              ],
            ),
          
             
                const SizedBox(height: 10),
                PhoneNumberInput(
                  controller: phone,
                  type: "Minimum Mileage",
                  textWidthStyle:true,
                  style:"KM"
      
                  // passwordField: true,
                ),
                const SizedBox(height: 10),
                            
                PhoneNumberInput(
                  controller: phone,
                  type: "Maximum Mileage",
                  textWidthStyle:true,
                  style:"KM"
      
                  // passwordField: true,
                ),
              
        
               
                const SizedBox(
                  height: 15,
                ),
               SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
      width: MediaQuery.of(context).size.width /2.3,
      height: 70,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: TamayozLoanColors.grey8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
         onTap:() {
                 openSideBar(context,"Exterior Colors",);
              },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (Color color in [Colors.red, Colors.black, Colors.grey, TamayozLoanColors.grey8])
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: TamayozLoanColors.grey8, width: 1),
                ),
              ),
              Icon(Icons.chevron_right)
          ],
        ),
      ),
            ),
            Container(
      width: MediaQuery.of(context).size.width /2.3,
      height: 70,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: TamayozLoanColors.grey8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
          onTap:() {
                 openSideBar(context,"Exterior Colors",);
              },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (Color color in [Colors.red, Colors.white, Colors.lightBlue, Colors.yellow])
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: TamayozLoanColors.grey8, width: 1),
                ),
              ),
                            Icon(Icons.chevron_right)
        
          ],
        ),
      ),
            ),
          ],
        ),
      ),
      
            
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
 void openSideBar(BuildContext context,String text) {
  BottomTop(
    widget: Expanded(
      child: Container(),
    ),
  ).openBid(
    context,
   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height:15),
           Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Choose desired exterior colors"),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:     SizedBox(
                    width: MediaQuery.of(context).size.width,

                       child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: colors.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                        childAspectRatio: 1.5,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final color = colors[index];
  return Container(
                      width: 30,
                      height: 30,
                    
                      decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: color,
                                      boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 208, 222, 245),
            blurRadius: 15,
          ),
        ],
                                      border: Border.all(
                                       color:color,
                                        width: 2.0,
                                      ),
                      )
                                    );
                      
                }
                       )
            
          
                
            
                ),
              ),

              SizedBox(height: 20,),

              
              Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: TamayozLoanButtons(
                                              context: context,
                                              onTap: () {
                                                openSuccess(context);
                                              },
                                              text: "Confirm",
                                              textColor: TamayozLoanColors.white,
                                              color: TamayozLoanColors.black1)
                                          .normal(),
                                    ),
          
        
        ],
      ),
    
  );
}


 void openSuccess(BuildContext context) {
   BottomTop(widget:  Expanded(
              child: Container()
            )).open(context,
            "Your request to sell your car is submitted successfully. We will contact you within 48 hours to confirm details.",
         _handleSubmission,
         "Submitted Successfully",
         Assets.icons.check.path,
            );
}


  void _handleSubmission(BuildContext context) {
    setState(() {
      modar = false;
    });
    ">>>>>>>-----<<<<<<<".log();
    // final authType =
    //     await TransactionAuthenticationRoute(accountNumber.text).push(context);
    // if (!context.mounted) return;

    // if (authType is! TransactionAuthResponse) {
    //   return;
    // }

    // if (authType.isSuccessful) {
    //   context.read<UnblockAccountBloc>().add(
    //         UnblockAccountEvent.requestUnblockAccount(accountNumber.text,_authenticationApi.getLoginTime()),
    //       );
    // }
  }
}
