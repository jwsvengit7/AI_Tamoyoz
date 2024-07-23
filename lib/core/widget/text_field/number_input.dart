import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:flutter/material.dart';

class PhoneNumberInput extends StatelessWidget {
  final String type;
  final TextEditingController controller;
  final bool? textWidthStyle;
  final String? style;

  const PhoneNumberInput({
    Key? key,
    required this.type,
    required this.controller,
    this.textWidthStyle,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: type,
        suffixIcon: (textWidthStyle ?? false) && (style != null) ? Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                style!,
                style: TextStyle(
                  color: Colors.lightBlue,
                ),
              ),
              SizedBox(width: 8), // Space between the country code and the input field
              VerticalDivider(
                width: 1,
                color: Colors.lightBlue,
              ),
            ],
          ),
        ) : null,
        prefixIcon: !(textWidthStyle ?? false) ? Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                ' +965',
                style: TextStyle(
                  color: Colors.lightBlue,
                ),
              ),
              SizedBox(width: 8), // Space between the country code and the input field
              VerticalDivider(
                width: 1,
                color: Colors.lightBlue,
              ),
            ],
          ),
        ) : null,
      ),
    );
  }
}
