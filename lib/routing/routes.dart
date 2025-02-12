class AppRoute {
  final String name;
  final String path;

  AppRoute({required this.name, required this.path});
}

class Routes {
  static final splash = AppRoute(name: "splash", path: "/splash");
  static final login = AppRoute(name: "login", path: "/login");
  static final home = AppRoute(name: "home", path: "/home");
}
