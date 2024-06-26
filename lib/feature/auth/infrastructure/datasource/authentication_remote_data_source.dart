
import 'package:ai_tamayoz/core/network/domain/api_caller.dart';
import 'package:ai_tamayoz/core/Tamayoz_core_api/Tamayoz_core_api.dart';

import '../models/generate_token_response_model.dart';

abstract class AuthenticationRemoteDataSource {
  Future<GenerateTokenResponseModel> generateToken(
      {required String clientId,
      required String password,
      required String accountNumber});



  Future<String> generateOtp({
    required String accountNumber,
    required String channelCode,
    required String referenceNumber,
  });

  Future<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String referenceNumber,
    required String appId,
  });
}

class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final ApiCaller _apiCaller;

  AuthenticationRemoteDataSourceImpl({required ApiCaller apiCaller})
      : _apiCaller = apiCaller;

  @override
  Future<GenerateTokenResponseModel> generateToken({
    required String clientId,
    required String password,
    required String accountNumber,
  }) async {
    final url = TamayozCoreApi.getURL("GenerateToken");

    final response = await _apiCaller.post(
      url: url,
      body: {
        "clientId": clientId,
        "password": password,
      },
    );

    if (response.isSuccessful(
      doSuccessCheck: (data) => data["isError"] == false,
    )) {
      return GenerateTokenResponseModel.fromJson(response.data);
    }

    throw Exception(response.data["message"]);
  }



 

  @override
  Future<String> generateOtp({
    required String accountNumber,
    required String channelCode,
    required String referenceNumber,
  }) async {
    final url = TamayozCoreApi.getURL("authapi/v1/GenerateOTP");

    final response = await _apiCaller.post(
      url: url,
      body: {
        "account_number": accountNumber,
        "channel_code": channelCode,
        "reference_number": referenceNumber,
      },
    );

    if (response.isSuccessful()) {
      return response.data["response_message"] ?? "Success";
    }

    throw Exception(response.data["response_message"]);
  }

  @override
  Future<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String referenceNumber,
    required String appId,
  }) async {
    final url = TamayozCoreApi.getURL("authapi/v1/ValidateOTP");

    final response = await _apiCaller.post(
      url: url,
      body: {
        "channel_code": channelCode,
        "otp": otp,
        "reference_number": referenceNumber,
        "app_id": appId,
      },
    );

    if (response.isSuccessful()) {
      return response.data["response_message"] ?? "Success";
    }

    throw Exception(response.data["response_message"]);
  }
}
