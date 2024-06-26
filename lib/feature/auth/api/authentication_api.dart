import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ai_tamayoz/feature/auth/app/authenication_facade.dart';
import 'package:ai_tamayoz/feature/auth/domain/entities/account_sumary.dart';
import 'package:ai_tamayoz/core/constants/exception.dart';

import '../../../core/injection.dart';
import '../domain/entities/customer_details.dart';
class AuthenticationApi {
  final AuthenticationFacade _authenticationFacade;
  static AuthenticationApi get instance => sl<AuthenticationApi>();

  AuthenticationApi({
    required AuthenticationFacade authenticationFacade,
  }) : _authenticationFacade = authenticationFacade;

  final ValueNotifier<CustomerAccountInfo> _customerAccountInfoNotifier =
      ValueNotifier(CustomerAccountInfo.empty());




  String _authToken = "";



  CustomerAccountInfo get _customerAccountInfo =>
      _customerAccountInfoNotifier.value;

  AccountSummaryDetails? get selectedAccountSummary {
    final index = _customerAccountInfo.accountSummaryDetails.indexWhere(
        (element) =>
            element.accountNumber == _customerAccountInfo.accountNumber);

    if (index == -1) {
      return null;
    }

    return _customerAccountInfo.accountSummaryDetails[index];
  }

  CustomerDetails? getCustomerDetailsForAccountNumber(String accountNumber) {
    final index = _customerAccountInfo.accountSummaryDetails
        .indexWhere((element) => element.accountNumber == accountNumber);

    if (index == -1) {
      return null;
    }

    return _customerAccountInfo.customerDetails[index];
  }

  List<AccountSummaryDetails> get accountSummaryDetails =>
      _customerAccountInfo.accountSummaryDetails;



  String get firstName {
    final name = selectedAccountSummary?.accountName.split(" ").first;
    return name ?? "";
  }

  String get getEmailAddress {
    return _customerAccountInfoNotifier
            .value.selectedCustomerDetails?.emailAddress ??
        "";
  }



  String get getAccountNumber =>
      _customerAccountInfoNotifier
          .value.selectedCustomerDetails?.accountNumber ??
      "";
  // TODO: implement or remove
  String get accessMoreUserId => "";







  // void signOut(BuildContext context) {
  //   context.read<AuthenticationBloc>().add(const AuthenticationEvent.signOut());
  // }

  void handleSessionEnd() {
    _authToken = "";
    _customerAccountInfoNotifier.value = CustomerAccountInfo.empty();

  }

  AsyncEitherFailureOr<String> sendOTP({
    required String referenceNumber,
    required String accountNumber,
    required String channelCode,
  }) async {
    return _authenticationFacade.generateOtp(
        accountNumber: accountNumber,
        channelCode: channelCode,
        referenceNumber: referenceNumber);
  }

 

  num getCurrentBalance(String accountNumber) {
    final index = _customerAccountInfo.accountSummaryDetails
        .indexWhere((element) => element.accountNumber == accountNumber);

    if (index == -1) {
      return 0;
    }

    return _customerAccountInfo.accountSummaryDetails[index].availableBalance;
  }

 

  CustomerDetails? getCustomerAccountDetails({required String accountNumber}) {
    final index = _customerAccountInfo.customerDetails.indexWhere((
        element) => element.accountNumber == accountNumber);
    if (index == -1) return null;
    return _customerAccountInfo.customerDetails[index];
  }



  void updateEmail(String email) {
    if (_customerAccountInfoNotifier.value.selectedCustomerDetails == null) {
      return;
    }
    _customerAccountInfoNotifier.value =
        _customerAccountInfoNotifier.value.copyWith(
      selectedCustomerDetails:
          _customerAccountInfoNotifier.value.selectedCustomerDetails!.copyWith(
        emailAddress: email,
      ),
    );
  }

  void updateMobileNumber(String phoneNumber) {
    if (_customerAccountInfoNotifier.value.selectedCustomerDetails == null) {
      return;
    }
    _customerAccountInfoNotifier.value =
        _customerAccountInfoNotifier.value.copyWith(
      selectedCustomerDetails:
          _customerAccountInfoNotifier.value.selectedCustomerDetails!.copyWith(
        mobileNumber: phoneNumber,
      ),
    );
  }
}

class CustomerAccountInfo extends Equatable {
  final String accountNumber;
  final List<AccountSummaryDetails> accountSummaryDetails;
  final List<CustomerDetails> customerDetails;
  final CustomerDetails? selectedCustomerDetails;

  const CustomerAccountInfo({
    required this.accountNumber,
    required this.accountSummaryDetails,
    required this.customerDetails,
    this.selectedCustomerDetails,
  });

  @override
  List<Object?> get props => [
        accountNumber,
        accountSummaryDetails,
        customerDetails,
        selectedCustomerDetails,
      ];

  factory CustomerAccountInfo.empty() {
    return const CustomerAccountInfo(
      accountNumber: "",
      accountSummaryDetails: [],
      customerDetails: [],
    );
  }

  CustomerAccountInfo copyWith({
    String? accountNumber,
    List<AccountSummaryDetails>? accountSummaryDetails,
    List<CustomerDetails>? customerDetails,
    CustomerDetails? selectedCustomerDetails,
  }) {
    return CustomerAccountInfo(
      accountNumber: accountNumber ?? this.accountNumber,
      accountSummaryDetails:
          accountSummaryDetails ?? this.accountSummaryDetails,
      customerDetails: customerDetails ?? this.customerDetails,
      selectedCustomerDetails:
          selectedCustomerDetails ?? this.selectedCustomerDetails,
    );
  }
}
