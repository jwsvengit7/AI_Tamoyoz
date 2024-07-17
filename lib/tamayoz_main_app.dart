import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:ai_tamayoz/feature/auth/api/authentication_api.dart';
import 'package:ai_tamayoz/feature/auth/presentation/bloc/authentication_bloc.dart';
import 'package:ai_tamayoz/core/constants/string_const.dart';
import 'package:ai_tamayoz/core/extensions/logger_extension.dart';
import 'package:ai_tamayoz/core/injection.dart';
import 'package:ai_tamayoz/core/router/app_routes.dart';
import 'package:ai_tamayoz/core/theme/ai_tamayoz_theme.dart';
import 'package:ai_tamayoz/feature/startup/presentation/bloc/startup_bloc.dart';
import 'package:ai_tamayoz/flavor.dart';


class TamayozLoankApp {
  const TamayozLoankApp._();

  static bool isMock = true;

  static bool isProd = FlavorConfig.appFlavor == Flavor.prod;

  static boot() async {
    WidgetsFlutterBinding.ensureInitialized();

    await _initHive();

    await initInjection(useMock: isMock);

    // await SystemChrome.setPreferredOrientations(
    //   [
    //     DeviceOrientation.landscapeLeft,
    //     DeviceOrientation.landscapeRight,
    //   ],
    // );



    runApp(
      const RootRestorationScope(
        restorationId: "root",
        child: ProviderScope(child: MyApp()),
      ),
    );
  }

  static Future<void> _initHive() async {
    Directory directory = await pathProvider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);

    await Hive.openBox<String>(StringConst.accessTokenBox);
    await Hive.openBox<bool>(StringConst.obscureBalanceBox);
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Timer? _timer;

  AuthenticationApi get _authenticationApi => sl<AuthenticationApi>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<StartupBloc>(
          create: (_) => sl<StartupBloc>(),
        ),
        BlocProvider<AuthenticationBloc>(
          create: (_) => sl<AuthenticationBloc>(),
        ),
      
      
      ],
      child: ScreenUtilInit(
          designSize: const Size(1440, 960),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return Listener(
              onPointerDown: (_) => _handlePointerDown(context),
              child:  MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  backButtonDispatcher: RootBackButtonDispatcher(),
                  theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),),
                  title: StringConst.appName,
                  routerDelegate: router.routerDelegate,
                  routeInformationParser: router.routeInformationParser,
                  routeInformationProvider: router.routeInformationProvider,
             
                ),
            
            );
          }),
    );
  }

  void _initializeTimer() {
    "Initializing timer...".log();
    _cancelTimer();
  
  }

  void _cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }



  void _handlePointerDown(BuildContext context) {
  }

}
