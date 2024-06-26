import 'package:equatable/equatable.dart';

class AccountSummaryDetails extends Equatable {
  final String accountName;
  final String accountNumber;
  //TODO; consider making it json
  final String accountOpenDate;
  final String accountStatus;
  final num accountOpeningBalance;
  final num amountBlocked;
  final num amtOdLimit;
  final num availableBalance;
  final String branchAddress;
  final String branchCity;
  final String branchCode;
  final String branchName;
  final String branchState;
  final String bvn;
  final num clearedBalance;
  final num closingBalance;
  final String currencyCode;
  final String currencyName;
  final String customerId;
  final int hasCOT;
  final int hasImage;
  final String isStaff;
  final String loanStatus;
  final num lodgement;
  final num netBalance;
  final String productCode;
  final String productCodeDesc;
  final num totalBalance;
  final num unclearedBalance;
  final num withdrawal;
  final String customerSegment;
  final String hasFixedDeposit;
  final String tier;
  final String accountClassType;
  final String customerType;

  const AccountSummaryDetails({
    required this.accountName,
    required this.accountNumber,
    required this.accountOpenDate,
    required this.accountStatus,
    required this.accountOpeningBalance,
    required this.amountBlocked,
    required this.amtOdLimit,
    required this.availableBalance,
    required this.branchAddress,
    required this.branchCity,
    required this.branchCode,
    required this.branchName,
    required this.branchState,
    required this.bvn,
    required this.clearedBalance,
    required this.closingBalance,
    required this.currencyCode,
    required this.currencyName,
    required this.customerId,
    required this.hasCOT,
    required this.hasImage,
    required this.isStaff,
    required this.loanStatus,
    required this.lodgement,
    required this.netBalance,
    required this.productCode,
    required this.productCodeDesc,
    required this.totalBalance,
    required this.unclearedBalance,
    required this.withdrawal,
    required this.customerSegment,
    required this.hasFixedDeposit,
    required this.tier,
    required this.accountClassType,
    required this.customerType,
  });

  @override
  String toString() {
    return "$accountNumber - $accountName";
  }

  @override
  List<Object?> get props => [
        accountName,
        accountNumber,
        accountOpenDate,
        accountStatus,
        accountOpeningBalance,
        amountBlocked,
        amtOdLimit,
        availableBalance,
        branchAddress,
        branchCity,
        branchCode,
        branchName,
        branchState,
        bvn,
        clearedBalance,
        closingBalance,
        currencyCode,
        currencyName,
        customerId,
        hasCOT,
        hasImage,
        isStaff,
        loanStatus,
        lodgement,
        netBalance,
        productCode,
        productCodeDesc,
        totalBalance,
        unclearedBalance,
        withdrawal,
        customerSegment,
        hasFixedDeposit,
        tier,
        accountClassType,
        customerType,
      ];
}
