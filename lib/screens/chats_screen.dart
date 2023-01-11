import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';
class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        leading:  IconButton(
          onPressed: (){
            Get.back();
          },
          icon:  const Icon(Icons.arrow_back,color: iconwhite,),
        ),
        elevation: 0,
      centerTitle: false,
      title:  Row(
        children: [
          Image.asset(Stories,height: 46.h,width: 46.w,),
          SizedBox(width: 10.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name',
              style: TextStyle(
                color:whitetext,fontSize: 15.sp,
                fontWeight: FontWeight.w700,
              ),
              ),
              Text('Last Seen today at 11:53PM',
              style: TextStyle(
                color: whitetext,fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
              ),
            ],
          )
        ],
      ),
        actions: [
          IconButton(
            onPressed: (){},
            icon:   Icon(Icons.more_vert_rounded,color: iconblackcolor,size: 35.sp,),
          ),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(height: 1.h,thickness: 1,color:iconLightGrey,),
          Container(
            margin: EdgeInsets.only(left: 25.w,top: 49.h),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            color: containerbg),
            height: 36.h,
            width: 197.w,
          ),
          Container(
            margin: EdgeInsets.only(left: 25.w,top: 5.h),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            color: containerbg),
            height: 36.h,
            width: 197.w,
          ),

          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
            margin: EdgeInsets.only(right: 25.w,top:40.h),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            color: containerbg),
            height: 36.h,
            width: 197.w,
          ),
            ],
          )
          

        ],
      ),
    );
  }
}
