import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_manager.dart';

class CustomTitleHomePage extends StatelessWidget {
  const CustomTitleHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        left: 34,
        right: 34,
      ),
      child: Text(
          title,
          style:TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: ColorManagers.kWhiteColor,)
      ),
    );
  }
}
