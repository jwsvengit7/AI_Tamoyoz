import 'dart:io';

import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class ImageFileWidget extends StatefulWidget {
  
  final String hintText;
  final Function(String) onChanged;
  final TextStyle? titleStyle;
  final TextStyle? style;
 
 final Color borderColor,
      disabledBorderColor,
      errorBorderColor,
      filledColor,
      disabledFilledColor,
      fillColor,
      hintTextColor,
      textColor;

  const ImageFileWidget({
    super.key,
    required this.hintText,
    required this.onChanged,
    this.style,
    this.titleStyle,
    this.borderColor = TamayozLoanColors.grey1,
    this.disabledBorderColor = TamayozLoanColors.grey1,
    this.filledColor = Colors.transparent,
    this.errorBorderColor = TamayozLoanColors.red1,
    this.disabledFilledColor = Colors.transparent,
    this.fillColor = TamayozLoanColors.white,
    this.hintTextColor = TamayozLoanColors.grey4,
    this.textColor = TamayozLoanColors.black1,
    
  });


  @override
  _ImageFileWidgetState createState() => _ImageFileWidgetState();
}

class _ImageFileWidgetState extends State<ImageFileWidget> {
  final ImagePicker _picker = ImagePicker();
  File? _file;

  Future<void> _pickFile() async {
    if (_file != null) {
      _showDeleteConfirmationDialog();
    } else {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      setState(() {
        _file = pickedFile != null ? File(pickedFile.path) : null;
      });
      if (_file != null) {
        widget.onChanged(_file!.path);
      }
    }
  }

 void _showDeleteConfirmationDialog() {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      contentPadding: const EdgeInsets.symmetric(horizontal: 104, vertical: 40), // Adjust content padding
      title: const Text(
        "Delete File?",
        style: TextStyle(fontSize: 34),
      ),
      content: const Text(
        "Are you sure you want to delete this file?",
        style: TextStyle(fontSize: 38),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            "Cancel",
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _file = null;
            });
            Navigator.of(context).pop();
          },
          child: const Text(
            "Delete",
            style: TextStyle(fontSize: 28),
          ),
        ),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
    onTap: _pickFile,
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 45.w,
        vertical: 32.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white, // Set background color to white
        border: Border.all(color: Color.fromARGB(125, 158, 158, 158)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              _file != null ? _file!.path.split('/').last : widget.hintText,
              style: TextStyle(
                color: _file != null ? TamayozLoanColors.black2 : TamayozLoanColors.grey4,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ),
          if (_file != null)
               Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 224, 224, 224),
                ),
                child: IconButton(
                  icon: const Icon(Icons.delete),
                  color: Colors.red,
                  onPressed: _showDeleteConfirmationDialog,
                ),
              )
            else
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: TamayozLoanColors.blue3,
                ),
                child: IconButton(
                  icon: const Icon(Icons.file_upload),
                  color: Colors.white,
                  onPressed: _pickFile,
                ),
              ),

        ],
      ),
    ),
  );
}

}
