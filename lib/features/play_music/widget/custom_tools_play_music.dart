
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_manager.dart';

class CustomToolsPlayMusic extends StatelessWidget {
  const CustomToolsPlayMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(7),
      margin: EdgeInsets.symmetric(horizontal: 89,vertical: 7),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: ColorManagers.kLightWhiteColor.withOpacity(0.50),),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
              children: [
                Icon(Icons.favorite_border, color: ColorManagers.kWhiteColor,),
                Text("Live",style: TextStyle(color: ColorManagers.kWhiteColor,fontSize: 10,fontWeight: FontWeight.w500))
              ]
          ),
          Column(
              children: [
                Icon(Icons.playlist_play_sharp, color: ColorManagers.kWhiteColor,),
                Text("playlist",style: TextStyle(color: ColorManagers.kWhiteColor,fontSize: 10,fontWeight: FontWeight.w500))
              ]
          ),
          Column(
              children: [
                Icon(Icons.cloud_download_rounded, color: ColorManagers.kWhiteColor,),
                Text("download",style: TextStyle(color: ColorManagers.kWhiteColor,fontSize: 10,fontWeight: FontWeight.w500))
              ]
          ),
          Column(
              children: [
                Icon(Icons.more_vert, color: ColorManagers.kLightWhiteColor,),
                Text("More",style: TextStyle(color: ColorManagers.kWhiteColor,fontSize: 10,fontWeight: FontWeight.w500))
              ]
          ),
        ],
      ),
    );
  }
}
