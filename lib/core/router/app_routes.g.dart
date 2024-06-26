// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $startUpRoute,
      $accountNumberScreenRoute,
      $landingPageRoute,
    ];

RouteBase get $startUpRoute => GoRouteData.$route(
      path: '/',
      factory: $StartUpRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'home',
          factory: $OnboardingScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'login',
          factory: $OnboardingScreenLoginRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'forget-password',
          factory: $ForgetPasswordRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'signup',
          factory: $OnboardingScreenSignupRouteExtension._fromState,
        ),
      ],
    );

extension $StartUpRouteExtension on StartUpRoute {
  static StartUpRoute _fromState(GoRouterState state) => const StartUpRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OnboardingScreenRouteExtension on OnboardingScreenRoute {
  static OnboardingScreenRoute _fromState(GoRouterState state) =>
      const OnboardingScreenRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OnboardingScreenLoginRouteExtension on OnboardingScreenLoginRoute {
  static OnboardingScreenLoginRoute _fromState(GoRouterState state) =>
      const OnboardingScreenLoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ForgetPasswordRouteExtension on ForgetPasswordRoute {
  static ForgetPasswordRoute _fromState(GoRouterState state) =>
      const ForgetPasswordRoute();

  String get location => GoRouteData.$location(
        '/forget-password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OnboardingScreenSignupRouteExtension on OnboardingScreenSignupRoute {
  static OnboardingScreenSignupRoute _fromState(GoRouterState state) =>
      const OnboardingScreenSignupRoute();

  String get location => GoRouteData.$location(
        '/signup',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $accountNumberScreenRoute => GoRouteData.$route(
      path: '/auth',
      factory: $AccountNumberScreenRouteExtension._fromState,
    );

extension $AccountNumberScreenRouteExtension on AccountNumberScreenRoute {
  static AccountNumberScreenRoute _fromState(GoRouterState state) =>
      const AccountNumberScreenRoute();

  String get location => GoRouteData.$location(
        '/auth',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $landingPageRoute => GoRouteData.$route(
      path: '/',
      factory: $LandingPageRouteExtension._fromState,
    );

extension $LandingPageRouteExtension on LandingPageRoute {
  static LandingPageRoute _fromState(GoRouterState state) =>
      const LandingPageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
