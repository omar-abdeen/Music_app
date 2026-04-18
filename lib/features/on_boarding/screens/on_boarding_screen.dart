import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_managers.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/features/on_boarding/widgets/custom_Image_onboarding.dart';
import 'package:music_app/features/on_boarding/widgets/custom_button_materialBoutton.dart';
import 'package:music_app/features/on_boarding/widgets/custom_title.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(AlignmentManagersX.x0_20,AlignmentManagersY.y_0_98),
              end: Alignment(AlignmentManagersX.x_0_20,AlignmentManagersY.y0_98),
              colors: [
                ColorManagers.kPrimaryColor,
                ColorManagers.kSecondPrimaryColor.withOpacity(0.54),
              ]
          ),
        ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: HeightValuesManagers.h111),
                CustomTitleOnBoardingPage(),
              SizedBox(height: HeightValuesManagers.h58),
              CustomButtonMaterialboutton(),
               CustomImageToOnboarding(),
              ]
            ),
            ),
      ),
    );
  }
}
