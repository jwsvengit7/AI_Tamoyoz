import 'package:ai_tamayoz/core/network/api_response.dart';


abstract class ApiCaller {
  Future<ApiResponse> get({
    required Uri url,
    Map<String, dynamic>? params,
    String? token,
  });

  Future<ApiResponse> post({
    required Uri url,
    required Map<String, dynamic> body,
    String? token,
  });

  Future<ApiResponse> put({
    required Uri url,
    required Map<String, dynamic> body,
    String? token,
  });

  Future<ApiResponse> delete({
    required Uri url,
    Map<String, dynamic>? params,
    String? token,
  });
}
