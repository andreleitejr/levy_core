import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

abstract class MicroAppRouter {
  BuildContext get context;
  Future<T?> push<T extends Object?>(PageRouteInfo route, {bool replace = false});
  Future<void> pushNamed(String route, {bool replace = false});
  Future<void> pop<T extends Object?>();
  Future<void> navigateToAddress();
  Future<void> navigateToBus();
  Future<void> navigateToMap();
  Future<void> navigateToPayment();
  Future<void> navigateToProfile();
  Future<void> navigateToReservation();
  Future<void> navigateToTime();
}
