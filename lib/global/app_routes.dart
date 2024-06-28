import 'package:flutter/material.dart';
import 'package:hieuductran/screens/feed/widgets/feed_show_info/feed_show_info.dart';
import 'package:hieuductran/screens/home/home_show_info/home_show_info.dart';
import 'package:hieuductran/screens/home_screen/home_screen.dart';
import 'package:hieuductran/screens/login/login_screen.dart';

class AppRoutes {
  static MaterialPageRoute<dynamic> onGenarateRoute(RouteSettings settings) {
    return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => makeRoute(
            context: context,
            nameRoute: settings.name!,
            argumments: settings.arguments));
  }

  static makeRoute(
      {required BuildContext context,
      required String nameRoute,
      Object? argumments}) {
    switch (nameRoute) {
      case login:
        return const LoginScreen();
      case home:
        return const HomeScreen();
      case homeShowInfo:
        return const HomeShowInfo();
      case feedShowInfo:
        return const FeedShowInfo();
    }
  }

  static const String home = '/home';
  static const String login = '/';
  static const String homeShowInfo = '/homeshowinfo';
  static const String feedShowInfo = '/feedshowinfo';
}
