import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:music_streaming_app/Utils/Images.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/widgets/seekbar.dart';

import '../widgets/players.dart';

class Music_Screen extends StatelessWidget {
  const Music_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: background,
        
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.queue_music_outlined,
              ))
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Container(
            height: 215.w,
              width: 216.w,
            child: Image.asset(
              musicplayer,
              height: 215.w,
              width: 216.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 55.h),
            child: Center(
              child: Text(
                'Black or White',
                style: TextStyle(
                  color: whitetext,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Center(
              child: Text(
                'Michael Jackson   Album - Dangerous',
                style: TextStyle(
                  color: whitetext,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Center(
              child: Text(
                '232/327',
                style: TextStyle(
                  color: whitetext,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.sp,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SliderWidget(),
          SizedBox(
            height: 20.h,
          ),
          player()
        ],
      ),
    );
  }
}
