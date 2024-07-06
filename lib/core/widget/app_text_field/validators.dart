
import 'package:ai_tamayoz/core/widget/app_text_field/string_conditions.dart';
import 'package:ai_tamayoz/core/widget/app_text_field/text_field.dart';
import 'package:flutter/material.dart';
import 'package:string_extensions/string_extensions.dart';
import 'package:validators2/sanitizers.dart';
import 'package:validators2/validators2.dart';

class Validators {
  static FormFieldValidator email(
      [String errorText = 'This field must be an email']) {
    return (value) {
      if (!isEmail(trim(value))) return errorText;
      return null;
    };
  }

  static FormFieldValidator notRequired() {
    return (value) {
      return null;
    };
  }

  static FormFieldValidator required(
      {String errorText = 'Required', String? name}) {
    return (value) {
      if (trim(value).isEmpty) return name != null ? 'Enter $name' : errorText;
      return null;
    };
  }

  static FormFieldValidator isValidUserId(
      {String errorText = 'Enter a valid email or phoneNumber', String? name}) {
    return (value) {
      if (!isEmail(trim(value)) && !isNumeric(trim(value))) return errorText;
      return null;
    };
  }

  static FormFieldValidator min(int min, String name) {
    return (value) {
      if (value.toString().length < min) {
        return 'must be at least $min characters';
      }
      return null;
    };
  }

  static FormFieldValidator password({String? errorText}) {
    return (value) {
      if (value.toString().length < 8) {
        return errorText ?? 'must be at least 8 characters';
      }
      return null;
    };
  }

  static FormFieldValidator confirmPassword(
    PageTextManager page, {
    String? errorText,
  }) {
    return (value) {
      if (page.field('password').text != value) {
        return errorText ?? "Doesn't match";
      }
      return null;
    };
  }

  static FormFieldValidator pin([int length = 6]) {
    return (value) {
      if (value.toString().isEmpty) {
        return 'Please enter your pin';
      }

      if (!isNumeric(value)) {
        return 'Pin must be a number';
      }
      if (value.toString().length < length) {
        return 'Pin must be $length digits';
      }

      return null;
    };
  }

  static FormFieldValidator confirmPin(PageTextManager page, String pinKey) {
    return (value) {
      if (page.field(pinKey).text != value) {
        return "Pin mismatch";
      }
      return null;
    };
  }

  static FormFieldValidator confirmTransactionPin(String pin) {
    return (value) {
      if (value!.isEmpty) {
        return 'Please enter your pin';
      }
      if (value.length < 4) {
        return 'Pin must be 4 digits';
      }
      if (value != pin) {
        return 'Pin does not match';
      }
      return null;
    };
  }

  static FormFieldValidator phone([String errorText = 'Invalid phone number']) {
    return (value) {
      final trimmedValue = value.toString().trim().removeWhiteSpace;
      print("trimmedValue: $trimmedValue");
      if (trimmedValue.length != 11) return "Length must be 11";
      if (!isNumeric(trimmedValue)) return "Must be a number";
      if (!trimmedValue.toString().startsWith('0')) return "Must start with 0";
      return null;
    };
  }

  static FormFieldValidator bvn([String errorText = 'Invalid bvn number']) {
    return (value) {
      if (value.toString().replaceAll(' ', '').length != 11) return errorText;
      return null;
    };
  }

  static FormFieldValidator accountNumber(int min, String name) {
    return (value) {
      if (value.toString().length < min) {
        return 'must be at least $min characters';
      }
      return null;
    };
  }

  static FormFieldValidator number({String errorText = 'Invalid'}) {
    return (value) {
      if (!isInt(value)) return errorText;
      return null;
    };
  }

  static FormFieldValidator name({String errorText = 'Invalid name'}) {
    return (value) {
      final regEx = RegExp(r'^[A-Z][a-zA-Z]*(-[A-Z][a-zA-Z]*)?$');
      if (!regEx.hasMatch(value)) return errorText;
      return null;
    };
  }

  static FormFieldValidator withCustomConditions(
      List<StringCondition> conditions) {
    return (value) {
      for (final condition in conditions) {
        if (!condition.check(value)) {
          return condition.message;
        }
      }
      return null;
    };
  }

  static FormFieldValidator userName() {
    return (value) {
      if (value.toString().length < 3) {
        return 'must be at least 3 characters';
      }

      // regEx for username
      final regEx = RegExp(r'^[a-zA-Z0-9_]*$');
      if (!regEx.hasMatch(value)) return 'Invalid username';

      return null;
    };
  }

  static FormFieldValidator minimumBalance({
    required num Function() balance,
    required num Function() minimumBalance,
  }) {
    return (value) {
      if (value != null) {
        double amount = double.tryParse(value.replaceAll(",", "")) ?? 0.0;
        if (amount < minimumBalance()) {
          return "Amount should not be less than $minimumBalance";
        }
        if (amount > balance()) return "Insufficient balance";
      } else {
        return 'Please enter an amount';
      }
      return null;
    };
  }

  static FormFieldValidator maximumAmount(
      {required num Function() maximumAmount}) {
    return (value) {
      if (value != null) {
        double amount = double.tryParse(value.replaceAll(",", "")) ?? 0.0;
        if (amount > maximumAmount()) {
          return "Amount cannot be greater than ${maximumAmount()})";
        }
      } else {
        return 'Please enter an amount';
      }
      return null;
    };
  }

  static FormFieldValidator hasSufficientFunds(
      {required num Function() balance}) {
    return (value) {
      if (value != null) {
        double amount = double.tryParse(value.replaceAll(",", "")) ?? 0.0;
        if (amount > balance()) return "Insufficient balance";
      }
      return null;
    };
  }

  static FormFieldValidator isWithinRange({
    required int minimum,
    int? maximum,
  }) {
    return (value) {
      if (value != null) {
        double amount = double.tryParse(value.replaceAll(",", "")) ?? 0.0;
        if (amount < minimum) return "Amount should be at least $minimum";
        if (maximum != null && amount > maximum) {
          return "Amount cannot be greater than $maximum";
        }
      }
      return null;
    };
  }
}
