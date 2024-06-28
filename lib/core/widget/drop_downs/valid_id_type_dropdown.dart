import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ValidIdCardTypeSelectDropdown<T> extends StatefulWidget {
  final List<T> items;
  final T? value;
  final String hint;
  final Color? fillColor;
  final ValueChanged<T> onChanged;
  final FormFieldValidator<T> validator;
  final Function? onTap;
  final String Function(T? value)? displayText;

  const ValidIdCardTypeSelectDropdown({
    super.key,
    required this.items,
    this.onTap,
    this.value,
    this.fillColor = TamayozLoanColors.white,
    required this.hint,
    required this.onChanged,
    required this.validator,
    this.displayText,
  });

  @override
  _ValidIdCardTypeSelectDropdownState<T> createState() => _ValidIdCardTypeSelectDropdownState<T>();
}

class _ValidIdCardTypeSelectDropdownState<T> extends State<ValidIdCardTypeSelectDropdown<T>> {
  late T? _value; //T? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value; // widget.value ?? widget.items.first;
  } 

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      onTap: () {
        widget.onTap?.call();
        setState(() {});
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.fillColor,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 45.w,
          vertical: 32.h,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:
              const BorderSide(width: 1, color: TamayozLoanColors.grey1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:
              const BorderSide(width: 1, color: TamayozLoanColors.grey1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(width: 1, color: TamayozLoanColors.red1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:
              const BorderSide(width: 1, color: TamayozLoanColors.grey1),
        ),
        hintText: widget.hint,
        hintStyle: const TextStyle(
          color: TamayozLoanColors.grey2,
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
      ),
      iconSize: 40,
      icon: WebsafeSvg.asset(
        "context.icons.frame44",
        height: 47.h,
        width: 27.w,
      ),
      value: _value,
      items: widget.items.map(
        (T item) {
          return DropdownMenuItem<T>(
            value: item,
            child: Text(
              widget.displayText?.call(item) ?? item.toString(),
              style: const TextStyle(
                color: TamayozLoanColors.black1,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          );
        },
      ).toList(),
      onChanged: (T? value) {
        setState(() {
          _value = value;
        });
        widget.onChanged(value as T);
      },
      validator: widget.validator,
    );
  }
}
