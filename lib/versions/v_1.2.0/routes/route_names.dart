class RouteNames {
  RouteNames._constructor();

  static final RouteNames _instance = RouteNames._constructor();

  static const String initialRoute = "/";
  static const String homePageRoute = "/home_page";
  static const String favoritesPageRoute = "/favorites_page";

  factory RouteNames() {
    return _instance;
  }
}
