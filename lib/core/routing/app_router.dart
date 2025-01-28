import 'package:english_work/features/home/home.dart';
import 'package:english_work/features/onboarding/onboarding.dart';
import 'package:english_work/features/user_name_page/user_name_page.dart';
import 'package:flutter/material.dart';
import 'routers_name.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutersName.onboarding:
        return MaterialPageRoute(
          builder: (_) => const Onboarding(),
        );
      case RoutersName.home:
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );
      case RoutersName.usernamepage:
        return MaterialPageRoute(
          builder: (_) => const UserNamePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("No Route Found"),
            ),
          ),
        );
    }
  }
}
