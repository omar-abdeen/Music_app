import 'package:flutter/material.dart';
import 'package:music_app/controller/home_page_controller.dart';
import 'package:music_app/core/resources/alignment_managers.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/core/resources/constant_value.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/features/home/widget/custom_recommened_music.dart';
import 'package:music_app/features/home/widget/custom_row_recommended_music.dart';
import 'package:music_app/features/home/widget/custom_search_refactore.dart';
import 'package:music_app/features/home/widget/custom_sogs_details.dart';
import 'package:music_app/features/home/widget/custom_text_field.dart';
import 'package:music_app/features/home/widget/custom_title_home_page.dart';
import 'package:music_app/models/songs_models.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomePageController homePageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePageController = HomePageController();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(AlignmentManagersX.x0_20,AlignmentManagersY.y_0_98),
              end: Alignment(AlignmentManagersX.x_0_20,AlignmentManagersY.y0_98),
              colors:[
                ColorManagers.kPrimaryColor,
                ColorManagers.kDarkBlueColor,
              ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomTextFieldToHomePage(
              onSubmitted: (value){
                homePageController.searchAboutSong(value);
              },
              OnTapClear: (){
                  setState(() {
                    homePageController.tappOnsearchField = false;
                    FocusScope.of(context).unfocus();
                  });
              },
              isSearch: true,
              onTap: (){
                setState(() {
                  homePageController.tappOnsearchField = true;
                });
              },
            ),
            if(homePageController.tappOnsearchField == true)
              CustomSearchRefactore(
                listSearch: homePageController.listSearchIndex,
              ),
            CustomTitleHomePage(
              title: "Recommended music",
            ),
            SizedBox(height: HeightValuesManagers.h22,),
            CustomRecommenedMusic(
              listSongsModels: ConstantValue.listQuran,
              onTap: (index){
                HomePageController.navigatorToPlayMusicScreen(context: context, index: index);
              },
            ),
          ]
        ),
      ),
    );
  }
}
