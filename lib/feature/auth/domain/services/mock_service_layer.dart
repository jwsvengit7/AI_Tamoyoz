
import 'package:ai_tamayoz/feature/auth/infrastructure/datasource/authentication_remote_data_source.dart';
import 'package:ai_tamayoz/feature/auth/infrastructure/models/generate_token_response_model.dart';
import 'package:ai_tamayoz/core/extensions/logger_extension.dart';

class MockAuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final duration = const Duration(milliseconds: 300);

  @override
  Future<GenerateTokenResponseModel> generateToken(
      {required String clientId,
      required String password,
      required String accountNumber}) async {
    await Future.delayed(duration);
    final dummy = GenerateTokenResponseModel.dummy();
    dummy.toString().log();
    return dummy;
  }

 

  @override
  Future<String> generateOtp(
      {required String accountNumber,
      required String channelCode,
      required String referenceNumber}) async {
    await Future.delayed(duration);
    return "Otp sent to mock number";
  }

  @override
  Future<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String referenceNumber,
    required String appId,
  }) async {
    await Future.delayed(duration);
    return otp == "123456" ? "Otp verified" : throw Exception("Invalid Otp");
  }
}
