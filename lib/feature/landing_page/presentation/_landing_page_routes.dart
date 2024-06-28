part of '../../../core/router/app_routes.dart';

@TypedGoRoute<LandingPageRoute>(
  path: '/landing',
)
@immutable
class LandingPageRoute extends GoRouteData {
  const LandingPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LandingPage();
      }
}