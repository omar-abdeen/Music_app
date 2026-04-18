import 'package:flutter/material.dart';
import 'package:music_app/controller/home_controller.dart';
import 'package:music_app/core/resources/color_manager.dart';

class CustomBottonNavBarHome extends StatelessWidget {
  const CustomBottonNavBarHome({super.key, required this.onTap, required this.index});
  final ValueChanged<int> onTap;
  final int index ;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: ColorManagers.kThirdPrimaryColor,
      unselectedItemColor: ColorManagers.kWhiteColor,
      currentIndex: index,
      onTap: onTap,
        backgroundColor: ColorManagers.kDarkBlueColor,
        //iconSize: 24,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:[
          for(int i=0;i<HomeController.homeIcon.length;i++)
            BottomNavigationBarItem(
                icon: HomeController.homeIcon[i],
                label: ""
            )
        ]
    );
  }
}
