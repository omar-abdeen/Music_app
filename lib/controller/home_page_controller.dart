import 'package:flutter/material.dart';
import 'package:music_app/core/resources/constant_value.dart';
import 'package:music_app/core/resources/routes_managers.dart';
import 'package:music_app/models/songs_models.dart';

class HomePageController {
  bool tappOnsearchField = false;
  List<SongsModels>listSearchIndex = [];

  static void navigatorToPlayMusicScreen({required BuildContext context , required int index}){
    Navigator.pushNamed(context,RoutesName.kPlayMusicScreen , arguments: index);

  }
  static void navigatorToPop({required BuildContext context}) {
    Navigator.pop(context);
  }
  void searchAboutSong( String value) {
    List<SongsModels> a = ConstantValue.listQuran.where((element) => element.song.toLowerCase().contains(value)).toList();
    listSearchIndex.clear();
    listSearchIndex = a;
    for(int i = 0 ; i < a.length ; i++){
      print(a[i].song);
    }
  }
}
