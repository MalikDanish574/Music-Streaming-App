
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/ProductListDesign_1.dart';
import 'package:music_streaming_app/utils/colors.dart';
import '../../Utils/Images.dart';

class GridViewProductList extends StatelessWidget {
  const GridViewProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: Container(
              height: 695.h,
              width: 428.w,
              child: GridView.builder(
                itemCount: 15,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 20.w,
                  mainAxisSpacing: 10.h
                  
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(

                    height: 300.h,
                    width: 428.w,
                    child: InkWell(
                      onTap: () {
                        Get.to(()=>ProductListDesign1());
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 182.h,
                            width: 172.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Image.asset(
                              guitar,
                              fit: BoxFit.fill,
                              height: 182.h,
                              width: 172.w,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 129.w,
                                top: 9.h,
                                right: 10.w,
                                bottom: 158.h),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.favorite)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.w,
                              top: 144.h,
                              right: 98.w,
                            ),
                            child: Text(
                              'Headphones',
                              style: TextStyle(
                                color: whitetext,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.w,
                              top: 158.h,
                              right: 129.w,
                              bottom: 9.h,
                            ),
                            child: Text(
                              '\$40.87',
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
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
