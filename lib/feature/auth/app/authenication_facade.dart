
import 'package:fpdart/fpdart.dart';
import 'package:ai_tamayoz/feature/auth/domain/services/auth_service_layer.dart';
import 'package:ai_tamayoz/core/constants/exception.dart';


class AuthenticationFacade {
  final AuthenticationService _authenticationService;

  AuthenticationFacade({
    required AuthenticationService authenticationService,
  }) : _authenticationService = authenticationService;

  AsyncEitherFailureOr<Object> generateToken({
    required String clientId,
    required String password,
    required String accountNumber,
  }) async {
    return await _authenticationService
        .generateToken(
          clientId: clientId,
          password: password,
          accountNumber: accountNumber,
        )
        .run();
  }

 

  AsyncEitherFailureOr<Unit> saveToken(String token) async {
    return await _authenticationService.saveToken(token).run();
  }


  AsyncEitherFailureOr<String> generateOtp({
    required String accountNumber,
    required String channelCode,
    required String referenceNumber,
  }) async {
    return await _authenticationService
        .generateOtp(
          accountNumber: accountNumber,
          channelCode: channelCode,
          referenceNumber: referenceNumber,
        )
        .run();
  }

  AsyncEitherFailureOr<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String referenceNumber,
    required String appId,
  }) async {
    return await _authenticationService
        .verifyOtp(
          channelCode: channelCode,
          otp: otp,
          referenceNumber: referenceNumber,
          appId: appId,
        )
        .run();
  }

  AsyncEitherFailureOr<Unit> clearAuthToken() async {
    return await _authenticationService.clearAuthToken().run();
  }
}
