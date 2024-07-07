import 'package:flutter/material.dart';

class TamayozLoanColors {

  TamayozLoanColors._();

  static const Color black1 = Color(0xff000000);
  static const Color black2 = Color(0xff040E17);
  static const Color green2 = Color(0xFF61B454);
  static const Color grey1 = Color(0xffcccccc);
  static const Color grey2 = Color(0xff565656);
  static const Color grey3 = Color(0xff2C2C2C);
  static const Color grey4 = Color(0xff808080);
  static const Color grey5 = Color(0xffABABAB);
  static const Color grey6 = Color(0xff020202);
  static const Color grey7 = Color(0xffCFD9E7);
  static const Color grey8 = Color(0xffEEEEEE);

  static const Color white = Color(0xffFFFFFF);
  static const Color scaffoldBackgroundColor = Color(0xfff4f3f3);
  static const Color white2 = Color(0xffF1F3F5);

  static const Color blue1 = Color(0xff114185);
  static const Color blue2 = Color(0xff0B2B59);
  static const Color blue3 = Color(0xff396199);
  static const Color blue4 = Color(0xff092143);
  static const Color blue5 = Color(0xff030D1B);
  static const Color primaryBlue41 = Color(0xff06162C);
  static const Color primaryBlues11 = Color(0xff0E366F);

  static const Color primaryOrange = Color(0xffFE6309);
  static const Color orange1 = Color(0xffFFE0CE);

  static const Color red1 = Color(0xFFFF0000);
  static const Color red2 = Color(0xFFC82A2A);

  static const Color green1 = Color(0xFF65F162);

  static const Color yellow1 = Color(0xFFFBEE7B);

  static const LinearGradient primaryBackgroundGradient =
      LinearGradient(colors: <Color>[blue1, blue2]);

  static Color getShade(Color color, {bool darker = false, double value = .1}) {
    assert(value >= 0 && value <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness(
        (darker ? (hsl.lightness - value) : (hsl.lightness + value))
            .clamp(0.0, 1.0));

    return hslDark.toColor();
  }
}
