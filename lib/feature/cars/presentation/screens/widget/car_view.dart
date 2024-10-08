import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class CarViewProduct extends StatelessWidget {
  final int i;
  CarViewProduct({required this.i});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: i == 0
              ? const Color.fromARGB(255, 65, 64, 64)
              : TamayozLoanColors.grey8,
        ),
        width: 100,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(Assets.images.brandCar2.path, width: 40, height: 50),
            Text("Sedan",
                style: TextStyle(
                  fontSize: 12,
                    color: i == 0
                        ? TamayozLoanColors.white
                        : TamayozLoanColors.black1))
          ],
        ),
      ),
    );
  }
}
