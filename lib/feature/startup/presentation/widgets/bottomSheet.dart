import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:flutter/material.dart';

class BottomSheets extends StatelessWidget {
  final double height;
  final Widget? child;

  const BottomSheets({super.key, required this.height, this.child});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: height,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: TamayozLoanColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: child
        ),
      ),
    ]);
  }
}
