import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/stories_screen.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';
import 'package:music_streaming_app/widgets/floating_actionbutton.dart';

class feedView extends StatelessWidget {
  const feedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Stories',
                style: TextStyle(
                  color: whitetext,
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 84.w,
                        height: 84.h,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          myStory,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        right: 0.w,
                        bottom: 7.h,
                        child: Container(
                            height: 15.h,
                            width: 15.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: btnbg2,
                            ),
                            child: Icon(
                              Icons.add,
                              color: iconwhite,
                              size: 10.sp,
                            )),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(()=>StoriesScreen());
                    },
                    child: SizedBox(
                        height: 80.h,
                        width: 300.w,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                height: 84.h,
                                width: 84.w,
                                decoration: BoxDecoration(shape: BoxShape.circle),
                                child: Image.asset(
                                  Stories,
                                  fit: BoxFit.contain,
                                ),
                              );
                            })),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Explore',
                style: TextStyle(
                  color: whitetext,
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                  height: 124.h,
                  width: 377.w,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: Container(
                            height: 124.h,
                            width: 111.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset(
                              explore,
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      })),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Feeds',
                style: TextStyle(
                  color: whitetext,
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 362.h,
                width: 377.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: containerbg),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      height: 195.h,
                      width: 346.w,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: Image.asset(
                        feed2,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16.w, left: 16.w),
                      child: Row(children: [
                        Image.asset(
                          Stories,
                          height: 46.h,
                          width: 46.w,
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          'Justin Bieber',
                          style: TextStyle(
                            color: whitetext,
                            fontSize: 15.sp,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert_rounded,
                          color: iconblackcolor,
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingButton(),
    );
  }
}
