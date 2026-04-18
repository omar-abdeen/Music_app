import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes_managers.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        fontFamily: "Orbitron",
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.kSplashScreen,
      routes: RoutesManagers.routes,
    );
  }
}
