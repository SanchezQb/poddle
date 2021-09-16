import 'package:flutter/material.dart';
import 'package:podcast_app/app/ui/home/pages/home_page.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => const HomePage(),
        );
      default:
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => const Scaffold(
            body: Center(child: Text("Can't find this page")),
          ),
        );
    }
  }
}
