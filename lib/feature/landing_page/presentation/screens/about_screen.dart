import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ai_tamayoz/core/appbar/appbar.dart';
import 'package:flutter/widgets.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});
  @override
  AboutUsScreenState createState() => AboutUsScreenState();
}

class AboutUsScreenState extends State<AboutUsScreen> {
  TextStyle styleText = const TextStyle(fontWeight: FontWeight.bold);

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
          title: "About Al Tamayoz",
          shouldPop: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Container(
                    width: double.infinity,
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
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        Assets.images.maincar.path,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: TamayozLoanColors.grey8,
                            ),
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(Assets.icons.instagram.path),
                                  const SizedBox(width: 10),
                                  const Text("Instagram",style: TextStyle(fontSize: 12),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: TamayozLoanColors.grey8,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(Assets.icons.facebook.path),
                                  const SizedBox(width: 10),
                                  const Text("Facebook",style: TextStyle(fontSize: 12),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: TamayozLoanColors.grey8,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(Assets.icons.whatsapp.path),
                                  const SizedBox(width: 10),
                                  const Text("Whatsapp",style: TextStyle(fontSize: 12),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: TamayozLoanColors.grey8,
                          ),
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(Assets.icons.tele.path),
                                const SizedBox(width: 10),
                                const Text("+965 55555555")
                              ],
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: TamayozLoanColors.grey8,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(Assets.icons.mail.path),
                                const SizedBox(width: 10),
                                const Text("info@altamayoz.com")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    style: TextStyle(color: Colors.grey),
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. AliquaLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare Lorem ipsum",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
