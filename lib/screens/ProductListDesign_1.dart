
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/Utils/Images.dart';
import 'package:music_streaming_app/screens/notifications.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/widgets/TabBarPld.dart';

import '../widgets/overviewbody.dart';


class ProductListDesign1 extends StatelessWidget {
  const ProductListDesign1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: background,
          title: Text(
            'Products Name',
            style: TextStyle(
              color: whitetext,
              fontWeight: FontWeight.w700,
              fontSize: 15.sp,
              fontFamily: 'Poppins',
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(()=>NotificationScreen());
                },
                icon: Icon(
                  Icons.notifications_none,
                )),
                SizedBox(width: 10.w,)
          ],
          leading: IconButton(onPressed: () {
            Get.back();
          }, icon: Icon(Icons.arrow_back)),
        ),
        body: Container(
          
          child: Padding(
            padding: EdgeInsets.only(left: 24.w, right: 27.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  Image.asset(
                    detail,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Container(
                    height: 282.h,
                    width: 377.w,
                    decoration: BoxDecoration(
                      color: containerbg,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 19.h),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 22.w, right: 185.w),
                              child: Text(
                                ' Products',
                                style: TextStyle(
                                  color: whitetext,
                                  fontFamily: 'Poppins',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 24.w,
                              ),
                              child: Text(
                                ' \$900',
                                style: TextStyle(
                                  color: whitetext,
                                  fontFamily: 'Poppins',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 22.w,
                              ),
                              child: Icon(
                                Icons.star,
                                size: 14,
                                color: textgrey,
                              ),
                            ),
                            SizedBox(
                              width: 1.5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 232.w,
                              ),
                              child: Text(
                                ' 4.9 (200 Reviews)',
                                style: TextStyle(
                                  color: whitetext,
                                  fontFamily: 'Poppins',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 22.w),
                          child: Text(
                            ' Short Description',
                            style: TextStyle(
                              color: whitetext,
                              fontFamily: 'Poppins',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 23.w, left: 25.w),
                          child: Text(
                            'Description is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley.',
                            style: TextStyle(
                              color: textgrey,
                              fontFamily: 'Poppins',
                              fontSize: 9.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 307.w, left: 22.w),
                          child: Text(
                            ' Colors',
                            style: TextStyle(
                              color: whitetext,
                              fontFamily: 'Poppins',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 23,
                              ),
                              child: Container(
                                height: 38.h,
                                width: 39.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    color: containerbgRed),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                              ),
                              child: Container(
                                height: 38.h,
                                width: 39.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    color: lightpurple),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                              ),
                              child: Container(
                                height: 38.h,
                                width: 39.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    color: black),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  TabBarPLD(),
                  SizedBox(
                    height: 150.h,
                    width: 428.w,
                    child: TabBarView(children: [
                      OverViewPLD(),
                      OverViewPLD(),
                      OverViewPLD(),
                      OverViewPLD()
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
