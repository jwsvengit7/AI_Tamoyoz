import 'package:flutter/material.dart';
import 'package:ai_tamayoz/core/colors/color.dart';

class TamayozLoanTheme {
  static ThemeData getLightThemeData(BuildContext context) {
    return _lightThemeData(context);
  }

  static ThemeData getDarkThemeData(BuildContext context) {
    return _darkThemeData(context);
  }

  static ThemeData _lightThemeData(BuildContext context) {
    return ThemeData(
      dropdownMenuTheme: Theme.of(context).dropdownMenuTheme.copyWith(
            menuStyle: Theme.of(context).dropdownMenuTheme.menuStyle?.copyWith(
                  elevation: MaterialStatePropertyAll(0.0),
                  backgroundColor: const MaterialStatePropertyAll(
                      TamayozLoanColors.scaffoldBackgroundColor),
                ),
          ),
      dialogBackgroundColor: TamayozLoanColors.scaffoldBackgroundColor,
      appBarTheme: Theme.of(context).appBarTheme.copyWith(elevation: 0.0),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      // fontFamily: "Effra_Trial",
      scaffoldBackgroundColor: TamayozLoanColors.scaffoldBackgroundColor,
      platform: TargetPlatform.iOS,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
    );
  }

  static ThemeData _darkThemeData(BuildContext context) {
    return ThemeData(
      dropdownMenuTheme: Theme.of(context).dropdownMenuTheme.copyWith(
            menuStyle: Theme.of(context).dropdownMenuTheme.menuStyle?.copyWith(
                  elevation: MaterialStatePropertyAll(0.0),
                  backgroundColor: const MaterialStatePropertyAll(
                      TamayozLoanColors.scaffoldBackgroundColor),
                ),
          ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
      ),
      dialogBackgroundColor: TamayozLoanColors.scaffoldBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      scaffoldBackgroundColor: TamayozLoanColors.scaffoldBackgroundColor,
      // fontFamily: "Effra_Trial",
      platform: TargetPlatform.iOS,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
    );
  }
}
