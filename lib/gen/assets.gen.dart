/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/a-z.png
  AssetGenImage get aZ => const AssetGenImage('assets/icons/a-z.png');

  /// File path: assets/icons/book7.png
  AssetGenImage get book7 => const AssetGenImage('assets/icons/book7.png');

  /// File path: assets/icons/car.png
  AssetGenImage get car => const AssetGenImage('assets/icons/car.png');

  /// File path: assets/icons/edit.png
  AssetGenImage get edit => const AssetGenImage('assets/icons/edit.png');

  /// File path: assets/icons/gaurd.png
  AssetGenImage get gaurd => const AssetGenImage('assets/icons/gaurd.png');

  /// File path: assets/icons/headphone.png
  AssetGenImage get headphone =>
      const AssetGenImage('assets/icons/headphone.png');

  /// File path: assets/icons/i.png
  AssetGenImage get i => const AssetGenImage('assets/icons/i.png');

  /// File path: assets/icons/lock.png
  AssetGenImage get lock => const AssetGenImage('assets/icons/lock.png');

  /// File path: assets/icons/love.png
  AssetGenImage get love => const AssetGenImage('assets/icons/love.png');

  /// File path: assets/icons/notify.png
  AssetGenImage get notify => const AssetGenImage('assets/icons/notify.png');

  /// File path: assets/icons/power.png
  AssetGenImage get power => const AssetGenImage('assets/icons/power.png');

  /// File path: assets/icons/user-pen (1) 4.png
  AssetGenImage get userPen14 =>
      const AssetGenImage('assets/icons/user-pen (1) 4.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        aZ,
        book7,
        car,
        edit,
        gaurd,
        headphone,
        i,
        lock,
        love,
        notify,
        power,
        userPen14
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/1200px-MINI_logo 1.png
  AssetGenImage get a1200pxMINILogo1 =>
      const AssetGenImage('assets/images/1200px-MINI_logo 1.png');

  /// File path: assets/images/Honda-logo 1.png
  AssetGenImage get hondaLogo1 =>
      const AssetGenImage('assets/images/Honda-logo 1.png');

  /// File path: assets/images/Jeep-Logo 1.png
  AssetGenImage get jeepLogo1 =>
      const AssetGenImage('assets/images/Jeep-Logo 1.png');

  /// File path: assets/images/Mercedes-Logo 1.png
  AssetGenImage get mercedesLogo1 =>
      const AssetGenImage('assets/images/Mercedes-Logo 1.png');

  /// File path: assets/images/Tesla_T_symbol 1.png
  AssetGenImage get teslaTSymbol1 =>
      const AssetGenImage('assets/images/Tesla_T_symbol 1.png');

  /// File path: assets/images/app.png
  AssetGenImage get app => const AssetGenImage('assets/images/app.png');

  /// File path: assets/images/ben-whitaker.png
  AssetGenImage get benWhitaker =>
      const AssetGenImage('assets/images/ben-whitaker.png');

  /// File path: assets/images/car1.png
  AssetGenImage get car1 => const AssetGenImage('assets/images/car1.png');

  /// File path: assets/images/car2.png
  AssetGenImage get car2 => const AssetGenImage('assets/images/car2.png');

  /// File path: assets/images/car3.png
  AssetGenImage get car3 => const AssetGenImage('assets/images/car3.png');

  /// File path: assets/images/cars.png
  AssetGenImage get cars => const AssetGenImage('assets/images/cars.png');

  /// File path: assets/images/check.png
  AssetGenImage get check => const AssetGenImage('assets/images/check.png');

  /// File path: assets/images/ic_launcher.png
  AssetGenImage get icLauncher =>
      const AssetGenImage('assets/images/ic_launcher.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/maincar.png
  AssetGenImage get maincar => const AssetGenImage('assets/images/maincar.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        a1200pxMINILogo1,
        hondaLogo1,
        jeepLogo1,
        mercedesLogo1,
        teslaTSymbol1,
        app,
        benWhitaker,
        car1,
        car2,
        car3,
        cars,
        check,
        icLauncher,
        logo,
        maincar
      ];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/Group1.svg
  String get group1 => 'assets/svgs/Group1.svg';

  /// File path: assets/svgs/Group2.svg
  String get group2 => 'assets/svgs/Group2.svg';

  /// File path: assets/svgs/Group3.svg
  String get group3 => 'assets/svgs/Group3.svg';

  /// List of all assets
  List<String> get values => [group1, group2, group3];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
