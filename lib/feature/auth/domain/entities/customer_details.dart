import 'package:equatable/equatable.dart';

class CustomerDetails extends Equatable {
  final String accountNumber;
  final String customerNumber;
  final String accountName;
  final String netBalance;
  final String productName;
  final String emailAddress;
  final String mobileNumber;
  final String accountOfficer;
  final String currencyCode;
  final String branchCode;
  final String branchName;
  final String profitCenterMiscode;
  final String accountOfficerMiscode;
  final String teamMiscode;
  final num amountCreditMtd;
  final num amountDebitMtd;
  final String pndStatus;
  final String pncStatus;
  final String frozenStatus;
  final String blockStatus;
  final String dormantStatus;
  final String recordStatus;
  final String authStatus;

  const CustomerDetails({
    required this.accountNumber,
    required this.customerNumber,
    required this.accountName,
    required this.netBalance,
    required this.productName,
    required this.emailAddress,
    required this.mobileNumber,
    required this.accountOfficer,
    required this.currencyCode,
    required this.branchCode,
    required this.branchName,
    required this.profitCenterMiscode,
    required this.accountOfficerMiscode,
    required this.teamMiscode,
    required this.amountCreditMtd,
    required this.amountDebitMtd,
    required this.pndStatus,
    required this.pncStatus,
    required this.frozenStatus,
    required this.blockStatus,
    required this.dormantStatus,
    required this.recordStatus,
    required this.authStatus,
  });

  @override
  List<Object?> get props => [
        accountNumber,
        customerNumber,
        accountName,
        netBalance,
        productName,
        emailAddress,
        mobileNumber,
        accountOfficer,
        currencyCode,
        branchCode,
        branchName,
        profitCenterMiscode,
        accountOfficerMiscode,
        teamMiscode,
        amountCreditMtd,
        amountDebitMtd,
        pndStatus,
        pncStatus,
        frozenStatus,
        blockStatus,
        dormantStatus,
        recordStatus,
        authStatus,
      ];

  CustomerDetails copyWith({
    String? emailAddress,
    String? mobileNumber,
  }) {
    return CustomerDetails(
      accountNumber: accountNumber,
      customerNumber: customerNumber,
      accountName: accountName,
      netBalance: netBalance,
      productName: productName,
      emailAddress: emailAddress ?? this.emailAddress,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      accountOfficer: accountOfficer,
      currencyCode: currencyCode,
      branchCode: branchCode,
      branchName: branchName,
      profitCenterMiscode: profitCenterMiscode,
      accountOfficerMiscode: accountOfficerMiscode,
      teamMiscode: teamMiscode,
      amountCreditMtd: amountCreditMtd,
      amountDebitMtd: amountDebitMtd,
      pndStatus: pndStatus,
      pncStatus: pncStatus,
      frozenStatus: frozenStatus,
      blockStatus: blockStatus,
      dormantStatus: dormantStatus,
      recordStatus: recordStatus,
      authStatus: authStatus,
    );
  }
}
