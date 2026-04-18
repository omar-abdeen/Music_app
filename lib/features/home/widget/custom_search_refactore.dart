import 'package:flutter/material.dart';
import 'package:music_app/controller/home_page_controller.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/core/resources/constant_value.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/features/home/widget/custom_sogs_details.dart';
import 'package:music_app/features/home/widget/custom_title_home_page.dart';
import 'package:music_app/models/songs_models.dart';

class CustomSearchRefactore extends StatelessWidget {
  const CustomSearchRefactore({super.key, required this.listSearch});
 final List<SongsModels> listSearch;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CustomTitleHomePage(
            title: "Recently Played",
          ),
          SizedBox(height: HeightValuesManagers.h22,),
          listSearch.isEmpty ? Text(textAlign: TextAlign.center,"Not Found" ,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500, color: ColorManagers.kWhiteColor),):CustomSongsDetails(
            onTap: (index){
              HomePageController.navigatorToPlayMusicScreen(context: context, index: index);
            },
            listsongsModels: listSearch,
          ),
        ]
    );
  }
}
