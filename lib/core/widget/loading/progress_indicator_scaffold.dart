import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_text_field.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'loading_dialog_widget.dart';

class ProgressIndicatorPage extends StatelessWidget {
  const ProgressIndicatorPage({
    super.key,
    required this.child,
    this.isLoading = false,
    this.message = "",
  });

  final bool isLoading;
  final Widget child;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Visibility(
          visible: isLoading,
          replacement: const SizedBox.shrink(),
          child: LoadingDialogWidget(
            message: message,
          ),
        )
      ],
    );
  }
}


