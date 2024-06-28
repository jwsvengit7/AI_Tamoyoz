
import 'package:ai_tamayoz/feature/account/domain/services/account_service_layer.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ai_tamayoz/feature/auth/domain/services/auth_service_layer.dart';
import 'package:ai_tamayoz/core/constants/exception.dart';


class AccountFacade {
  final AccountService _authenticationService;

  AccountFacade({
    required AccountService accountService,
  }) : _authenticationService = accountService;

  AsyncEitherFailureOr<Object> editAccount({
    required String clientId,
    required String password,
    required String accountNumber,
  }) async {
    return await _authenticationService
        .editAccount(
          clientId: clientId,
          password: password,
          accountNumber: accountNumber,
        )
        .run();
  }

 


}
