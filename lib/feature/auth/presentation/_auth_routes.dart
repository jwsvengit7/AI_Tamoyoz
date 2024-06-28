part of '../../../core/router/app_routes.dart';

@TypedGoRoute<OnboardingScreenLoginRoute>(
  path: '/auth',
  routes: [
    
      TypedGoRoute<ForgetPasswordRoute>(
      path: "forget-password"
    ),
      TypedGoRoute<OnboardingScreenSignupRoute>(
      path: "signup"
    ),
     TypedGoRoute<HomeRoute>(
      path: "home"
    )
  ]
)
@immutable

class OnboardingScreenLoginRoute extends GoRouteData {
  const OnboardingScreenLoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingScreenTwo();
      }
}

class OnboardingScreenSignupRoute extends GoRouteData {
  const OnboardingScreenSignupRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingScreenSignup();
      }
}

class ForgetPasswordRoute extends GoRouteData {
  const ForgetPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ForgetPasswordScreen();
      }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LandingPage();
      }
}