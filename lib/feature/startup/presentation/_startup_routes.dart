part of '../../../core/router/app_routes.dart';

@TypedGoRoute<StartUpRoute>(
  path: '/',
  routes: [
    TypedGoRoute<OnboardingScreenRoute>(
      path: "home"
    ),
     TypedGoRoute<OnboardingScreenLoginRoute>(
      path: "login"
    ),
      TypedGoRoute<ForgetPasswordRoute>(
      path: "forget-password"
    ),
      TypedGoRoute<OnboardingScreenSignupRoute>(
      path: "signup"
    )
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
class OnboardingScreenSignupRoute extends GoRouteData {
  const OnboardingScreenSignupRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingScreenSignup();
      }
}
class OnboardingScreenLoginRoute extends GoRouteData {
  const OnboardingScreenLoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingScreenTwo();
      }
}
class ForgetPasswordRoute extends GoRouteData {
  const ForgetPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ForgetPasswordScreen();
      }
}