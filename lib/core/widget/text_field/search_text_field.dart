import 'package:flutter/material.dart';

import '../../../../../../core/colors/color.dart';

class TamayozSearchTextField extends StatelessWidget {
  const TamayozSearchTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.hintText,
  });

  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
  return TextField(
  autofocus: true,
  controller: controller,
  decoration: InputDecoration(
    filled: true,
    fillColor: TamayozLoanColors.white,
    hintText: hintText,
    hintStyle:const TextStyle(
     
      fontWeight: FontWeight.w600,
      fontSize: 17,
    ),
    contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(10.0), 
    ),
  ),


      onChanged: onChanged,
    );
  }
}
