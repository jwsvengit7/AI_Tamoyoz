import 'dart:io';

import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/extensions/logger_extension.dart';
import 'package:ai_tamayoz/core/widget/confirm/confirm_box.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_text_field.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
class AddCarsScreen extends StatefulWidget {
  const AddCarsScreen({super.key});
  @override
  AddCarsScreenState createState() => AddCarsScreenState();
}


class AddCarsScreenState extends State<AddCarsScreen> {
  bool modar = false;
  final ImagePicker _picker = ImagePicker();
  List<File?> _selectedFiles = [];
  File? _file;
  @override
  void initState() {
    super.initState();
  setState(() {
    modar=false;
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
        child: ConfirmBoxWidget(
                    message: "Your request to sell your car is submitted successfully. We will contact you within 48 hours to confirm details.",
                    modar: modar,
                    onTap: _handleSubmission,
                    title:"Submitted Successfully",
                    image:Assets.icons.check.path,
                    status:true,
                   
          child: Scaffold(
            backgroundColor: Colors.white,
              appBar: const TamayozLoanAppBar(
                title: "Add Car",
                shouldPop: true,
              ),
              body: SingleChildScrollView(
                
                        child:   Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                              width: MediaQuery.of(context).size.width,
                                              child: const Text("Sell Your Car With Us",style:TextStyle(color:Color.fromRGBO(19, 201, 226, 1),fontSize: 20))),
                        
                                            const  Text("Add your car details, we will contact you within 48 hours"),
                                            const SizedBox(height: 10,),
                                            Text("Seller Details",style: styleText,),
                                                                                      const SizedBox(height: 10,),
                                                                                      TamayozSearchTextField(
                                type:"text",
                                hintText: "Name",
                                controller:name),
                           
                            const SizedBox(height:10),
                        
                              TamayozSearchTextField(
                              hintText: "Phone",
                              controller: phone,
                              type:"number"
                             
                              // passwordField: true,
                            ),
                        
                                                           const SizedBox(height: 10,),
                                            Text("Car Details",style: styleText,),
                                                                                      const SizedBox(height: 10,),
                                                                                      TamayozSearchTextField(
                                type:"text",
                                hintText: "Name",
                                controller:name),
                           
                        
          
                             const SizedBox(height:10),
          
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                SizedBox(
                                  width: 170,
                                  child:  TamayozSearchTextField(
                              hintText: "Details",
                              controller: TextEditingController(),
                              type:"text"
                             
                              // passwordField: true,
                            ),
                                ),
                                  SizedBox(
                                  width: 170,
                                  child:  TamayozSearchTextField(
                              hintText: "Gard",
                              controller: TextEditingController(),
                              type:"text"
                             
                              // passwordField: true,
                            ),
                                )
                              ]
                             )
                        
                         , const SizedBox(height:10),
          
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                SizedBox(
                                  width: 170,
                                  child:  TamayozSearchTextField(
                              hintText: "Details",
                              controller: TextEditingController(),
                              type:"text"
                             
                              // passwordField: true,
                            ),
                                ),
                                  SizedBox(
                                  width: 170,
                                  child:  TamayozSearchTextField(
                              hintText: "Gard",
                              controller: TextEditingController(),
                              type:"text"
                             
                              // passwordField: true,
                            ),
                                ),
                               
                              ]
                             ),
          
                                 const SizedBox(height:10),
                        
                              TamayozSearchTextField(
                              hintText: "Phone",
                              controller: phone,
                              type:"number"
                             
                              // passwordField: true,
                            ),
                               const SizedBox(height:10),
                        
                              TamayozSearchTextField(
                              hintText: "Phone",
                              controller: phone,
                              type:"number",
                              
                             
                              // passwordField: true,
                            ),
          
                            const SizedBox(height:10),
    Container(
  width: MediaQuery.of(context).size.width,
  height: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 1, color: TamayozLoanColors.grey8),
    color: TamayozLoanColors.white,
  ),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        Expanded(
          child: TextFormField(
            maxLines: null, 
            maxLength: 250, 
            decoration: const InputDecoration(
              hintText: "Type here...",
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            onChanged: (value) {
             
            },
          ),
        ),
      ],
    ),
  ),
),

                              const SizedBox(height:10),
                                 Container(
                                  alignment: Alignment.centerRight,
                                  width:MediaQuery.of(context).size.width,
                                  child: const Text("Max 250 Characters", style: TextStyle(color: Colors.lightBlue),textAlign: TextAlign.right,)),
                               const SizedBox(height:10),
                              Text("Media",style: styleText,),
                               const SizedBox(height:10),

                               Container(
                                width:MediaQuery.of(context).size.width,

                               
                                 child: Row(
                                  
                                  children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: GestureDetector(
                                      onTap: _pickFile,
                                      child: Container(
                                        width:80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          border: Border.all(color:TamayozLoanColors.grey8,width: 1.0),
                                          color:TamayozLoanColors.white,
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child:Image.asset(Assets.images.image1.path)
                                                                       
                                      ),
                                    ),
                                  ),
                               Expanded(
                                child: SizedBox(
                                  height: 80,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: _selectedFiles.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(20),
                                              child: Image.file(
                                                _selectedFiles[index]!,
                                                width: 80,
                                                height: 80,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                              right: 0,
                                              top: 0,
                                              child: GestureDetector(
                                                onTap: () => _removeFile(index),
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  decoration: const BoxDecoration(
                                                    color:  Colors.red,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: const  Icon(
                                                    Icons.close,
                                                    size: 15,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ) ],),
                               );
  }),),),]),),

  const SizedBox(height: 15,),



          
                            Row(
                                                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
          
                              children: [
                                Container(
                                  width: 170,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1.0,color: TamayozLoanColors.grey8)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (Color color in [
                Colors.red,
                Colors.black,
                Colors.grey,
                TamayozLoanColors.grey8,
              ])
                InkWell(
          
          child: Container(
            width: 30,
            height: 30,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100),
                 border: Border.all(color: TamayozLoanColors.grey8,width: 1)
            ),
          ),
                ),
            ],
          ),
          
                                ),
                                   Container(
                                  width: 170,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1.0,color: TamayozLoanColors.grey8)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (Color color in [
                Colors.red,
                Colors.white,
                Colors.lightBlue,
                Colors.yellow,
              ])
                InkWell(
                  onTap:() {
                    
                  },
          child: Container(
            width: 30,
            height: 30,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: TamayozLoanColors.grey8,width: 1)
            ),
          ),
                ),
            ],
          ),
          
                                ),
                                
                              ],
                            ),
         const SizedBox(height:10),
             TamayozLoanButtons(
                                    context: context,
                                    onTap: () {
                                      setState(() {
                                        modar=true;
                                      });
                                    },
                                    text: "Update",
                                    textColor: TamayozLoanColors.white,
                                    color:  TamayozLoanColors.black1 )
                                .normal(),
          
                       const SizedBox(height:20),
          
                        
                        
                                            
                            ],
                          ),
                        ),
              
              ),
          ),
        ),);
                 
  }
  Future<void> _pickFile() async {
  
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      setState(() {
        _file = pickedFile != null ? File(pickedFile.path) : null;
        _selectedFiles.add(pickedFile != null ? File(pickedFile.path):null);
      });
   
    
  }

    void _removeFile(int index) {
    setState(() {
      _selectedFiles.removeAt(index);

    });
  }
  void _handleSubmission(BuildContext context)  {
      setState(() {
                                     modar=false;
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

