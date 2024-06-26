
import 'package:ai_tamayoz/feature/auth/domain/model/generateobject.dart';

class GenerateTokenResponseModel extends GenerateTokenResponse {
  const GenerateTokenResponseModel(
      {required super.token, required super.message});

  factory GenerateTokenResponseModel.fromJson(Map<String, dynamic> json) {
    return GenerateTokenResponseModel(
      token: json['token'] ?? '',
      message: json['message'] ?? '',
    );
  }

  factory GenerateTokenResponseModel.dummy() =>
      const GenerateTokenResponseModel(
          token: "dummy token", message: "dummy message");
}
