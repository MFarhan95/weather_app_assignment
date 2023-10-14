import 'package:flutter/material.dart';
import 'package:weather_app_assignment/features/features.dart';

class AppRouter {
  static Route onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return SplashScreenPage.route();
      case '/homeScreen':
        return HomeScreenPage.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Error Fetching Data"),
          ),
        ),
        settings: const RouteSettings(name: '/error'));
  }
}
