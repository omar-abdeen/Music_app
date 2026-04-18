import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes_managers.dart';

class OnBoardingController {
  static void navigatorToPlayMusicScreen({required BuildContext context}){
    Navigator.pushReplacementNamed(context,RoutesName.kHomeScreen);

  }
}
