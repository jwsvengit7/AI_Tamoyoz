import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class TamayozDrawer extends StatelessWidget {
   TamayozDrawer({super.key});

  final text =TextStyle(fontSize:13);

  @override
  Widget build(BuildContext context) {
    double drawerWidth =
        MediaQuery.of(context).size.width * 0.95; 

    return SizedBox(
      width: drawerWidth,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
          const SizedBox(height:70),

            Padding(
                 padding: const EdgeInsets.only(left:12,right:12),
                 child: Container(
                       decoration: const BoxDecoration(
                         border: Border(
                           bottom: BorderSide(color: Color.fromARGB(255, 217, 215, 215)),
                         ),
                       ),
                   child:  ListTile(
              title:  Text('Edit Account',style:text),
            leading:  Image.asset(Assets.icons.edit.path),
            onTap: (){
              const AccountScreenRoute().push(context);
            },
            ))
            ),
               Padding(
                 padding: const EdgeInsets.only(left:12,right:12),
                 child: Container(
                       decoration: const BoxDecoration(
                         border: Border(
                           bottom: BorderSide(color: Color.fromARGB(255, 217, 215, 215)),
                         ),
                       ),
                   child:  ListTile(
              title: Text('Whistlist',style:text),
            leading:  Image.asset(Assets.icons.love.path),
              onTap: (){
              const WhistlistRoute().push(context);
            },
               ))
            ),
               Padding(
                 padding: const EdgeInsets.only(left:12,right:12),
                 child: Container(
                       decoration: const BoxDecoration(
                         border: Border(
                           bottom: BorderSide(color: Color.fromARGB(255, 217, 215, 215)),
                         ),
                       ),
                   child:  ListTile(
              title:  Text('Change Password',style:text),
            leading:  Image.asset(Assets.icons.lock.path),
            onTap: (){
              const ChangePasswordScreenRoute().push(context);
            },
               ))  
            ),
                Padding(
                 padding: const EdgeInsets.only(left:12,right:12),
                 child: Container(
                       decoration: const BoxDecoration(
                         border: Border(
                           bottom: BorderSide(color: Color.fromARGB(255, 217, 215, 215)),
                         ),
                       ),
                   child: ListTile(
              title:  Text('My Cars',style:text),
            leading:  Image.asset(Assets.icons.car.path),
            onTap: (){
              const CarsRoute().push(context);
            },
               )),
            ),
                Padding(
                 padding: const EdgeInsets.only(left:12,right:12),
                 child: Container(
                       decoration: const BoxDecoration(
                         border: Border(
                           bottom: BorderSide(color: Color.fromARGB(255, 217, 215, 215)),
                         ),
                       ),
                   child: ListTile(
              title:  Text('Log Out',style:text),
            leading:  Image.asset(Assets.icons.lock.path),
            onTap: (){
                            const ChangePasswordScreenRoute().push(context);

            },
               )),
            ),
               Padding(
                 padding: const EdgeInsets.only(left:12,right:12),
                 child: Container(
                       decoration: const BoxDecoration(
                         border: Border(
                           bottom: BorderSide(color: Color.fromARGB(255, 217, 215, 215)),
                         ),
                       ),
                   child:  ListTile(
              title:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
 Text('Language',style:text),
 Text('English',style:text)
              ] ),
            leading:  Image.asset(Assets.icons.aZ.path),
            onTap: null,
               )),
            ),
                Padding(
                 padding: const EdgeInsets.only(left:12,right:12),
                 child: Container(
                       decoration: const BoxDecoration(
                         border: Border(
                           bottom: BorderSide(color: Color.fromARGB(255, 217, 215, 215)),
                         ),
                       ),
                   child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
 Text('Notifications',style:text),
 SizedBox(
  width:120,
  height:50,
  child:Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    InkWell(
      child: Text("ON",style:text),
    ),
    Image.asset(Assets.icons.toggleOn.path),
      InkWell(
      child: Text("OFF",style:text),
    )

  ],
 ))
              ] ),
            leading:  Image.asset(Assets.icons.notify.path),
            onTap: null,
               )), 
            ),
                Padding(
                 padding: const EdgeInsets.only(left:12,right:12),
                 child: Container(
                       decoration: const BoxDecoration(
                         border: Border(
                           bottom: BorderSide(color: Color.fromARGB(255, 217, 215, 215)),
                         ),
                       ),
                   child: ListTile(
              title:  Text('About AI Tamayoz',style:text),
            leading:  Image.asset(Assets.icons.i.path),
            onTap: (){
                            const AboutUsRoute().push(context);

            },
               )),
            ),
                Padding(
                 padding: const EdgeInsets.only(left:12,right:12),
                 child: Container(
                       decoration: const BoxDecoration(
                         border: Border(
                           bottom: BorderSide(color: Color.fromARGB(255, 217, 215, 215)),
                         ),
                       ),
                   child: ListTile(
              title:  Text('Terms & Conditions',style:text),
            leading:  Image.asset(Assets.icons.book7.path),
            onTap: (){
                            const TermsAndConditionRoute().push(context);

            },
               ),
        ),
            ),
                Padding(
                 padding: const EdgeInsets.only(left:12,right:12),
                 child: Container(
                       decoration: const BoxDecoration(
                         border: Border(
                           bottom: BorderSide(color: Color.fromARGB(255, 217, 215, 215)),
                         ),
                       ),
                   child: ListTile(
              title: Text('Privacy Policy',style:text),
            leading:  Image.asset(Assets.icons.gaurd.path),
            onTap: (){
                            const PrivacyRoute().push(context);

            },
              
            ),
                 ),
                ),

               Padding(
                 padding: const EdgeInsets.only(left:12,right:12),
                 child: Container(
                       decoration: const BoxDecoration(
                         border: Border(
                           bottom: BorderSide(color: Color.fromARGB(255, 217, 215, 215)),
                         ),
                       ),
                   child: ListTile(
                                 title:  Text('Contact us',style:text),
                               leading:  Image.asset(Assets.icons.headphone.path),
                               onTap: (){
                                   const ContactUsRoute().push(context);
                               },
                               
                   )
                               ),
               ),


               Padding(
                 padding:  EdgeInsets.only(left:12,right:12,top:20),
                 child: ListTile(
                  title: Text("Version 1.0.0\n2023 Al Tamayoz\nPowered by Code Zone",style:text),
                 ),
               )

               
             
          
          ],
        ),
      ),
    );
  }
}


class SidebarIcon{
  final String title;
  final Icon icon;
  final String route;
  final String notify;
  final String langauge;
    final VoidCallback? onTap;

  SidebarIcon({this.onTap,required this.notify,required this.langauge,required this.title, required this.icon, required this.route});

  
}
