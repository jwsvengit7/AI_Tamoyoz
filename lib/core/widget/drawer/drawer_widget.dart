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
          const SizedBox(height:50),

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
            onTap: null,
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
            onTap: null,
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
            onTap: null,
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
              title: const Text('Log Out'),
            leading:  Image.asset(Assets.icons.lock.path),
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
                   child:  ListTile(
              title: const Text('Language'),
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
              title:const Text('Notifications'),
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
              title: const Text('Terms & Conditions'),
            leading:  Image.asset(Assets.icons.book7.path),
            onTap: null,
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
            onTap: null,
              
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
                                 title:  Text('Contact us'),
                               leading:  Image.asset(Assets.icons.headphone.path),
                               onTap: null,
                               
                   )
                               ),
               ),
               
             
          
          ],
        ),
      ),
    );
  }
}
