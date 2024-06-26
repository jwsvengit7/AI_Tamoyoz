
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ai_tamayoz/feature/auth/api/authentication_api.dart';
import 'package:ai_tamayoz/feature/auth/app/authenication_facade.dart';
import 'package:ai_tamayoz/feature/auth/domain/services/auth_service_layer.dart';
import 'package:ai_tamayoz/feature/auth/infrastructure/adapters/authentication_service_adapter.dart';
import 'package:ai_tamayoz/feature/auth/infrastructure/datasource/authentication_local_data_source.dart';
import 'package:ai_tamayoz/feature/auth/infrastructure/datasource/authentication_remote_data_source.dart';
import 'package:ai_tamayoz/feature/auth/infrastructure/datasource/mock_auth_remote_data_source.dart';
import 'package:ai_tamayoz/feature/auth/presentation/bloc/authentication_bloc.dart';
import 'package:ai_tamayoz/core/constants/string_const.dart';
import 'package:ai_tamayoz/core/injection.dart';


part "mock_auth_injection.dart";

class AuthenticationInjection implements ServiceInjection {
  @override
  Future<void> register() async {
    sl.registerLazySingleton<AuthenticationApi>(
      () => AuthenticationApi(
        authenticationFacade: sl(),
      ),
    );

    sl.registerFactory(
      () => AuthenticationBloc(
        authenticationFacade: sl(),
      ),
    );

    sl.registerLazySingleton<AuthenticationFacade>(
      () => AuthenticationFacade(
        authenticationService: sl(),
      ),
    );

    sl.registerLazySingleton<AuthenticationService>(
      () => AuthenticationServiceAdapter(
        networkManager: sl(),
        remoteDataSource: sl(),
        localDataSource: sl(),
      ),
    );

    sl.registerLazySingleton<AuthenticationRemoteDataSource>(
      () => AuthenticationRemoteDataSourceImpl(
        apiCaller: sl(),
      ),
    );

    final box = Hive.box<String>(StringConst.accessTokenBox);
    sl.registerLazySingleton<AuthenticationLocalDataSource>(
      () => AuthenticationLocalDataSourceImpl(
        box: box,
      ),
    );
  }
}
