import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/utils/colors.dart';

class CustomAppBar extends StatelessWidget{
  final String Title;

  CustomAppBar({
    required this.Title
  }
    
  );
  @override
  Widget build(BuildContext context) {
  return Row(
    children: [
      SizedBox(width: 15.w,),
      IconButton(onPressed: (){
        Get.back();
      }, icon: Icon(Icons.arrow_back,color: iconwhite,)),
      SizedBox(width: 31.w,),
      Text(Title,style: TextStyle(
        color: whitetext,
        fontSize: 26,
        fontWeight: FontWeight.w700
      ),),
      
    ],
  );
  }

}