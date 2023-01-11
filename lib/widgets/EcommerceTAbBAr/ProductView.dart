import 'package:flutter/material.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/ProductDesignList.dart';
import 'package:music_streaming_app/screens/shopByCategory.dart';

import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Container(
            width: 426.w,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 26.w, right: 274.w),
                  child: Text(
                    'Popular Products',
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
                  width: 377.w,
                  height: 230.h,
                  child: ListView.separated(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 200.h,
                        width: 460.w,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 26,
                                ),
                                Image.asset(
                                  music,
                                  fit: BoxFit.cover,
                                  height: 181.h,
                                  width: 377.w,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 299.w, top: 5.h),
                              child: Text(
                                'Product Name',
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
                                      left: 43.w, right: 343.w, top: 5.h),
                                  child: Text(
                                    'Rs:3000',
                                    style: TextStyle(
                                      color: textgrey,
                                      fontFamily: 'Poppins',
                                      fontSize: 12.sp,
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
                        'Shop By Category',
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
                      padding: EdgeInsets.only(right: 29.w),
                      child: InkWell(
                        onTap: () {
                              Get.to(()=>ShopByCategory());
                            },
                        child: Text(
                          'View All',
                          style: TextStyle(
                            color: textgrey,
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 158.h,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 26.w),
                        child: Container(
                          height: 158.h,
                          width: 137.w,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    shirt,
                                    fit: BoxFit.cover,
                                    height: 158.h,
                                    width: 137.w,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 26.w,
                      ),
                      child: Text(
                        'New Products',
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
                      padding: EdgeInsets.only(right: 29.w),
                      child: InkWell(
                        onTap: () {
                          Get.to(()=>ProductListDesign());
                        },
                        child: Text(
                          'View All',
                          style: TextStyle(
                            color: textgrey,
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 158.h,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 26.w),
                        child: Container(
                          height: 158.h,
                          width: 137.w,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    headphone,
                                    fit: BoxFit.cover,
                                    height: 158.h,
                                    width: 137.w,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
