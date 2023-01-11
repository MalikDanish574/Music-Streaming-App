import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';
class ProfileScreenWidgets extends StatelessWidget {
  const ProfileScreenWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(myStory,height: 124.h,width: 124.w,fit: BoxFit.fill,),
            SizedBox(width: 20.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 17.h,
                  width: 65.w,
                  decoration: BoxDecoration(
                     gradient: LinearGradient(colors: [btnbg,btnbg2],
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(3.r)
                  ),
                  child: Center(
                    child: Text('PREMIUM',
                      style: TextStyle(
                          color:whitetext,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w500
                      ),),
                  ),
                ),
                SizedBox(height: 11.h,),
                Text('ALAN WALKER',
                  style: TextStyle(
                    color:whitetext,
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 3.h,),
                Text('America',
                  style: TextStyle(
                    color: textgrey,
                    fontSize: 10.sp,

                  ),),
                SizedBox(height: 16.h,),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('54',
                          style: TextStyle(
                            color: whitetext,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),),
                        SizedBox(height: 2.h,),
                        Text('Tracks',
                          style: TextStyle(
                            color: textgrey,
                            fontSize: 10.sp,

                          ),),
                      ],
                    ),
                    SizedBox(width: 25.w,),
                    Column(
                      children: [
                        Text('4',
                          style: TextStyle(
                            color: whitetext,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),),
                        SizedBox(height: 2.h,),
                        Text('Albums',
                          style: TextStyle(
                            color: textgrey,
                            fontSize: 10.sp,

                          ),),
                      ],
                    ),
                    SizedBox(width: 20.w,),
                    Column(
                      children: [
                        Text('5.06k',
                          style: TextStyle(
                            color: whitetext,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),),
                        SizedBox(height: 2.h,),
                        Text('Tracks',
                          style: TextStyle(
                            color: textgrey,
                            fontSize: 10.sp,

                          ),),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 24.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 31.h,
              width: 150.w,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [btnbg,btnbg2],
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(6.r)
              ),
              child: Center(
                child: Text('Chat',
                  style: TextStyle(
                      color: whitetext,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500
                  ),),
              ),
            ),
            Container(
              height: 31.h,
              width: 150.w,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [btnbg,btnbg2],
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(6.r)
              ),
              child: Center(
                child: Text('Follow',
                  style: TextStyle(
                      color: whitetext,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500
                  ),),
              ),
            ),


          ],
        )

      ],
    );
  }
}
