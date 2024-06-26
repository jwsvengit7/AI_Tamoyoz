
import 'package:fpdart/fpdart.dart';
import 'package:ai_tamayoz/feature/auth/domain/services/auth_service_layer.dart';
import 'package:ai_tamayoz/feature/auth/infrastructure/datasource/authentication_local_data_source.dart';
import 'package:ai_tamayoz/feature/auth/infrastructure/datasource/authentication_remote_data_source.dart';
import 'package:ai_tamayoz/core/constants/exception.dart';
import 'package:ai_tamayoz/core/network/domain/inetwork_manager.dart';
import 'package:ai_tamayoz/core/network/internet_request.dart';


class AuthenticationServiceAdapter
    with InternetRequestMixin
    implements AuthenticationService {
  final INetworkManager _networkManager;
  final AuthenticationRemoteDataSource _remoteDataSource;
  final AuthenticationLocalDataSource _localDataSource;

  AuthenticationServiceAdapter({
    required INetworkManager networkManager,
    required AuthenticationRemoteDataSource remoteDataSource,
    required AuthenticationLocalDataSource localDataSource,
  })  : _networkManager = networkManager,
        _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  EitherFailureOr<Object> generateToken({
    required String clientId,
    required String password,
    required String accountNumber,
  }) {
    return TaskEither.tryCatch(
      () => checkInternetThenMakeRequest(
        _networkManager,
        request: () => _remoteDataSource.generateToken(
          clientId: clientId,
          password: password,
          accountNumber: accountNumber,
        ),
      ),
      handleException,
    );
  }



  @override
  EitherFailureOrUnit saveToken(String token) {
    return TaskEither.tryCatch(
      () => _localDataSource.saveToken(token),
      handleException,
    );
  }



  @override
  EitherFailureOr<String> generateOtp({
    required String accountNumber,
    required String channelCode,
    required String referenceNumber,
  }) {
    return TaskEither.tryCatch(
      () => checkInternetThenMakeRequest(
        _networkManager,
        request: () => _remoteDataSource.generateOtp(
          accountNumber: accountNumber,
          channelCode: channelCode,
          referenceNumber: referenceNumber,
        ),
      ),
      handleException,
    );
  }

  @override
  EitherFailureOr<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String referenceNumber,
    required String appId,
  }) {
    return TaskEither.tryCatch(
      () => checkInternetThenMakeRequest(
        _networkManager,
        request: () => _remoteDataSource.verifyOtp(
          channelCode: channelCode,
          otp: otp,
          referenceNumber: referenceNumber,
          appId: appId,
        ),
      ),
      handleException,
    );
  }

  @override
  EitherFailureOrUnit clearAuthToken() {
    return TaskEither.tryCatch(
      () => _localDataSource.clearAuthToken(),
      handleException,
    );
  }
  

}

