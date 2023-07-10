import 'package:flutter/material.dart';

import 'features/home/page/home_page.dart';
import 'features/login/page/login_page.dart';

abstract class RouteNames {
  static const String home = '/home';
  static const String loggedIn = '/loggedIn';
}

class GenerateRoute {
  static final GlobalKey<NavigatorState> navigationKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<ScaffoldMessengerState> scaffoldStateKey =
      GlobalKey<ScaffoldMessengerState>();

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.home:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
      case RouteNames.loggedIn:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
    }
  }
}
