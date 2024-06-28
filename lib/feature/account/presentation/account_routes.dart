part of '../../../core/router/app_routes.dart';

@TypedGoRoute<AccountScreenRoute>(
  path: '/account'
 
)
@immutable
class AccountScreenRoute extends GoRouteData {
  const AccountScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AccountScreen();
      }
}
