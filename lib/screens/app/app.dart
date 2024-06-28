import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hieuductran/global/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ong Chau Demo',
      onGenerateRoute: AppRoutes.onGenarateRoute,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
