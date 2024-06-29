part of '../../../core/router/app_routes.dart';

@TypedGoRoute<AccountScreenRoute>(
  path: '/account',
  routes: [
  TypedGoRoute<ChangePasswordScreenRoute>(
  path: 'change-password',
 
)
  ]
)

@immutable
class AccountScreenRoute extends GoRouteData {
  const AccountScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AccountScreen();
      }
}

class ChangePasswordScreenRoute extends GoRouteData {
  const ChangePasswordScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChangePasswordScreen();
      }
}
