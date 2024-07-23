import 'package:ai_tamayoz/feature/cars/domain/model/cars_details_model.dart';
import 'package:ai_tamayoz/feature/cars/presentation/screens/add_cars_screen.dart';
import 'package:ai_tamayoz/feature/cars/presentation/screens/available_cars_screen.dart';
import 'package:ai_tamayoz/feature/cars/presentation/screens/brand.dart';
import 'package:ai_tamayoz/feature/cars/presentation/screens/brand_screens.dart';
import 'package:ai_tamayoz/feature/cars/presentation/screens/car_services.dart';
import 'package:ai_tamayoz/feature/cars/presentation/screens/cars_details_screen.dart';
import 'package:ai_tamayoz/feature/cars/presentation/screens/cars_screen.dart';
import 'package:ai_tamayoz/feature/cars/presentation/screens/special_cars.dart';
import 'package:ai_tamayoz/feature/cars/presentation/screens/whislist_screen.dart';
import 'package:ai_tamayoz/feature/account/presentation/screens/account_password_change.dart';
import 'package:ai_tamayoz/feature/account/presentation/screens/account_screen.dart';
import 'package:ai_tamayoz/feature/auth/presentation/screens/_forget_password_screen.dart';
import 'package:ai_tamayoz/feature/auth/presentation/screens/_signup_screen.dart';
import 'package:ai_tamayoz/feature/auth/presentation/screens/login_screen_two.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/screens/about_screen.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/screens/contact_us.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/screens/privacy_screen.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/screens/terms_condition.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/widget/cars.dart';
import 'package:ai_tamayoz/feature/startup/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:ai_tamayoz/feature/startup/presentation/screens/onboarding.dart';
import 'package:ai_tamayoz/feature/landing_page/presentation/screens/landing_page_screen.dart';

part "../../feature/startup/presentation/_startup_routes.dart";
part "../../feature/cars/presentation/cars_routes.dart";
part "../../feature/auth/presentation/_auth_routes.dart";
part "../../feature/account/presentation/account_routes.dart";
part "../../feature/landing_page/presentation/_landing_page_routes.dart";

part 'app_routes.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  routes: $appRoutes,
  initialLocation: '/',
  navigatorKey: rootNavigatorKey,
);
