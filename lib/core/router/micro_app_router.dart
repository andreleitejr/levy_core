import 'package:auto_route/auto_route.dart';

abstract class MicroAppRouter {
  String get name;
  List<AutoRoute> get routes;
}
