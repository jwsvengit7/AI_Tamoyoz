part of '../../../core/router/app_routes.dart';

@TypedGoRoute<LandingPageRoute>(
  path: '/',
)
@immutable
class LandingPageRoute extends GoRouteData {
  const LandingPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LandingPage();
      }
}