
part of 'account_injection.dart';

class MockAccountInjection implements ServiceInjection {
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

    sl.registerLazySingleton<AccountRemoteDataSource>(
      () => MockAccountRemoteDataSourceImpl(),
    );

  
  }
}
