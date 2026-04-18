import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_manager.dart';

class CustomTextFieldToHomePage extends StatelessWidget {
  const CustomTextFieldToHomePage({
    super.key, required this.onTap,  this.isSearch = false, required this.OnTapClear, required this.onSubmitted,
  });
  final GestureTapCallback onTap;
  final GestureTapCallback OnTapClear;
  final bool isSearch;
  final ValueChanged<String> onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top:51,
        left: 31,
        right: 31,
      ),
      child: TextField(
          onSubmitted: onSubmitted,
          onTap: onTap,
          style: TextStyle(
            color: ColorManagers.kWhiteColor,
          ),
          decoration: InputDecoration(
            suffixIcon: (isSearch == true ? InkWell(
                onTap: OnTapClear,
                child: Icon(Icons.clear,)) : null ),
            contentPadding: EdgeInsets.all(10),
            fillColor: ColorManagers.kLightWhiteColor,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            hintText: "Search Song",
            hintStyle: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 20,right: 10),
              child: Icon(Icons.search,color: ColorManagers.kWhiteColor,),
            ),

          )
      ),
    );
  }
}
