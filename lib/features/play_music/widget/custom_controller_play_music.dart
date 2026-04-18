import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_manager.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
class CustomControllerTOPlayMusic extends StatelessWidget {
  const CustomControllerTOPlayMusic({super.key, required this.onChanged, required this.value});
  final ValueChanged<double> onChanged;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.shuffle,size: 25, fontWeight: FontWeight.bold, color: ColorManagers.kWhiteColor),
              Container(
                  height: HeightValuesManagers.h36,
                  width: HeightValuesManagers.h36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                          begin: Alignment(0,-1),
                          end: Alignment(0,1),
                          colors: [
                            ColorManagers.kThirdPrimaryColor,
                            ColorManagers.kLightWhiteColor.withOpacity(0.54),
                          ])
                  ),
                  child: Icon(Icons.skip_previous, color: ColorManagers.kWhiteColor)
              ),
              Container(
                height: HeightValuesManagers.h60,
                width: HeightValuesManagers.h60,
                decoration: BoxDecoration(
                  color: ColorManagers.kLightWhiteColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child:   Icon(Icons.pause, size: 35, color: ColorManagers.kWhiteColor),
              ),
              Container(
                  height: HeightValuesManagers.h36,
                  width: HeightValuesManagers.h36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                          begin: Alignment(0,-1),
                          end: Alignment(0,1),
                          colors: [
                            ColorManagers.kThirdPrimaryColor,
                            ColorManagers.kLightWhiteColor.withOpacity(0.54),
                          ])
                  ),
                  child: Icon(Icons.skip_next, color: ColorManagers.kWhiteColor)
              ),
              Icon(Icons.repeat,size: 25, fontWeight: FontWeight.bold, color: ColorManagers.kWhiteColor),
            ]
        ),
        SizedBox(height: HeightValuesManagers.h22,),
        Slider(
            activeColor: ColorManagers.kLightWhiteColor,
            inactiveColor: ColorManagers.kLight3BlueColor,
            value: value, onChanged: onChanged),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("2:05",style: TextStyle(color: ColorManagers.kLightWhiteColor,fontSize: 12,fontWeight: FontWeight.w500),),
              Text("3:20",style: TextStyle(color: ColorManagers.kLightWhiteColor,fontSize: 12,fontWeight: FontWeight.w500),),
            ],
          ),
        ),
      ],
    );
  }
}
