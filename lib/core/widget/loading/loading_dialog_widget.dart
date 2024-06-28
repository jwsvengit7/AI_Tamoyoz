import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:websafe_svg/websafe_svg.dart';

class LoadingDialogWidget extends StatefulWidget {
  final Color? bgColor;
  const LoadingDialogWidget({
    super.key,
    this.message = "",
    this.bgColor,
  });

  final String message;

  @override
  State<LoadingDialogWidget> createState() => _LoadingDialogWidgetState();
}

class _LoadingDialogWidgetState extends State<LoadingDialogWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      lowerBound: 0.5,
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // debugPrint(_animation.value.toString());
    return Container(
      color: widget.bgColor ?? TamayozLoanColors.black1.withOpacity(0.4),
      child: AlertDialog(
        backgroundColor: TamayozLoanColors.white,
        elevation: 0.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        content: SizedBox(
          height: 250.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ScaleTransition(
                scale: _controller,
                alignment: Alignment.center,
                child: Image.asset(
                    Assets.images.logo.path,
                ),
              ),
              Visibility(
                visible: widget.message.isNotEmpty,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      widget.message,
                      style: TextStyle(
                        color: TamayozLoanColors.black1,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
