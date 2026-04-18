import 'package:flutter/material.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/features/home/widget/custom_row_recommended_music.dart';
import 'package:music_app/models/songs_models.dart';

class CustomRecommenedMusic extends StatelessWidget {
  const CustomRecommenedMusic({super.key, required this.onTap,  required this.listSongsModels});
  final Function(int index) onTap;
  final List<SongsModels> listSongsModels;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.separated(
        separatorBuilder: (context,index)=> SizedBox(height: HeightValuesManagers.h10,),
        itemBuilder: (context,index)=> InkWell(
            onTap: (){
              onTap(index);
            },
            child: CustomRowRecommendMusic(
              songsModels: listSongsModels[index],
            )),
        itemCount: listSongsModels.length,
      ),
    );
  }
}
