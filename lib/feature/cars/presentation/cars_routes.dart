part of '../../../core/router/app_routes.dart';

@TypedGoRoute<CarsRoute>(
  path: '/cars',
  routes: [
    TypedGoRoute<CarsDetailsRoute>(
      path: "cars-details"
    ),
      TypedGoRoute<WhistlistRoute>(
      path: "whistlist"
    ),
  ]
)
@immutable
class CarsRoute extends GoRouteData {
  const CarsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CarsScreen();
      }
}
class CarsDetailsRoute extends GoRouteData {
  const CarsDetailsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CarsDetailsScreen();
      }
}

 
 class WhistlistRoute extends GoRouteData {
  const WhistlistRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WhistListScreen();
      }
}

 