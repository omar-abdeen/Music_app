import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/models/songs_models.dart';

class CustomSongsDetailsPlayMusic extends StatelessWidget {
  const CustomSongsDetailsPlayMusic({super.key, required this.songsModels});
  final SongsModels songsModels;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(20),
          child: Image(
            fit: BoxFit.cover,
            width: 261,
            height: 247,
            image: AssetImage(songsModels.image),
          ),
        ),
        SizedBox(height: HeightValuesManagers.h10,),
        Text(songsModels.song,
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: ColorManagers.kWhiteColor),),
        SizedBox(height: HeightValuesManagers.h4,),
        Text(songsModels.singer,
            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: ColorManagers.kLightWhiteColor)),
      ],
    );
  }
}
