
import 'package:ai_tamayoz/core/constants/exception.dart';



abstract class AuthenticationService {
  EitherFailureOr<Object> generateToken({
    required String clientId,
    required String password,
    required String accountNumber,
  });



  EitherFailureOrUnit saveToken(String token);



  EitherFailureOr<String> generateOtp({
    required String accountNumber,
    required String channelCode,
    required String referenceNumber,
  });

  EitherFailureOr<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String referenceNumber,
    required String appId,
  });

  EitherFailureOrUnit clearAuthToken();
}
