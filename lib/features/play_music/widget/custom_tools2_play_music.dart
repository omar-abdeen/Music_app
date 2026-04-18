
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/models/songs_models.dart';

class CustomTools2PlayMusic extends StatelessWidget {
  const CustomTools2PlayMusic({
    super.key, required this.songsModels,
  });
  final SongsModels songsModels;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(vertical: 11,horizontal: 13),
      margin: EdgeInsets.symmetric(horizontal: 34,vertical: 25),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: ColorManagers.kLightWhiteColor.withOpacity(0.50),),
      child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Up Next",style: TextStyle(color: ColorManagers.kWhiteColor,fontSize: 9,fontWeight: FontWeight.w500),),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorManagers.kLight3BlueColor,
                  ),
                  child:Text("Queue >",style: TextStyle(color: ColorManagers.kWhiteColor,fontSize: 9,fontWeight: FontWeight.w500),),
                )
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                    width: 55,
                    height: 55,
                    fit: BoxFit.cover,
                    image: AssetImage(songsModels.image)),
              ),
              title: Text( songsModels.song,style: TextStyle(color: ColorManagers.kWhiteColor,fontSize: 15,fontWeight: FontWeight.w500),),
              subtitle: Text(songsModels.singer,style: TextStyle(color: ColorManagers.kLightWhiteColor,fontSize: 12,fontWeight: FontWeight.w500),),
              trailing: Icon(Icons.skip_next_sharp,color: ColorManagers.kWhiteColor,size: 30,),
            )
          ]
      ),
    );
  }
}
