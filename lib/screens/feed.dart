import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/screens/feedtabbar/chatView.dart';
import 'package:music_streaming_app/screens/feedtabbar/feedView.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/widgets/appbar.dart';
import 'package:music_streaming_app/widgets/searchBar.dart';



class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 49.h,),
            Appbar(),
             SizedBox(height: 25.h,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 39.w),
                child: Container(
                    height: 50.w,
                    width: 350.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: containerbg,
                    ),
                    child: TabBar(
                        onTap: (index) {},
                        indicatorColor: btnbgGrey,
                        unselectedLabelColor: btnbgGrey,
                        tabs: [
                          Tab(
                            child: Row(
                              children: [
                                Container(
                                  height: 42.h,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [btnbg, btnbg2],
                                      end: Alignment.bottomCenter,
                                      begin: Alignment.topCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  width: 135.w,
                                  child: Center(
                                    child: Text(
                                      'Feed',
                                      style: TextStyle(
                                        color: whitetext,
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Container(
                                  height: 42.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  width: 135.w,
                                  child: Center(
                                    child: Text(
                                      'Chat',
                                      style: TextStyle(
                                        color: whitetext,
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]))),
                          SizedBox(height: 25.h,),
                        SearchBAr(),
                          
            Container(
              height: 650.h,
              width: 428.w,
              child: const TabBarView(children: [
                feedView(),
                ChatView(),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
