import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/core/resources/width_values_managers.dart';

class CustomAppbarPlayMusic extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbarPlayMusic({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: ColorManagers.kPrimaryColor,
      leading: IconButton(onPressed: onPressed,icon: Icon(Icons.arrow_left, color: ColorManagers.kWhiteColor,)),
      title: Text("Now playing", style: TextStyle(color: ColorManagers.kWhiteColor,fontWeight: FontWeight.w500,fontSize: 18),),
      centerTitle: true,
      actions: [
        Icon(Icons.share_sharp, color: ColorManagers.kWhiteColor,),
        SizedBox(width: WidthValuesManagers.w22,),
        Icon(Icons.more_vert, color: ColorManagers.kWhiteColor,),
        SizedBox(width: WidthValuesManagers.w13,),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
