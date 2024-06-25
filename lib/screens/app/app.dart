import 'package:flutter/material.dart';
import 'package:hieuductran/screens/home/home_show_info/home_show_info.dart';
import 'package:hieuductran/screens/home_screen/home_screen.dart';
import 'package:hieuductran/screens/login/login_screen.dart';
import '../webview/webview_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ong Chau Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/homeScreen': (context) => const HomeScreen(),
        '/webviewscreen': (context) => const WebviewScreen(),
        '/homeshowinfo': (context) => const HomeShowInfo(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
