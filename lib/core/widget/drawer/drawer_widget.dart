import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class TamayozDrawer extends StatelessWidget {
  const TamayozDrawer({super.key});

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
              title: const Text('Edit Account'),
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
              title:const Text('Whistlist'),
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
              title: const Text('Change Password'),
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
              title: const Text('My Cars'),
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
              title: const Text('Log Out'),
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
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
const Text('Language'),
const Text('English')
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
const Text('Notifications'),
 SizedBox(
  width:120,
  height:50,
  child:Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
   const InkWell(
      child: Text("ON"),
    ),
    Image.asset(Assets.icons.toggleOn.path),
    const  InkWell(
      child: Text("OFF"),
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
              title: const Text('About AI Tamayoz'),
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
              title: const Text('Terms & Conditions'),
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
              title:const Text('Privacy Policy'),
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
                                 title: const Text('Contact us'),
                               leading:  Image.asset(Assets.icons.headphone.path),
                               onTap: (){
                                   const ContactUsRoute().push(context);
                               },
                               
                   )
                               ),
               ),


              const Padding(
                 padding:  EdgeInsets.only(left:12,right:12,top:20),
                 child: ListTile(
                  title: Text("Version 1.0.0\n2023 Al Tamayoz\nPowered by Code Zone"),
                 ),
               )

               
             
          
          ],
        ),
      ),
    );
  }
}
