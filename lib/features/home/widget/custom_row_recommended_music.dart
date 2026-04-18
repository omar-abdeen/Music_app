
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/models/songs_models.dart';

class CustomRowRecommendMusic extends StatelessWidget {
  const CustomRowRecommendMusic({
    super.key, required this.songsModels,
  });
  final SongsModels songsModels ;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35.5,
        backgroundImage:  AssetImage(songsModels.image),
      ),
      title: Text(
        songsModels.song,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: ColorManagers.kWhiteColor,
        ),

      ),
      subtitle: Text(
       songsModels.singer,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: ColorManagers.kLightWhiteColor,
        ),
      ),
      trailing: Icon(Icons.heart_broken,color: ColorManagers.kWhiteColor,),
    );
  }
}
