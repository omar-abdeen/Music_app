import 'package:flutter/material.dart';

import '../core/resources/routes_managers.dart';

class SplashController {
  static void navigateToOnBoardingScreen({required BuildContext context}){
    Future.delayed(const Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, RoutesName.kOnBoardingScreen);
    });
  }
}