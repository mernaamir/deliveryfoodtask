import 'package:flutter/material.dart';
import 'package:fooddelivery/layOut/home_Screen.dart';
import 'package:fooddelivery/features/tabs/home_Tab.dart';

import '../../features/screens/login.dart';

class RoutesName {
  static const String login = "/";
  static const String HomeScreen = "HomeScreen";
}

class AppRoutes {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => LogIn());
      case RoutesName.HomeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      default:
        return MaterialPageRoute(builder: (context) => unDefineRoute());
    }
  }

  static Widget unDefineRoute() {
    return Scaffold(
      body: Center(
        child: Text("Route Not found"),
      ),
    );
  }
}
