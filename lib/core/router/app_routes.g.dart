// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $startUpRoute,
      $carsRoute,
      $onboardingScreenLoginRoute,
      $accountScreenRoute,
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

RouteBase get $carsRoute => GoRouteData.$route(
      path: '/cars',
      factory: $CarsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'cars-details',
          factory: $CarsDetailsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'whistlist',
          factory: $WhistlistRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'available',
          factory: $AvailableScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'add-car',
          factory: $AddCarsScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'brands',
          factory: $BrandCarScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'brands-cars',
          factory: $BrandCarViewScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'special-car',
          factory: $SpecialCarsScreenRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'filter-screen',
              factory: $FilterScreenRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'color-screen',
                  factory: $ColorScreenRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'brand-screen',
                  factory: $BrandScreenRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'model-screen',
                  factory: $ModelScreenRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'car-service',
          factory: $CarServiceRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'car-request',
          factory: $RequestCarsScreenRouteExtension._fromState,
        ),
      ],
    );

extension $CarsRouteExtension on CarsRoute {
  static CarsRoute _fromState(GoRouterState state) => const CarsRoute();

  String get location => GoRouteData.$location(
        '/cars',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CarsDetailsRouteExtension on CarsDetailsRoute {
  static CarsDetailsRoute _fromState(GoRouterState state) =>
      const CarsDetailsRoute();

  String get location => GoRouteData.$location(
        '/cars/cars-details',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WhistlistRouteExtension on WhistlistRoute {
  static WhistlistRoute _fromState(GoRouterState state) =>
      const WhistlistRoute();

  String get location => GoRouteData.$location(
        '/cars/whistlist',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AvailableScreenRouteExtension on AvailableScreenRoute {
  static AvailableScreenRoute _fromState(GoRouterState state) =>
      const AvailableScreenRoute();

  String get location => GoRouteData.$location(
        '/cars/available',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AddCarsScreenRouteExtension on AddCarsScreenRoute {
  static AddCarsScreenRoute _fromState(GoRouterState state) =>
      const AddCarsScreenRoute();

  String get location => GoRouteData.$location(
        '/cars/add-car',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BrandCarScreenRouteExtension on BrandCarScreenRoute {
  static BrandCarScreenRoute _fromState(GoRouterState state) =>
      const BrandCarScreenRoute();

  String get location => GoRouteData.$location(
        '/cars/brands',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BrandCarViewScreenRouteExtension on BrandCarViewScreenRoute {
  static BrandCarViewScreenRoute _fromState(GoRouterState state) =>
      const BrandCarViewScreenRoute();

  String get location => GoRouteData.$location(
        '/cars/brands-cars',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SpecialCarsScreenRouteExtension on SpecialCarsScreenRoute {
  static SpecialCarsScreenRoute _fromState(GoRouterState state) =>
      const SpecialCarsScreenRoute();

  String get location => GoRouteData.$location(
        '/cars/special-car',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FilterScreenRouteExtension on FilterScreenRoute {
  static FilterScreenRoute _fromState(GoRouterState state) =>
      const FilterScreenRoute();

  String get location => GoRouteData.$location(
        '/cars/special-car/filter-screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ColorScreenRouteExtension on ColorScreenRoute {
  static ColorScreenRoute _fromState(GoRouterState state) => ColorScreenRoute(
        text: state.uri.queryParameters['text']!,
      );

  String get location => GoRouteData.$location(
        '/cars/special-car/filter-screen/color-screen',
        queryParams: {
          'text': text,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BrandScreenRouteExtension on BrandScreenRoute {
  static BrandScreenRoute _fromState(GoRouterState state) =>
      const BrandScreenRoute();

  String get location => GoRouteData.$location(
        '/cars/special-car/filter-screen/brand-screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ModelScreenRouteExtension on ModelScreenRoute {
  static ModelScreenRoute _fromState(GoRouterState state) =>
      const ModelScreenRoute();

  String get location => GoRouteData.$location(
        '/cars/special-car/filter-screen/model-screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CarServiceRouteExtension on CarServiceRoute {
  static CarServiceRoute _fromState(GoRouterState state) =>
      const CarServiceRoute();

  String get location => GoRouteData.$location(
        '/cars/car-service',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RequestCarsScreenRouteExtension on RequestCarsScreenRoute {
  static RequestCarsScreenRoute _fromState(GoRouterState state) =>
      const RequestCarsScreenRoute();

  String get location => GoRouteData.$location(
        '/cars/car-request',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboardingScreenLoginRoute => GoRouteData.$route(
      path: '/auth',
      factory: $OnboardingScreenLoginRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'forget-password',
          factory: $ForgetPasswordRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'signup',
          factory: $OnboardingScreenSignupRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'home',
          factory: $HomeRouteExtension._fromState,
        ),
      ],
    );

extension $OnboardingScreenLoginRouteExtension on OnboardingScreenLoginRoute {
  static OnboardingScreenLoginRoute _fromState(GoRouterState state) =>
      const OnboardingScreenLoginRoute();

  String get location => GoRouteData.$location(
        '/auth',
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
        '/auth/forget-password',
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
        '/auth/signup',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/auth/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $accountScreenRoute => GoRouteData.$route(
      path: '/account',
      factory: $AccountScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'change-password',
          factory: $ChangePasswordScreenRouteExtension._fromState,
        ),
      ],
    );

extension $AccountScreenRouteExtension on AccountScreenRoute {
  static AccountScreenRoute _fromState(GoRouterState state) =>
      const AccountScreenRoute();

  String get location => GoRouteData.$location(
        '/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChangePasswordScreenRouteExtension on ChangePasswordScreenRoute {
  static ChangePasswordScreenRoute _fromState(GoRouterState state) =>
      const ChangePasswordScreenRoute();

  String get location => GoRouteData.$location(
        '/account/change-password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $landingPageRoute => GoRouteData.$route(
      path: '/landing',
      factory: $LandingPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'about-us',
          factory: $AboutUsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'terms-conditions',
          factory: $TermsAndConditionRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'privacy',
          factory: $PrivacyRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'contact-us',
          factory: $ContactUsRouteExtension._fromState,
        ),
      ],
    );

extension $LandingPageRouteExtension on LandingPageRoute {
  static LandingPageRoute _fromState(GoRouterState state) =>
      const LandingPageRoute();

  String get location => GoRouteData.$location(
        '/landing',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AboutUsRouteExtension on AboutUsRoute {
  static AboutUsRoute _fromState(GoRouterState state) => const AboutUsRoute();

  String get location => GoRouteData.$location(
        '/landing/about-us',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TermsAndConditionRouteExtension on TermsAndConditionRoute {
  static TermsAndConditionRoute _fromState(GoRouterState state) =>
      const TermsAndConditionRoute();

  String get location => GoRouteData.$location(
        '/landing/terms-conditions',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PrivacyRouteExtension on PrivacyRoute {
  static PrivacyRoute _fromState(GoRouterState state) => const PrivacyRoute();

  String get location => GoRouteData.$location(
        '/landing/privacy',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ContactUsRouteExtension on ContactUsRoute {
  static ContactUsRoute _fromState(GoRouterState state) =>
      const ContactUsRoute();

  String get location => GoRouteData.$location(
        '/landing/contact-us',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
