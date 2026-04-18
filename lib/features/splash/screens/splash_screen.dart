import 'package:flutter/material.dart';
import 'package:music_app/controller/splash_controller.dart';
import 'package:music_app/features/splash/widgets/custom_widget.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    SplashController.navigateToOnBoardingScreen(context: context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomLoginSplashScreen(),
    );
  }
}
