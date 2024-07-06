
import 'package:ai_tamayoz/core/extensions/logger_extension.dart';
import 'package:ai_tamayoz/core/network/domain/api_caller.dart';


import '../models/generate_token_response_model.dart';
import 'account_remote_data_source.dart';

abstract class AccountRemoteDataSource {
  Future<Object> editAccount(
      {required String clientId,
      required String password,
      required String accountNumber});


}




class AccountRemoteDataSourceImpl
    implements AccountRemoteDataSource {
  final duration = const Duration(milliseconds: 300);
  final ApiCaller _apiCaller;

  AccountRemoteDataSourceImpl({required ApiCaller apiCaller})
      : _apiCaller = apiCaller;
  @override
  Future<Object> editAccount(
      {required String clientId,
      required String password,
      required String accountNumber}) async {
    await Future.delayed(duration);
    final dummy = GenerateTokenResponseModel.dummy();
    dummy.toString().log();
    return dummy;
  }


    }