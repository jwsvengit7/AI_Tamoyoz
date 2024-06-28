
import 'package:ai_tamayoz/feature/account/app/infrastructure/account_facade.dart';
import 'package:ai_tamayoz/feature/account/infrastructure/adapters/account_service_adapter.dart';
import 'package:ai_tamayoz/feature/account/infrastructure/datasource/account_remote_data_source.dart';
import 'package:ai_tamayoz/feature/account/infrastructure/datasource/mock_account_remote_data_source.dart';
import 'package:ai_tamayoz/feature/auth/api/authentication_api.dart';
import 'package:ai_tamayoz/feature/auth/app/authenication_facade.dart';
import 'package:ai_tamayoz/feature/auth/domain/services/auth_service_layer.dart';
import 'package:ai_tamayoz/feature/auth/infrastructure/adapters/authentication_service_adapter.dart';
import 'package:ai_tamayoz/feature/auth/presentation/bloc/authentication_bloc.dart';
import 'package:ai_tamayoz/core/injection.dart';


part "mock_account_injection.dart";

class AccountInjection implements ServiceInjection {
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

    sl.registerLazySingleton<AccountFacade>(
      () => AccountFacade(
        accountService: sl(),
      ),
    );

    sl.registerLazySingleton<AccountServiceAdapter>(
      () => AccountServiceAdapter(
        networkManager: sl(),
        remoteDataSource: sl(),
      ),
    );

    sl.registerLazySingleton<AccountRemoteDataSource>(
      () => AccountRemoteDataSourceImpl(
        apiCaller: sl(),
      ),
    );


  }
}
