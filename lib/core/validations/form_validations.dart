import 'dart:io';

import 'package:flutter/material.dart';



class AuthFormValidations {
  const AuthFormValidations._();

  static String? validateRequiredField(String? value) {
    if (value?.isEmpty ?? true) return 'Field cannot be empty.';
    return null;
  }

  static String? validateCharacters(String? value) {
    // Regular expression to allow only full stop and apostrophe
    final RegExp allowedCharacters = RegExp(r"^[a-zA-Z0-9\s\'.]*$");
    if (allowedCharacters.hasMatch(value ?? "")) {
      return null;
    } else {
      return "Special characters not allowed";
    }
  }

  static String? validateValueLength(String? value, int length) {
    if (value?.isEmpty ?? true) return 'Field cannot be empty.';
    if (value?.length != length) return 'Invalid length';
    return null;
  }

  static String? validateEmailField(String? value) {
    if (value?.isEmpty ?? true) return 'Field cannot be empty.';
    bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(value ?? "");
    if (!emailValid) {
      return 'Enter a valid email address.';
    }
    return null;
  }

  static String? validateMinMax(String? value, int min, [int? max]) {
    if ((value?.length ?? 0) < min) return 'Character too short.';
    if (max != null && (value?.length ?? 0) > max) return 'Character too long.';
    return null;
  }

  static String? validatePhoneNumber(String? value, int min, [int? max]) {
    if ((value?.length ?? 0) < min) return 'Phone number too short.';
    if (max != null && (value?.length ?? 0) > max) {
      return 'Phone number too long.';
    }
    return null;
  }

  static String? validateAmount(String? value, int min, [int? max]) {
    if (value != null) {
      double amount = double.tryParse(value.replaceAll(",", "")) ?? 0.0;

      if (amount < min) return "Amount should be $min or more than $min.";
      if (max != null && (amount > max)) {
        return "Amount cannot be greater than $max";
      }
    } else {
      return 'Character too short.';
    }
    return null;
  }

  static String? validateTransactionAmount(String? value, int min, [int? max]) {
    if (value != null) {
      double amount = double.tryParse(value.replaceAll(",", "")) ?? 0.0;
      if (amount < min) {
        return "Transaction amount should be $min or more than $min.";
      }
      if (max != null && (amount > max)) {
        return "Transaction amount exceeded limit of ";
      }
    } else {
      return 'Character too short.';
    }
    return null;
  }

  static String? validateAmountWithBalance(String? value, num balance, int min,
      [int? max]) {
    print(balance);
    if (value != null) {
      double amount = double.tryParse(value.replaceAll(",", "")) ?? 0.0;
      if (amount < min) return "Amount should be $min or more than $min.";
      if (max != null && (amount > max)) {
        return "Amount cannot be greater than $max";
      }
      if (amount > balance) return "Insufficient balance";
    } else {
      return 'Character too short.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    RegExp regExp = RegExp(pattern);
    if ((value?.length ?? 0) < 6) return 'Minimum of 6 characters for password';
    if (!regExp.hasMatch(value!)) {
      return 'Password should contain at least 1 uppercase, 1 digit & 1 special character';
    }
    return null;
  }

  static String? validatePin(String? value) {
    if ((value?.length ?? 0) != 6) {
      return 'Transaction pin should be 6 characters';
    }

    return null;
  }

  static String? validateRePassword(String? value, String previousPassword) {
    if (value?.isEmpty ?? true) return 'Field cannot be empty.';
    if (value != previousPassword) return 'Password does not match.';
    return null;
  }

  static String? validateImageFile(File? file) {
    debugPrint("test");
    debugPrint(file.toString());
    debugPrint("====");
    if (file == null) return 'Please select an image file.';

    final validExtensions = ['.jpg', '.jpeg', '.png'];
    final extension = file.path.split('.').last.toLowerCase();
    if (!validExtensions.contains(extension)) {
      return 'Invalid file format. Please select a JPG, JPEG, or PNG file.';
    }
    return null;
  }

  static String? validateDate(DateTime? date) {
    if (date == null) return 'Please select a date.';
    return null;
  }
}
