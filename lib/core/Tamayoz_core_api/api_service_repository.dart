/*
Use: CREATE API API PROVIDER REPOSITORY USE FOR CALLING CALLING API
Get (getApi), Post (postApi) and Image upload formData (imageUpload)
*/

import 'dart:async';
import 'dart:convert' as convert;
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:ai_tamayoz/core/constants/string_const.dart';
import 'package:ai_tamayoz/core/exceptions.dart';
import 'package:ai_tamayoz/core/network/domain/inetwork_manager.dart';
import 'package:ai_tamayoz/core/network/network_manager.dart';

abstract class IApiProviderRepository {
  //GET API
  Future getApi(Uri pathUrl) async {}

  //GET Without Auth API
  Future getWithoutAuthApi(Uri pathUrl) async {}

  Future patchApi(Uri pathUrl, data) async {}

  //POST API
  Future postWithAuthApi(Uri pathUrl, String params);

  //PUT API
  Future putWithAuthApi(Uri pathUrl, {String? params});

  Future postFormDataWithAuthApi(Uri pathUrl, String filePath, String fileName);

  Future postApi(Uri pathUrl, Map<String, dynamic> data);

  Future deleteWithAuthApi(Uri pathUrl);

  //IMAGE UPLOAD POST
  // Future imageUpload(String pathUrl, {required dio.FormData formData});
  void imageUploadMap(Uri pathUrl,
      {Map<String, dynamic>? imageUploadParameter});
}

class ApiProviderRepository implements IApiProviderRepository {
  final INetworkManager _networkManager = NetworkManager();

  @override
  Future getApi(Uri pathUrl) async {
    debugPrint(pathUrl.toString());
    if (await _networkManager.isConnected) {
      final tokenBox = Hive.box<String>(StringConst.accessTokenBox);
      debugPrint(tokenBox.get(StringConst.accessTokenKey));
      try {
        return http.get(pathUrl, headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          HttpHeaders.authorizationHeader:
              'Bearer ${tokenBox.get(StringConst.accessTokenKey) ?? ""}'
        }).timeout(
          const Duration(seconds: 25),
        );
      } on TimeoutException {
        throw TimeOutException();
      } on SocketException {
        throw ConnectionException();
      } on HttpException {
        throw InternalException();
      } on FormatException {
        throw InternalException();
      }
    } else {
      throw ConnectionException();
    }
  }

  @override
  Future getWithoutAuthApi(Uri pathUrl, [Map<String, String>? header]) async {
    if (await _networkManager.isConnected) {
      try {
        return http
            .get(pathUrl,
                headers: header ??
                    {
                      'Content-Type': 'application/json',
                      'Accept': 'application/json',
                    })
            .timeout(
              const Duration(seconds: 25),
            );
      } on TimeoutException {
        throw TimeOutException();
      } on SocketException {
        throw ConnectionException();
      } on HttpException {
        throw InternalException();
      } on FormatException {
        throw InternalException();
      }
    } else {
      throw ConnectionException();
    }
  }

  @override
  void imageUploadMap(Uri pathUrl,
      {Map<String, dynamic>? imageUploadParameter}) {
    //TODO: handle imageUploadMap
    throw UnimplementedError();
  }

  @override
  Future postWithAuthApi(Uri pathUrl, String? params) async {
    debugPrint(pathUrl.toString());
    debugPrint(params);
    final Map<String, dynamic> obj = convert.jsonDecode(params ?? "{}");
    if (await _networkManager.isConnected) {
      final tokenBox = Hive.box<String>(StringConst.accessTokenBox);
      try {
        return http.post(pathUrl,
            body: convert.jsonEncode(obj.map((key, value) => MapEntry(
                  key,
                  value ?? "",
                ))),
            headers: {
              'Content-Type': 'application/json',
              HttpHeaders.authorizationHeader:
                  'Bearer ${tokenBox.get(StringConst.accessTokenKey) ?? ""}'
            });
      } on TimeoutException {
        throw TimeOutException();
      } on SocketException {
        throw ConnectionException();
      } on HttpException {
        throw InternalException();
      } on FormatException {
        throw InternalException();
      }
    } else {
      throw ConnectionException();
    }
  }

  @override
  Future putWithAuthApi(Uri pathUrl, {String? params}) async {
    if (await _networkManager.isConnected) {
      final tokenBox = Hive.box<String>(StringConst.accessTokenBox);
      try {
        return http.put(pathUrl, body: params, headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          HttpHeaders.authorizationHeader:
              'Bearer ${tokenBox.get(StringConst.accessTokenKey) ?? ""}'
        }).timeout(const Duration(seconds: 50));
      } on TimeoutException {
        throw TimeOutException();
      } on SocketException {
        throw ConnectionException();
      } on HttpException {
        throw InternalException();
      } on FormatException {
        throw InternalException();
      }
    } else {
      throw ConnectionException();
    }
  }

  @override
  Future deleteWithAuthApi(
    Uri pathUrl,
  ) async {
    if (await _networkManager.isConnected) {
      final tokenBox = Hive.box<String>(StringConst.accessTokenBox);
      try {
        return http.delete(pathUrl, headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          HttpHeaders.authorizationHeader:
              'Bearer ${tokenBox.get(StringConst.accessTokenKey) ?? ""}'
        }).timeout(const Duration(seconds: 50));
      } on TimeoutException {
        throw TimeOutException();
      } on SocketException {
        throw ConnectionException();
      } on HttpException {
        throw InternalException();
      } on FormatException {
        throw InternalException();
      }
    } else {
      throw ConnectionException();
    }
  }

  @override
  Future postApi(Uri pathUrl, Map<String, dynamic> data,
      [Map<String, String>? header]) async {
    debugPrint(pathUrl.toString());
    debugPrint(convert.jsonEncode(data));
    if (await _networkManager.isConnected) {
      try {
        return http
            .post(pathUrl,
                body: convert.jsonEncode(data),
                headers: header ??
                    {
                      'Content-Type': 'application/json',
                      'Accept': 'application/json',
                    })
            .timeout(const Duration(seconds: 20));
      } on TimeoutException {
        throw TimeOutException();
      } on SocketException {
        throw ConnectionException();
      } on HttpException {
        throw InternalException();
      } on FormatException {
        throw InternalException();
      }
    } else {
      throw ConnectionException();
    }
  }

  @override
  Future patchApi(Uri pathUrl, [dynamic data]) async {
    if (await _networkManager.isConnected) {
      final tokenBox = Hive.box<String>(StringConst.accessTokenBox);
      try {
        return http.patch(pathUrl, body: data, headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          HttpHeaders.authorizationHeader:
              'Bearer ${tokenBox.get(StringConst.accessTokenKey) ?? ""}'
        }).timeout(const Duration(seconds: 20));
      } on TimeoutException {
        throw TimeOutException();
      } on SocketException {
        throw ConnectionException();
      } on HttpException {
        throw InternalException();
      } on FormatException {
        throw InternalException();
      }
    } else {
      throw ConnectionException();
    }
  }

  @override
  Future postFormDataWithAuthApi(Uri pathUrl, String filePath, String fileName,
      [Map<String, String>? form]) async {
    if (await _networkManager.isConnected) {
      final tokenBox = Hive.box<String>(StringConst.accessTokenBox);
      try {
        var request = http.MultipartRequest('POST', pathUrl);
        final httpImage = await http.MultipartFile.fromPath(
            'id_image', filePath,
            filename: fileName);
        if (form != null) {
          request.fields.addAll(form);
        }
        request.files.add(httpImage);
        request.headers.addAll({
          'Authorization': 'Bearer ${tokenBox.get(StringConst.accessTokenKey)}'
        });
        final response = await request.send();
        return response;
      } on TimeoutException {
        throw TimeOutException();
      } on SocketException {
        throw ConnectionException();
      } on HttpException {
        throw InternalException();
      } on FormatException {
        throw InternalException();
      }
    } else {
      throw ConnectionException();
    }
  }
}
