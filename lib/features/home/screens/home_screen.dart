import 'package:flutter/material.dart';
import 'package:music_app/controller/home_controller.dart';
import 'package:music_app/features/home/widget/custom_botton_nav_bar_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:HomeController.homePages[index],
        bottomNavigationBar:  CustomBottonNavBarHome(
          index: index,
          onTap: (value){
            index = value;
            setState(() {
            });
          },
        )
    );
  }
}
