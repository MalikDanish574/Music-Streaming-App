import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/Top_Artist.dart';
import 'package:music_streaming_app/screens/music_list.dart';
import 'package:music_streaming_app/utils/images.dart';


import '../utils/colors.dart';

class MusicRecommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 25.w,left: 26.w),
      child: Column(
        children: [
          Container(
            height: 280.h,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 31.w, bottom: 15.h),
                          child: Container(
                            width: 121.w,
                            height: 108.h,
                            child: Image.asset(
                              Alon,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alone',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                  color: whitetext),
                            ),
                            Text(
                              'Marshmello',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                  color: textgrey),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: iconwhite,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 31,
          ),
          InkWell(
            onTap: () {
              Get.to(()=>MusicList());
            },
            child: Text(
              'View All',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                  color: whitetext),
            ),
          ),
          SizedBox(
            height: 17.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Artist',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    color: whitetext),
              ),
              InkWell(
                onTap: () {
                  Get.to(()=>Top_Artist());
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      color: textgrey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          SizedBox(
            height: 90.h,
            width: 469.w,
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.black,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(right: 79.w),
                  child: Container(
                    height: 70.h,
                    width: 70.w,
                    child: Image.asset(artistProfile),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
