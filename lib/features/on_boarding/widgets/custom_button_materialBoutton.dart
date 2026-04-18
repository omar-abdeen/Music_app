import 'package:flutter/material.dart';
import 'package:music_app/controller/on_boarding_controller.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/width_values_managers.dart';

class CustomButtonMaterialboutton extends StatelessWidget {
  const CustomButtonMaterialboutton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Container(
        alignment: Alignment.center,
        width: WidthValuesManagers.w171,
        height: HeightValuesManagers.h60,
        decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: ColorManagers.kWhiteColor,
                width: WidthValuesManagers.w2,
              ),
              right: BorderSide(
                color: ColorManagers.kWhiteColor,
                width: WidthValuesManagers.w1,
              ),
              left: BorderSide(
                color: ColorManagers.kWhiteColor,
                width: WidthValuesManagers.w1,
              ),
            ),
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [
                  ColorManagers.kLight3BlueColor,
                  ColorManagers.kLight2BlueColor
                ])
        ),
        child: Text(
          textAlign: TextAlign.center,
          "Get Started",
          style: TextStyle(fontSize: 19,
              color: ColorManagers.kWhiteColor,
              fontWeight: FontWeight.w500),
        ),
      ),
      onPressed: () {
        OnBoardingController.navigatorToPlayMusicScreen(context: context);
      },
    );
  }
}
