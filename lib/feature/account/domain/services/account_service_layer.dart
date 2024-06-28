
import 'package:ai_tamayoz/core/constants/exception.dart';



abstract class AccountService {
  EitherFailureOr<Object> editAccount({
    required String clientId,
    required String password,
    required String accountNumber,
  });


}