import 'package:flutter/material.dart';

import '../../../../../../core/colors/color.dart';

class TamayozSearchTextField extends StatefulWidget {
  const TamayozSearchTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.hintText,
    this.readonly,
    this.value,
    required this.type,
  });

  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? hintText;
  final bool? readonly;
  final String? value;
  final String type;

  @override
  _TamayozSearchTextFieldState createState() => _TamayozSearchTextFieldState();
}

class _TamayozSearchTextFieldState extends State<TamayozSearchTextField> {
  bool _isObscured = true;

  @override
  void initState() {
    super.initState();
    if (widget.type == 'number') {
      widget.controller.text = '+965 ';
      widget.controller.addListener(_handlePrefix);
    } else if (widget.value != null) {
      widget.controller.text = widget.value!;
    }
  }

  @override
  void dispose() {
    if (widget.type == 'number') {
      widget.controller.removeListener(_handlePrefix);
    }
    super.dispose();
  }

  void _handlePrefix() {
    if (widget.type == 'number' && !widget.controller.text.startsWith('+965 ')) {
      widget.controller.text = '+965 ';
      widget.controller.selection = TextSelection.fromPosition(
        TextPosition(offset: widget.controller.text.length),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.type == 'number' ? TextInputType.phone : TextInputType.text,
      obscureText: widget.type == 'password' ? _isObscured : false,
      autofocus: false,
      controller: widget.controller,
      readOnly: widget.readonly ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.readonly ?? false ? Colors.grey.shade300 : TamayozLoanColors.white,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: TamayozLoanColors.grey8, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        suffixIcon: widget.type == 'password'
            ? IconButton(
                icon: Icon(_isObscured ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
            : null,
      ),
      onChanged: widget.onChanged,
    );
  }
}
