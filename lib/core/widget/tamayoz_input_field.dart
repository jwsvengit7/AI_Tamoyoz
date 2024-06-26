import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TamayozInputWidget extends StatefulWidget {
  final TextEditingController? controller;
  final bool obscureText;
  final bool passwordField;
  final bool enabled;
  final String? hintText;
  final String? prefix;
  final FocusNode? focusNode;
  final TextInputType? keyBoardType;
  final bool roundBorder;
  final bool contentPadding;
  final bool invisibleBorder;
  final String? title;
  final TextStyle? titleStyle;
  final TextStyle? style;
  final Function(String)? onChanged;
  final bool? readOnly;
  final bool? autoCorrect;
  final List<TextInputFormatter>? textInputFormatter;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onUnfocus;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String?>? validateFunction;
  final ValueChanged<String?>? onFieldSubmitted;
  final String countryCode;
  final int? maxLength, maxLines, minLines;

  final Color borderColor,
      disabledBorderColor,
      errorBorderColor,
      filledColor,
      disabledFilledColor,
      fillColor,
      hintTextColor,
      textColor;
  final double? borderRadius;
  const TamayozInputWidget({
    super.key,
    this.focusNode,
    this.autoCorrect = false,
    this.minLines = 1,
    this.textInputAction,
    this.maxLength,
    this.onFieldSubmitted,
    this.maxLines,
    this.suffixIcon,
    this.onChanged,
    this.contentPadding = false,
    this.passwordField = false,
    this.style,
    this.countryCode = 'NG',
    this.prefixIcon,
    this.onUnfocus,
    this.titleStyle,
    this.textInputFormatter,
    this.onTap,
    this.readOnly = false,
    this.roundBorder = false,
    this.enabled = true,
    this.prefix,
    this.invisibleBorder = false,
    this.hintText,
    this.title,
    this.keyBoardType,
    this.controller,
    this.borderColor = TamayozLoanColors.grey1,
    this.disabledBorderColor = TamayozLoanColors.grey1,
    this.filledColor = Colors.transparent,
    this.errorBorderColor = TamayozLoanColors.red1,
    this.disabledFilledColor = Colors.transparent,
    this.fillColor = TamayozLoanColors.white,
    this.hintTextColor = TamayozLoanColors.grey4,
    this.textColor = TamayozLoanColors.black1,
    this.borderRadius,
    this.validateFunction,
    this.obscureText = false,
  });

  @override
  State<TamayozInputWidget> createState() => _TamayozInputWidgetState();
}

class _TamayozInputWidgetState extends State<TamayozInputWidget> {
  late bool _obscure;
  @override
  void initState() {
    _obscure = widget.passwordField;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onFieldSubmitted,
      style: TextStyle(
        color: widget.textColor,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      autocorrect: widget.autoCorrect ?? false,
      textAlignVertical: TextAlignVertical.center,
      controller: widget.controller,
      keyboardType: widget.keyBoardType,
      obscureText: _obscure,
      focusNode: widget.focusNode,
      inputFormatters: widget.textInputFormatter,
      readOnly: widget.readOnly!,
      validator: widget.validateFunction,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      enabled: widget.enabled,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        fillColor: widget.fillColor,
        filled: true,
        prefixIcon: widget.prefixIcon,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(
          color: widget.hintTextColor,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        suffixIcon: !widget.passwordField
            ? widget.suffixIcon
            : IconButton(
                onPressed: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
                icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off),
              ),
        prefixText: widget.prefix,
        prefixStyle: const TextStyle(
          color: TamayozLoanColors.grey2,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        counter: const Offstage(),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30.w,
          vertical: 20.h,
        ),
        hintText: widget.hintText,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor, width: 1),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius ?? 16))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor, width: 1),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius ?? 16))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.disabledBorderColor, width: 1),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius ?? 16))),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.errorBorderColor, width: 1),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius ?? 16))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.errorBorderColor, width: 1),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius ?? 16))),
      ),
    );
  }
}
