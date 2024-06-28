import 'package:ai_tamayoz/core/widget/app_text_field/text_field.dart';
import 'package:ai_tamayoz/feature/auth/api/authentication_api.dart';
import 'package:ai_tamayoz/feature/auth/domain/entities/account_sumary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../validations/form_validations.dart';
import 'access_bank_drop_down.dart';

final selectedAccountDropdownSelector =
    StateProvider<AccountSummaryDetails?>((ref) => null);

typedef AccountSelectorFilter = bool Function(
  AccountSummaryDetails accountSummaryDetails,
);

class AccountDropdownSelector extends StatelessWidget {
  const AccountDropdownSelector({
    super.key,
    this.onSelected,
    this.hintText,
    this.pageTextManager,
    this.filter,
  });
  final ValueSetter<AccountSummaryDetails>? onSelected;
  final String? hintText;
  final PageTextManager? pageTextManager;
  final AccountSelectorFilter? filter;

  AuthenticationApi get _authenticationApi => AuthenticationApi.instance;
  @override
  Widget build(BuildContext context) {
    return AccessBankDropdown<AccountSummaryDetails>(
      hint: hintText ?? "Select Account",
      validator: (val) =>
          AuthFormValidations.validateRequiredField(val?.accountNumber),
      onChanged: (AccountSummaryDetails customerAccountDetails) {
        pageTextManager?.setSelectedAccount(customerAccountDetails);
        onSelected?.call(customerAccountDetails);
      },
      items: _getAccounts(),
      displayText: (item) =>
          "${item?.accountClassType} | ${item?.accountNumber}".trim(),
    );
  }

  List<AccountSummaryDetails> _getAccounts() {
    final accounts = _authenticationApi.accountSummaryDetails
        .where((element) => element.currencyCode.toLowerCase() == 'ngn')
        .toList();

    if (filter != null) {
      return accounts.where(filter!).toList();
    }

    return accounts;
  }
}
