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
       TypedGoRoute<AvailableScreenRoute>(
      path: "available"
    ),
      TypedGoRoute<AddCarsScreenRoute>(
      path: "add-car"
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
    final routeData = state.extra as CarsDetailsRouteData;
    return  CarsDetailsScreen(data:routeData.data);
      }
}

class CarsDetailsRouteData {
  final CarsDetailsModel data;
  const CarsDetailsRouteData({required this.data});

}
 
 class WhistlistRoute extends GoRouteData {
  const WhistlistRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WhistListScreen();
      }
}

 class AvailableScreenRoute extends GoRouteData {
  const AvailableScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AvailableScreen();
      }
}

 class AddCarsScreenRoute extends GoRouteData {
  const AddCarsScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AddCarsScreen();
      }
}


 