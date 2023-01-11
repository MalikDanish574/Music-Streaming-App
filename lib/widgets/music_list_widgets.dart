import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/Music_Screen.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';
import 'package:music_streaming_app/widgets/Music_player.dart';

class MusicLitViewWidgets extends StatelessWidget {
  const MusicLitViewWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=>Music_Screen());
      },
      child: Padding(
        padding:EdgeInsets.only(left: 15.w,right: 15.w),
        child: Container(
          margin: EdgeInsets.only(bottom: 10.h),
          height: 72.h,
          width: 377.w,
          decoration: BoxDecoration(
            color: containerbg,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            children: [
              SizedBox(width: 13.w,),
              Image.asset(musicImage,height: 52.h,width: 52.w,),
              SizedBox(width: 15.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h,),
                  Text('Faded',
                    style: TextStyle(
                      color: whitetext,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                    ),),
                  Text('Alan Walker',
                    style: TextStyle(
                      color:textgrey,
                      fontSize: 10.sp,
                    ),),
                  Text('3:08',
                    style: TextStyle(
                      color:textgrey,
                      fontSize: 10.sp,
                    ),),
                ],
              ),
              Spacer(),
                Icon(Icons.more_vert_rounded,color: background,size: 35.sp,),
             
                Icon(Icons.play_arrow_outlined,color: background,size: 35.sp,
                ),
              SizedBox(width: 14.w,)
    
    
            ],
    
          ),
        ),
      ),
    );
  }
}
