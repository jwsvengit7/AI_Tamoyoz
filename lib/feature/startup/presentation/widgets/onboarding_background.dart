import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/extensions/size_extension.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';

class OnBoardingBackground extends StatelessWidget {

  const OnBoardingBackground({super.key, required this.child, this.color});
  final Widget child;
  final Color? color;

@override
Widget build(BuildContext context) {
  return SafeArea(
    child: Container(
      // padding: EdgeInsets.symmetric(vertical: 40.h),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: color,
        image: color == null ? DecorationImage(
          image: AssetImage(Assets.images.app.path),
          fit: BoxFit.cover,
        ) : null,
      ),
      child: child,
    ),
  );
}
}
