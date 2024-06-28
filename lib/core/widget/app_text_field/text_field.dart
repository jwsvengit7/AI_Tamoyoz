import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/feature/auth/domain/entities/account_sumary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


part 'page_manager.dart';
part 'text_controller.dart';
part 'text_error_widget.dart';
part 'text_field_types.dart';
part 'text_input_field.dart';

class AppTextField extends StatelessWidget {
  /// the text field label text
  final String labelText;

  /// if this field is disabled
  final bool disabled;

  /// if this field is readonly
  final bool readonly;

  final bool autofocus;

  /// the [TextController] that controls the text field
  final TextController textController;

  /// Hint text
  final String? hint;

  /// the function that is called when the text field's text changes
  final Function(String?)? onChanged;

  /// the text input action
  final TextInputAction? textInputAction;

  /// the function that is called when the text field's text is submitted
  ///
  /// also defaults to the [onEditingComplete] function
  final VoidCallback? onSubmitted;

  /// the function that is called when the text field is tapped, if this is provided,
  ///
  /// text will not trigger keyboard and ignore other HitEvents
  final VoidCallback? onTap;

  /// The Text field type, [TextFieldType].
  ///
  /// e.g TextFieldType.normal, TextFieldType.email, TextFieldType.phone etc
  final TextFieldType type;

  /// the suffix widget, You shouldn't pass this ideally,
  ///
  /// pass a text field to get auto get the suffix
  ///
  /// Use if only you need a custom field that is not defined in the [TextFieldType],
  final Widget? suffix;

  final bool alignErrorLeft;

  /// input formatters
  final List<TextInputFormatter>? inputFormatters;

  /// The function to be called when the user taps a menu button.
  ///
  /// only works when [TextFieldType] is [TextFieldType.menu]
  /// Use this function to handle menu selection
  final ValueSetter<Offset>? handleMenuTap;

  final bool? showError, obscureText;
  final int maxLength;

  final Color borderColor,
      labelTextColor,
      disabledBorderColor,
      errorBorderColor,
      filledColor,
      disabledFilledColor,
      fillColor,
      hintTextColor,
      textColor;

  const AppTextField({
    super.key,
    this.labelText = "",
    required this.textController,
    this.type = TextFieldType.normal,
    this.suffix,
    this.disabled = false,
    this.readonly = false,
    this.autofocus = false,
    this.hint,
    this.textInputAction,
    this.onSubmitted,
    this.onTap,
    this.alignErrorLeft = true,
    this.inputFormatters,
    this.onChanged,
    this.handleMenuTap,
    this.showError = true,
    this.maxLength = 100,
    this.labelTextColor = TamayozLoanColors.black1,
    this.borderColor = TamayozLoanColors.grey1,
    this.disabledBorderColor = TamayozLoanColors.grey1,
    this.filledColor = Colors.transparent,
    this.errorBorderColor = TamayozLoanColors.red1,
    this.disabledFilledColor = Colors.transparent,
    this.fillColor = TamayozLoanColors.white,
    this.hintTextColor = TamayozLoanColors.grey4,
    this.textColor = TamayozLoanColors.black1,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Visibility(
          visible: labelText.isNotEmpty,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  labelText,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 29,
                    color: labelTextColor,
                  ),
                ),
                SizedBox(height:10.h),
              ]),
        ),
        _buildTextField(),
        Visibility(
          visible: showError ?? true,
          replacement: const SizedBox.shrink(),
          child: _TextErrorField(
            errorNotifier: textController.errorMessageNotifier,
            left: alignErrorLeft,
          ),
        ),
      ],
    );
  }

  Widget _buildTextField() {
    TextInputAction? action = textInputAction;
    if (action == null && onSubmitted == null) {
      action = TextInputAction.next;
    }
    final widget = TextInputField(
      textController: textController,
      disabled: disabled,
      autofocus: autofocus,
      readonly: readonly,
      labelText: labelText,
      hintStyle: null,
      textInputAction: action,
      onEditingComplete: onSubmitted,
      onChanged: onChanged,
      type: type,
      suffix: suffix,
      inputFormatters: inputFormatters,
      handleMenuTap: handleMenuTap,
      hintText: hint,
      maxLength: maxLength,
      fillColor: fillColor,
      hintTextColor: hintTextColor,
      textColor: textColor,
      borderColor: borderColor,
      disabledBorderColor: disabledBorderColor,
      filledColor: filledColor,
      errorBorderColor: errorBorderColor,
      obscureText: obscureText,
    );

    if (onTap == null) return widget;

    return InkWell(
      onTap: onTap,
      child: IgnorePointer(child: widget),
    );
  }
}
