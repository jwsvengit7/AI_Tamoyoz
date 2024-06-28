part of '../../../core/router/app_routes.dart';

@TypedGoRoute<StartUpRoute>(
  path: '/',
  routes: [
    TypedGoRoute<OnboardingScreenRoute>(
      path: "home"
    ),
  ]
)
@immutable
class StartUpRoute extends GoRouteData {
  const StartUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashScreen();
      }
}
class OnboardingScreenRoute extends GoRouteData {
  const OnboardingScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingScreen();
      }
}

 