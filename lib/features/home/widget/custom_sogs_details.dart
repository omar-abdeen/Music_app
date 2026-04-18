import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/width_values_managers.dart';
import 'package:music_app/models/songs_models.dart';
class CustomSongsDetails extends StatelessWidget {
  const CustomSongsDetails({
    super.key, required this.listsongsModels, required this.onTap,
  });
 final List<SongsModels> listsongsModels;
  final Function(int index) onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 203,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context , index)=> GestureDetector(
              onTap: (){
                onTap(index);
              },
               child:  Container(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),
                      child: Image(
                          width: WidthValuesManagers.w151,
                          height: HeightValuesManagers.h151,
                          fit: BoxFit.cover,
                          image: AssetImage(listsongsModels[index].image),
                      ),
                    ),
                    SizedBox(height: HeightValuesManagers.h10,),
                    Text(
                        listsongsModels[index].song,
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: ColorManagers.kWhiteColor)
                    ),
                    SizedBox(height: HeightValuesManagers.h4,),
                    Text(
                        listsongsModels[index].singer,
                        style:const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorManagers.kLightWhiteColor)
                    )
                  ]
                              ),
                ),
            ),
            separatorBuilder: (context , index) => SizedBox(width: WidthValuesManagers.w17,),
            itemCount: listsongsModels.length,
        ),
      ),
    );
  }
}
