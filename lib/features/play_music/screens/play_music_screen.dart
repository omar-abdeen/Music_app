import 'package:flutter/material.dart';
import 'package:music_app/controller/home_page_controller.dart';
import 'package:music_app/core/resources/alignment_managers.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/core/resources/constant_value.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/features/play_music/widget/custom_appBar_play_music.dart';
import 'package:music_app/features/play_music/widget/custom_controller_play_music.dart';
import 'package:music_app/features/play_music/widget/custom_songs_details_play_music.dart';
import 'package:music_app/features/play_music/widget/custom_tools2_play_music.dart';
import 'package:music_app/features/play_music/widget/custom_tools_play_music.dart';

class PlayMusicScreen extends StatefulWidget {
  const PlayMusicScreen({super.key});

  @override
  State<PlayMusicScreen> createState() => _PlayMusicScreenState();
}

class _PlayMusicScreenState extends State<PlayMusicScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:CustomAppbarPlayMusic(
        onPressed: () {
          HomePageController.navigatorToPop(context: context);
        },
      ),
        body: Container(
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
          child: SafeArea(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Spacer(),
                    CustomSongsDetailsPlayMusic(
                      songsModels: ConstantValue.listQuran[index],
                    ),
                    SizedBox(height: HeightValuesManagers.h28,),
                    CustomControllerTOPlayMusic(
                      onChanged: (value) {
                        print("value");
                      },
                      value: 0.5,
                    ),
                    CustomToolsPlayMusic(),
                  CustomTools2PlayMusic(
                    songsModels: ConstantValue.listQuran[index],
                  ),

                  ]
                ),
              ),
          ),
        ),
    );
  }
}
