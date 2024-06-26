import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ai_tamayoz/core/constants/string_const.dart';


abstract class AuthenticationLocalDataSource {
  Future<Unit> saveToken(String token);

  Future<Unit> clearAuthToken();
}

class AuthenticationLocalDataSourceImpl
    implements AuthenticationLocalDataSource {
  final Box _box;

  AuthenticationLocalDataSourceImpl({required Box box}) : _box = box;

  @override
  Future<Unit> saveToken(String token) async {
    await _box.put(StringConst.accessTokenKey, token);
    return unit;
  }

  @override
  Future<Unit> clearAuthToken() async {
    _box.delete(StringConst.accessTokenKey);
    return unit;
  }
}
