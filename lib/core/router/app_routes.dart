import 'package:ai_tamayoz/feature/auth/presentation/screens/_forget_password_screen.dart';
import 'package:ai_tamayoz/feature/auth/presentation/screens/_signup_screen.dart';
import 'package:ai_tamayoz/feature/auth/presentation/screens/login_screen_two.dart';
import 'package:ai_tamayoz/feature/startup/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ai_tamayoz/feature/startup/presentation/screens/onboarding.dart';
import 'package:ai_tamayoz/feature/auth/presentation/screens/auth_screen.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/screens/landing_page_screen.dart';


part "../../feature/startup/presentation/_startup_routes.dart";
part "../../feature/auth/presentation/_auth_routes.dart";
part "../../feature/landing_page/presentation/_landing_page_routes.dart";

part 'app_routes.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  routes: $appRoutes,
  initialLocation: '/',
  navigatorKey: rootNavigatorKey,
);
