import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';
import 'package:music_streaming_app/widgets/TabBarMusic.dart';

import '../widgets/appbar.dart';
import '../widgets/music_recommend.dart';
import '../widgets/searchBar.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Appbar(),
              SizedBox(
                height: 29.h,
              ),
              SearchBAr(),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Frequent',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'Poppins',
                          color: whitetext),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'Poppins',
                          color: textgrey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              Container(
                child: Stack(
                  children: [
                    Container(
                      height: 196.h,
                      width: 377.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: containerbg),
                      child: Image.asset(
                        drumpic,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 37.w, top: 150.h),
                      child: Text(
                        'The Drum - ft. Sofia',
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontFamily: 'Poppins',
                            color: whitetext,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 37.w, top: 167.h),
                      child: Text(
                        'Alan Walker',
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontFamily: 'Poppins',
                            color: whitetext),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 160.h, left: 321.w, right: 12.w, bottom: 12.h),
                      child: Image.asset(
                        musicIcon,
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 17.h,),
              TabBarMusic(),
              SizedBox(
                height: 500.h,
                width: 428.w,
                child: TabBarView(children: [
                  MusicRecommend(),
                  MusicRecommend(),
                  MusicRecommend(),
                  MusicRecommend()
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
