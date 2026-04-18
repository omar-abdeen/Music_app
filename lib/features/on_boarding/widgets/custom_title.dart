import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/core/resources/height_values_managers.dart';

class CustomTitleOnBoardingPage extends StatelessWidget {
  const CustomTitleOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Find Your\nFavourite",
          style: TextStyle(height: HeightValuesManagers.h1,fontSize: 50,color: ColorManagers.kWhiteColor,fontWeight: FontWeight.bold),
        ),

        Text(
          "Music",
          style: TextStyle(height: HeightValuesManagers.h1,fontSize: 50,color: ColorManagers.kLight1BlueColor,fontWeight: FontWeight.bold),
        ),
        SizedBox(height: HeightValuesManagers.h11),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            textAlign: TextAlign.center,
            "Find Your Latest Favourite Music From Our Collection",
            style: TextStyle(fontSize: 15,color: ColorManagers.kWhiteColor,fontWeight: FontWeight.w500),
          ),
        ),
      ]
    );
  }
}
