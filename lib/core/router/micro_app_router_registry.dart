import 'package:auto_route/auto_route.dart';
import 'package:levy_core/core/router/router.dart';

typedef MicroAppFactory = MicroAppRouter Function();

final class MicroAppRouterRegistry {
  static final List<MicroAppFactory> _factories = [];

  static void registerMicroApp(MicroAppFactory factory) {
    _factories.add(factory);
  }

  static List<MicroAppRouter> getMicroApps() {
    return _factories.map((factory) => factory()).toList();
  }

  static List<AutoRoute> getAllRoutes() {
    return getMicroApps().expand((app) => app.routes).toList();
  }
}
