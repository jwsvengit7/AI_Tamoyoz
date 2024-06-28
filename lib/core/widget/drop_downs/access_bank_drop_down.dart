import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:websafe_svg/websafe_svg.dart';

// class AccessBankDropdown<T> extends StatelessWidget {
//   final List<T> items;
//   final T? value;
//   final String hint;
//   final Color? fillColor;
//   final ValueChanged<T> onChanged;
//   final FormFieldValidator<T> validator;
//   final Function? onTap;
//   final String Function(T? value)? displayText;

//   const AccessBankDropdown({
//     super.key,
//     required this.items,
//     this.onTap,
//     this.value,
//     this.fillColor = TamayozLoanColors.white,
//     required this.hint,
//     required this.onChanged,
//     required this.validator,
//     this.displayText,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField<T>(
//       // onTap: () {
//       //   onTap?.call();
//       // },
//       decoration: InputDecoration(
//         filled: true,
//         fillColor: fillColor,
//         contentPadding: EdgeInsets.symmetric(
//           horizontal: 45.w,
//           vertical: 32.h,
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide:
//               const BorderSide(width: 1, color: TamayozLoanColors.grey1),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide:
//               const BorderSide(width: 1, color: TamayozLoanColors.grey1),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: const BorderSide(width: 1, color: TamayozLoanColors.red1),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide:
//               const BorderSide(width: 1, color: TamayozLoanColors.grey1),
//         ),
//         hintText: hint,
//         hintStyle: const TextStyle(
//           color: TamayozLoanColors.grey2,
//           fontWeight: FontWeight.w600,
//           fontSize: 24,
//         ),
//       ),
//       iconSize: 40,
//       icon: WebsafeSvg.asset(
//         context.icons.frame44,
//         height: 47.h,
//         width: 27.w,
//       ),
//       // value: _value,
//       items: items.map(
//         (T item) {
//           return DropdownMenuItem<T>(
//             value: item,
//             child: Text(
//               displayText?.call(item) ?? item.toString(),
//               style: const TextStyle(
//                 color: TamayozLoanColors.black1,
//                 fontWeight: FontWeight.w600,
//                 fontSize: 24,
//               ),
//             ),
//           );
//         },
//       ).toList(),
//       onChanged: (T? value) {
//         onChanged(value as T);
//       },
//       validator: validator,
//     );
//   }
// }

class AccessBankDropdown<T> extends StatelessWidget {
  final List<T> items;
  final T? value;
  // final void Function(T) onChanged;
  final ValueChanged<T> onChanged;
  final String hint;
  final Color? fillColor;
  final FormFieldValidator<T> validator;
  final String Function(T? value)? displayText;
  final Widget Function(T value)? buildDropdownItem;

  const AccessBankDropdown({
    super.key,
    required this.items,
    this.value,
    required this.onChanged,
    this.fillColor = TamayozLoanColors.white,
    required this.hint,
    required this.validator,
    this.displayText,
    this.buildDropdownItem,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      dropdownColor: TamayozLoanColors.white,
      selectedItemBuilder: (context) {
        return items.map((item) {
          return Text(
            displayText?.call(item) ?? item.toString(),
            style: const TextStyle(
              color: TamayozLoanColors.black1,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          );
        }).toList();
      },
      items: items.map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: buildDropdownItem?.call(item) ??
              Text(
                displayText?.call(item) ?? item.toString(),
                style: const TextStyle(
                  color: TamayozLoanColors.black1,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
        );
      }).toList(),
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
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
        hintText: hint,
        hintStyle: const TextStyle(
          color: TamayozLoanColors.grey2,
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
      ),
      iconSize: 40,
      icon: WebsafeSvg.asset(
        "",
        height: 47.h,
        width: 27.w,
      ),
      onChanged: (value) {
        if (value != null) {
          onChanged(value);
        }
      },
      validator: validator,
    );
  }
}
