import 'package:intl/intl.dart';

class Dummy {
  static const num defaultAccountNumber = 1234567890;

  static final responseTime = DateFormat('MM-dd-yyyy HH:mm:ss').format(DateTime.now());

  static const responseCode = "00";
  static const responseMessage = "Successful!";
  static const transactionReference = "TX-REF: Dummy";

  static const institutionReference = "IN-REF: Dummy";

  static const flexReplyCode = "FLX-CODE: Dummy";

  static const flexReplyMessage = "FLX-MSG: Dummy";

  static const paymentReference = "Payment Reference";

  static const senderName = "Dummy Sender Name";

  static const recipientName = "Dummy Recipient Name";

  static const providerCode = "Provider Code";

  static const amount = "4500";

  static const boReferenceNo = "Bo-Reference-No";

  static const messageId = "msg-id";

  static const allowDebit = true;

  static const bvn = "bvn";

  static const kycLevel = "kyc level 5";

  static const sessionId = "Session ID";

  static const isStaff = false;

  static const isChargeFree = false;

  static num commission = 0.75;

  static num swiftTelexCharges = 15.00;

  static num offshoreCharge = 1.25;

  static num totalCharges = 18.00;

  static num vat = 2.70;

  static num totalTransactionAmount = 20.70;

  static num maxDailyTransactionAmountLeft = 100.0;

  static num amountBlockNo = 0.00;
}
