import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:levy_core/core/router/micro_app_router.dart';

@Singleton(as: MicroAppRouter)
class MicroAppRouterImpl implements MicroAppRouter {
  final RootStackRouter _router;

  const MicroAppRouterImpl({
    required RootStackRouter router,
  }) : _router = router;

  @override
  BuildContext get context => _router.navigatorKey.currentContext!;

  @override
  Future<T?> push<T extends Object?>(
    PageRouteInfo route, {
    replace = false,
  }) async {
    if (replace) {
      return _router.replace(route);
    } else {
      return _router.push(route);
    }
  }

  @override
  Future<void> pushNamed(
    String route, {
    replace = false,
  }) async {
    if (replace) {
      _router.replaceNamed(route);
    } else {
      _router.pushNamed(route);
    }
  }

  @override
  Future<void> pop<T extends Object?>() async {
    return _router.back();
  }

  @override
  Future<void> navigateToAddress() {
    return pushNamed('/address');
  }

  @override
  Future<void> navigateToBus() {
    return pushNamed('/bus');
  }

  @override
  Future<void> navigateToMap() {
    return pushNamed('/map');
  }

  @override
  Future<void> navigateToPayment() {
    return pushNamed('/payment');
  }

  @override
  Future<void> navigateToProfile() {
    return pushNamed('/profile');
  }

  @override
  Future<void> navigateToReservation() {
    return pushNamed('/reservation');
  }

  @override
  Future<void> navigateToTime() {
    return pushNamed('/time');
  }
}
