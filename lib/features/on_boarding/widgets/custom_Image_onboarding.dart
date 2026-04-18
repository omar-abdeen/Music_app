import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_manager.dart';

class CustomImageToOnboarding extends StatelessWidget {
  const CustomImageToOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          SizedBox(
              width: double.infinity,
              height: 408,
              //color: Colors.red,
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/Listen_man.png")
              )
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 199,
              //color: Colors.red,
              decoration: BoxDecoration(gradient: LinearGradient(
                  begin:const Alignment(0,1),
                  end: const Alignment(0,-1),
                  colors: [
                    ColorManagers.kPrimaryColor,
                    ColorManagers.kLight4BlueColor.withOpacity(0.0),

                  ])),
            ),
          )
        ],
      ),

    );
  }
}
