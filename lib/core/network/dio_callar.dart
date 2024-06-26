import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ai_tamayoz/core/constants/string_const.dart';
import 'package:ai_tamayoz/core/network/api_response.dart';
import 'package:ai_tamayoz/core/network/domain/api_caller.dart';


class DioApiCaller extends ApiCaller {
  final Dio _dio;
  final Box _tokenBox;

  DioApiCaller(this._dio, {required Box authBox})
      : _tokenBox = authBox,
        super() {
  }

  @override
  Future<ApiResponse> get({
    required Uri url,
    Map<String, dynamic>? params,
    String? token,
    DoSuccessCheck? doSuccessCheck,
  }) async {
    try {
      final res = await _dio.getUri(
        url,
        data: params,
        options: _getOptionsFromToken(token),
      );
      final data = res.data;

      if (data is Map<String, dynamic>) {
        return ApiResponse.fromJson(
          data,
          statusCode: res.statusCode ?? 500,
        );
      }

      return ApiResponse(
        data: {
          "data": data,
        },
        statusCode: res.statusCode ?? 500,
        message: "Something went wrong",
      );
    } on DioException catch (e, _) {
      return ApiResponse(
        data: e.response?.data,
        statusCode: 500,
        message: (e.response?.data['response_message'].toString() ??
            "Something went wrong"),
      );
    } catch (e) {
      return ApiResponse(
        data: {},
        statusCode: 500,
        message: "Something went wrong",
      );
    }
  }

  @override
  Future<ApiResponse> post({
    required Uri url,
    required Map<String, dynamic> body,
    String? token,
  }) async {
    try {
      final res = await _dio.postUri(
        url,
        data: body,
        options: _getOptionsFromToken(token),
      );
      final data = res.data;

      if (data is Map<String, dynamic>) {
        return ApiResponse.fromJson(
          data,
          statusCode: res.statusCode ?? 500,
        );
      }

      return ApiResponse(
        data: {
          "data": data,
        },
        statusCode: res.statusCode ?? 500,
        message: "Something went wrong",
      );
    } on DioException catch (e) {
      return ApiResponse(
        data: e.response?.data,
        statusCode: 500,
        message: (e.response?.data['response_message'].toString() ??
            "Something went wrong"),
      );
    } catch (e) {
      return ApiResponse(
        data: {},
        statusCode: 500,
        message: "Something went wrong",
      );
    }
  }



  String _getToken() {
    final token = _tokenBox.get(StringConst.accessTokenKey) ?? "Mock Token";
    return token;
  }

  @override
  Future<ApiResponse> delete({
    required Uri url,
    Map<String, dynamic>? params,
    String? token,
    DoSuccessCheck? doSuccessCheck,
  }) async {
    try {
      final res = await _dio.deleteUri(
        url,
        data: params,
        options: _getOptionsFromToken(token),
      );
      final data = res.data;

      if (data is Map<String, dynamic>) {
        return ApiResponse.fromJson(
          data,
          statusCode: res.statusCode ?? 500,
        );
      }

      return ApiResponse(
        data: {
          "data": data,
        },
        statusCode: res.statusCode ?? 500,
        message: "Something went wrong",
      );
    } on DioException catch (e, _) {
      return ApiResponse(
        data: e.response?.data,
        statusCode: 500,
        message: (e.response?.data['response_message'].toString() ??
            "Something went wrong"),
      );
    } catch (e) {
      return ApiResponse(
        data: {},
        statusCode: 500,
        message: "Something went wrong",
      );
    }
  }

  @override
  Future<ApiResponse> put({
    required Uri url,
    required Map<String, dynamic> body,
    String? token,
    DoSuccessCheck? doSuccessCheck,
  }) async {
    try {
      final res = await _dio.putUri(
        url,
        data: body,
        options: _getOptionsFromToken(token),
      );
      final data = res.data;

      if (data is Map<String, dynamic>) {
        return ApiResponse.fromJson(
          data,
          statusCode: res.statusCode ?? 500,
        );
      }

      return ApiResponse(
        data: {
          "data": data,
        },
        statusCode: res.statusCode ?? 500,
        message: "Something went wrong",
      );
    } on DioException catch (e, _) {
      return ApiResponse(
        data: e.response?.data,
        statusCode: 500,
        message: (e.response?.data['response_message'].toString() ??
            "Something went wrong"),
      );
    } catch (e) {
      return ApiResponse(
        data: {},
        statusCode: 400,
        message: "Something went wrong",
      );
    }
  }

  Options? _getOptionsFromToken(String? token) {
    Options? options;

    if (token != null && token.isNotEmpty) {
      options = Options(
        headers: {"Authorization": "Bearer $token"},
      );
    }

    return options;
  }
}
