import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/extensions/size_extension.dart';

class TamayozLoanButtons {
  bool? expanded;
  BuildContext context;
  String text;
  double borderRadius, textFontSize, letterSpacing;
  Color? color, disabledColor;
  Color textColor;
  FontWeight fontWeight;
  Widget? buttonContent;
  TextStyle? explicitTextStyle;
  EdgeInsetsGeometry? padding;
  Size? size;
  VoidCallback? onTap;

  TamayozLoanButtons({
    required this.context,
    this.text = 'BUTTON',
    this.borderRadius = 10,
    this.disabledColor = TamayozLoanColors.grey1,
    this.color = TamayozLoanColors.blue1,
    this.textColor = Colors.white,
    this.textFontSize = 17,
    this.letterSpacing = -0.3,
    this.padding,
    this.size,
    this.fontWeight = FontWeight.w600,
    this.explicitTextStyle,
    this.expanded = false,
    this.buttonContent,
    required this.onTap,
  }) {
    color ??= Theme.of(context).primaryColor;
  }

  Widget normal() {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(borderRadius)),
          child: buttonContent ??
              Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: explicitTextStyle ??
                    TextStyle(
                      color: textColor,
                      fontSize: textFontSize,
                      letterSpacing: letterSpacing,
                      fontWeight: fontWeight,
                      height: 1,
                    ),
                textAlign: TextAlign.center,
              ),
        ),
      ),
    );
  }

  Widget outline({double borderWidth = 1, Color? borderColor}) {
    return SizedBox(
      height: size?.height,
      width: expanded ?? false ? context.screenWidth : size?.width,
      child: OutlinedButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) {
                if (states.contains(MaterialState.disabled)) {
                  return disabledColor;
                } else {
                  return color;
                }
              },
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
              padding ??
                  EdgeInsets.symmetric(
                    horizontal: 40.w,
                    vertical: 30.h,
                  ),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius))),
            side: MaterialStateProperty.all<BorderSide>(
                BorderSide(color: borderColor ?? color!, width: borderWidth))),
        child: buttonContent ??
            Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: explicitTextStyle ??
                  TextStyle(
                    color: textColor,
                    fontSize: textFontSize,
                    letterSpacing: letterSpacing,
                    fontWeight: fontWeight,
                    height: 1,
                  ),
              textAlign: TextAlign.center,
            ),
      ),
    );
  }
}
