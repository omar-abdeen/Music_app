import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_managers.dart';
import 'package:music_app/core/resources/assets_managers.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/width_values_managers.dart';

class CustomLoginSplashScreen extends StatelessWidget {
  const CustomLoginSplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Center(
        child: Image(
            width:WidthValuesManagers.w150,height: HeightValuesManagers.h150,
            image: AssetImage(
               AssetsManagers.logo,

            )),
      ),
    );
  }
}