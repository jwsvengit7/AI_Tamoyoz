import 'package:flutter/material.dart';

import '../../../../../../core/colors/color.dart';

class TamayozSearchTextField extends StatelessWidget {
  const TamayozSearchTextField({
    super.key,
    required this.searchQueryController,
    this.onChanged,
    this.hintText,
  });

  final TextEditingController searchQueryController;
  final Function(String)? onChanged;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      controller: searchQueryController,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: TamayozLoanColors.grey2,
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
        border: InputBorder.none, // Remove the border
      ),
      onChanged: onChanged,
    );
  }
}
