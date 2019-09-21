import 'package:brainy_tasks/constants/RoutePaths.dart';
import 'package:brainy_tasks/ui/views/AboutPage.dart';
import 'package:brainy_tasks/ui/views/ContactPage.dart';
import 'package:brainy_tasks/ui/views/HomePage.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case RoutePaths.About:
        return MaterialPageRoute(builder: (_) => AboutPage());
      case RoutePaths.Contact:
        return MaterialPageRoute(builder: (_) => ContactPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
