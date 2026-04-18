import 'package:flutter/material.dart';
import 'package:music_app/features/home/screens/home_page.dart';

class HomeController {
  static List<Icon> homeIcon = [
    Icon(Icons.format_align_left,),
    Icon(Icons.home_filled),
    Icon(Icons.heart_broken),
    Icon(Icons.format_list_numbered_rounded),
    Icon(Icons.settings),

  ];
  static List<Widget> homePages = [
    Scaffold(body: Center(child:Text("format_align_left" , style: TextStyle(fontSize: 30),)),),
    HomePage(),
    Scaffold(body: Center(child:Text("heart_broken" , style: TextStyle(fontSize: 30),)),),
    Scaffold(body: Center(child:Text("format_list_numbered_rounded" , style: TextStyle(fontSize: 30),)),),
    Scaffold(body: Center(child:Text("settings" , style: TextStyle(fontSize: 30),)),),

  ];
}
