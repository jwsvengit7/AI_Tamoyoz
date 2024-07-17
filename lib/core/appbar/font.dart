import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:flutter/material.dart';

class FontFamilys {
    TextStyle get titleStyle => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 30,
        height: 1,
        color: TamayozLoanColors.white,
      );

        TextStyle get titleStyle2 => const TextStyle(
        fontSize: 20,
        height: 1,
        color: TamayozLoanColors.white,
      );

      TextStyle get textLabelForm => const TextStyle(
        color: Colors.black, fontSize: 18,  

      );
}