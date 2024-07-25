import 'package:ai_tamayoz/core/widget/drawer/drawer_widget.dart';
import 'package:ai_tamayoz/feature/cars/presentation/screens/widget/success_cars.dart';
import 'package:flutter/material.dart';

class BottomTop {
  final Widget widget;

  BottomTop({required this.widget});
 
void openSideBar(BuildContext context) {
 sheet(context,TamayozDrawer());
  
}

  void open(BuildContext context,String text,Function(BuildContext) onTap,String title,String image) {
     sheet(context,SuccessScreen(message: text,onTap:onTap,title:title,image:image));

  }

Future<dynamic> sheet(BuildContext context,Widget child){
  return  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    isDismissible: true,
    enableDrag: true,
    builder: (context) => DraggableScrollableSheet(
      initialChildSize: 1,
      maxChildSize: 1.0,
      minChildSize: 0.5,
      expand: false,
      builder: (context, scrollController) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  alignment: Alignment.center,
                  height: 7,
                  width: 150,
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 23, 22, 22),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Expanded(child: child), // Use TamayozDrawer directly here
            
          ],
        ),
      ),
    ),
  );
}

  void openBid(BuildContext context, Widget child) {
    sheet(context, child);
  }
} 
