
import 'package:ai_tamayoz/feature/account/domain/services/account_service_layer.dart';
import 'package:ai_tamayoz/feature/account/infrastructure/datasource/account_remote_data_source.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ai_tamayoz/feature/auth/infrastructure/datasource/authentication_local_data_source.dart';
import 'package:ai_tamayoz/core/constants/exception.dart';
import 'package:ai_tamayoz/core/network/domain/inetwork_manager.dart';
import 'package:ai_tamayoz/core/network/internet_request.dart';


class AccountServiceAdapter
    with InternetRequestMixin
    implements AccountService {
  final INetworkManager _networkManager;
  final AccountRemoteDataSource _remoteDataSource;

  AccountServiceAdapter({
    required INetworkManager networkManager,
    required AccountRemoteDataSource remoteDataSource,
  })  : _networkManager = networkManager,
        _remoteDataSource = remoteDataSource;

  @override
  EitherFailureOr<Object> editAccount({
    required String clientId,
    required String password,
    required String accountNumber,
  }) {
    return TaskEither.tryCatch(
      () => checkInternetThenMakeRequest(
        _networkManager,
        request: () => _remoteDataSource.editAccount(
          clientId: clientId,
          password: password,
          accountNumber: accountNumber,
        ),
      ),
      handleException,
    );
  }


}