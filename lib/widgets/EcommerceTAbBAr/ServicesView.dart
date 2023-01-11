import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/shopByCategory.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';


class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 26.w, ),
                  child: Text(
                    'Recent Work',
                    style: TextStyle(
                      color: whitetext,
                      fontFamily: 'Poppins',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                Container(
                  height: 230.h,
                  width: 1000.w,
                  child: ListView.separated(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 200.h,
                        width: 460.w,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 26,
                                  ),
                                  Image.asset(
                                    singer,
                                    fit: BoxFit.cover,
                                    height: 181.h,
                                    width: 377.w,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:29 .w, top: 8.h),
                              child: Text(
                                'Live Dubai Festival - Alan Walker',
                                style: TextStyle(
                                  color: whitetext,
                                  fontFamily: 'Poppins',
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 29.w, right: 78, top: 2.h),
                                  child: Text(
                                    'Walkers, Im looking forward to the day that well be able to be at a concert again.',
                                    style: TextStyle(
                                      color: textgrey,
                                      fontFamily: 'Poppins',
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 26.w,
                      ),
                      child: Text(
                        'Our Services',
                        style: TextStyle(
                          color: whitetext,
                          fontFamily: 'Poppins',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Spacer(),
                   Padding(
                    padding: EdgeInsets.only(
                        right: 25.w,
                      ),
                      child: Text(
                        'View All',
                        style: TextStyle(
                          color: black,
                          fontFamily: 'Poppins',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Container(
                    height: 350.h,
                    width: 428.w,
                    child: GridView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        crossAxisSpacing: 23.w
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 300.h,
                          width: 428.w,
                          child: Stack(
                            children: [
                              Container(
                                height: 164.h,
                                width: 177.w,
                                child: Image.asset(
                                  person,
                                  fit: BoxFit.fill,
                                  height: 164.h,
                                  width: 177.w,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 12.w,
                                    top: 133.h,
                                    right: 75.w,
                                    bottom: 11.h),
                                child: Text(
                                  'Guitarist',
                                  style: TextStyle(
                                    color: whitetext,
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
