import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/feed.dart';
import 'package:music_streaming_app/screens/music.dart';
import 'package:music_streaming_app/screens/userProfile.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';
import 'package:music_streaming_app/widgets/appbar.dart';
import 'package:music_streaming_app/widgets/searchBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 49.h,
          ),
          Appbar(),
          SizedBox(
            height: 18.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 25.w, left: 26.w),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(
                          color: whitetext,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
            height: 5.h,
          ),
                    Text(
                      "Nouman Imran",
                      style: TextStyle(
                          color: whitetext,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Spacer(),
                InkWell(
                  
                  onTap: () {
                    Get.to(()=>UserProfile());
                  },
                  child: Image.asset(profile))
              ],
            ),
          ),
          SizedBox(
            height: 31.h,
          ),
          SearchBAr(),
          SizedBox(
            height: 26.h,
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            height: 181.h,
            width: 377.w,
            child: Image.asset(
              home,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 26.h,
          ),
          Container(
            margin: EdgeInsets.only(right: 26.w, left: 25.w),
            child: Row(
              children: [
                Text(
                  "Frequent Songs",
                  style: TextStyle(
                    color: whitetext,
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(()=>MusicScreen());
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: textgrey,
                      fontSize: 13,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          SizedBox(
            width: 377.w,
            height: 158.h,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(right:15.w),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    height: 158.h,
                    width: 137.w,
                    child: 
      
                            Image.asset(frequentSongs,
                              fit: BoxFit.fill,
                              height: 158.h,
                              width: 137.w,
                            ),
                         
                     
                )
                );
              },
            ),
          ),
          SizedBox(
            height: 26.h,
          ),
          Container(
            margin: EdgeInsets.only(right: 26.w, left: 25.w),
            child: Row(
              children: [
                Text(
                  "Feeds",
                  style: TextStyle(
                    color: whitetext,
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(()=>Feed());
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: textgrey,
                      fontSize: 13,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
      
          Container(
      
            height: 200.h,
            width: 377.w,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(8),
            color: textfieldbg),
            child: Padding(
              padding: EdgeInsets.fromLTRB(11.w, 11.h ,11.w, 11.h),
              child: Container(
                height: 178.h,
                width: 354.w,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: Image.asset(feed,fit: BoxFit.fill,),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
