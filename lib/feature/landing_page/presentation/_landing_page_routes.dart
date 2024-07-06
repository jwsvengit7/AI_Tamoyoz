part of '../../../core/router/app_routes.dart';

@TypedGoRoute<LandingPageRoute>(
  path: '/landing',
  routes: [
    TypedGoRoute<AboutUsRoute>(
  path: 'about-us',
    ),
      TypedGoRoute<TermsAndConditionRoute>(
  path: 'terms-conditions',
    ),
      TypedGoRoute<PrivacyRoute>(
  path: 'privacy',
    )
  ]
)
@immutable
class LandingPageRoute extends GoRouteData {
  const LandingPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LandingPage();
      }
}

class AboutUsRoute extends GoRouteData {
  const AboutUsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutUsScreen();
      }
}
class TermsAndConditionRoute extends GoRouteData {
  const TermsAndConditionRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TermsAndConditionScreen();
      }
}

class PrivacyRoute extends GoRouteData {
  const PrivacyRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PrivacyScreen();
      }
}