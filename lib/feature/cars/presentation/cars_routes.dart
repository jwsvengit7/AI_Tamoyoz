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
     TypedGoRoute<BrandCarScreenRoute>(
      path: "brands"
    ),
        TypedGoRoute<BrandCarViewScreenRoute>(
      path: "brands-cars"
    ),
      TypedGoRoute<SpecialCarsScreenRoute>(
      path: "special-car",
      routes: [
        TypedGoRoute<FilterScreenRoute>(
      path: "filter-screen",
      routes: [
          TypedGoRoute<ColorScreenRoute>(
      path: "color-screen",
     
          ),
          TypedGoRoute<BrandScreenRoute>(
      path: "brand-screen",
    
          ),
              TypedGoRoute<ModelScreenRoute>(
      path: "model-screen",
          )
      ]
    ),
      ]
    ),
          TypedGoRoute<CarServiceRoute>(
      path: "car-service"
    ),
        TypedGoRoute<RequestCarsScreenRoute>(
      path: "car-request"
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

class BrandCarScreenRoute extends GoRouteData{
  const BrandCarScreenRoute();
  @override
  Widget build(BuildContext context,GoRouterState state) {
    return const CarBrandScreen();
  }
}

class BrandCarViewScreenRoute extends GoRouteData{
  const BrandCarViewScreenRoute();
  @override
  Widget build(BuildContext context,GoRouterState state) {
        final routeData = state.extra as BrandRouteType;

    return  BrandScreen(brand:routeData.brands);
  }
}

class BrandRouteType {
  final CarType brands;

  BrandRouteType({required this.brands});
}

 class SpecialCarsScreenRoute extends GoRouteData{
    const SpecialCarsScreenRoute();
  @override
  Widget build(BuildContext context,GoRouterState state) {
    return const SpecialCarsScreen();
  }
 }

 class CarServiceRoute extends GoRouteData{
      const CarServiceRoute();
  @override
  Widget build(BuildContext context,GoRouterState state) {
    return const CarServiceScreen();
  }
 }

 
 class RequestCarsScreenRoute extends GoRouteData{
      const RequestCarsScreenRoute();
  @override
  Widget build(BuildContext context,GoRouterState state) {
    return const RequestCarsScreen();
  }
 }
  class FilterScreenRoute extends GoRouteData{
      const FilterScreenRoute();
  @override
  Widget build(BuildContext context,GoRouterState state) {
    return const FilterScreen();
  }
 }
  class ColorScreenRoute extends GoRouteData{
    final String text;
      const ColorScreenRoute({required this.text});

  @override
  Widget build(BuildContext context,GoRouterState state) {
   
    return  ColorScreen(text:text);
  }
 }
  class ModelScreenRoute extends GoRouteData{
      const ModelScreenRoute();
  @override
  Widget build(BuildContext context,GoRouterState state) {
    return const Modelscreen();
  }
 }
  class BrandScreenRoute extends GoRouteData{
      const BrandScreenRoute();
  @override
  Widget build(BuildContext context,GoRouterState state) {
    return const BrandScreenSort();
  }
 }