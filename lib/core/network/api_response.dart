

import 'package:ai_tamayoz/core/extensions/logger_extension.dart';

typedef DoSuccessCheck<T> = bool Function(T data);

class ApiResponse {
  final Map<String, dynamic> data;
  final int statusCode;
  final String message;

  ApiResponse({
    required this.data,
    required this.statusCode,
    required this.message,
  });


  bool isSuccessful({DoSuccessCheck? doSuccessCheck}) {
    "Data: $data".log();
    final successful = doSuccessCheck?.call(data) ?? customCheck();
    "isSuccessful: $successful".log();
    return successful;
  }

  bool get isUnsuccessful => !isSuccessful();

  factory ApiResponse.fromJson(Map<String, dynamic> json,
      {int statusCode = 500}) {
    json.log();
    return ApiResponse(
      data: json,
      statusCode: statusCode,
      message: json['response_message'] ?? "Something went wrong",
    );
  }

  @override
  String toString() {
    return 'ApiResponse(data: $data, statusCode: $statusCode, message: $message)';
  }

  bool customCheck() {
    final responseCode = data["response_code"];

    if (responseCode is String) {
      return responseCode == "00";
    }

    return statusCode >= 200 && statusCode < 300;
  }
}
