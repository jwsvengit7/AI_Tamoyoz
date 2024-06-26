

part of '../../../core/router/app_routes.dart';

@TypedGoRoute<AccountNumberScreenRoute>(
  path: '/auth',
)
@immutable
class AccountNumberScreenRoute extends GoRouteData {
  const AccountNumberScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return  AuthScreen();
      }
}