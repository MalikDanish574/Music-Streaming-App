import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/notifications.dart';
import 'package:music_streaming_app/utils/colors.dart';

class Appbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Container(
  margin: EdgeInsets.only(right: 25.w,left: 26.w),
  child:  Row(
    children: [
      InkWell(
        onTap: (){
          Get.back();
        },
        child: Icon(Icons.arrow_back,color: iconwhite,)),
      Spacer(),
      InkWell(
        onTap: () {
          Get.to(()=>NotificationScreen());
        },
        child: Icon(Icons.notifications_none_rounded,color: iconwhite,))
    ],
  ),
 );
  }

}