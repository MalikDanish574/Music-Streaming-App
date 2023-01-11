import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';
import 'package:music_streaming_app/widgets/appbar.dart';
import 'package:music_streaming_app/widgets/searchBar.dart';
import '../widgets/Container.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:background,
        
        body: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(children: [
               SizedBox(
                height: 49.h,
              ),
              Appbar(),
              SizedBox(
                height: 20.h,
              ),
           SearchBAr(),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 153.h,
                width: 376.w,
                decoration: BoxDecoration(color:containerbg,
                borderRadius: BorderRadius.circular(8)),
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 17.w, right: 130.w, top: 30.h),
                      child: Text(
                        ' Profile Name',
                        style: TextStyle(
                          color: whitetext,
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: 212.w, left: 17.w, top: 58.h),
                      child: Text(
                        ' Subtitle',
                        style: TextStyle(
                          color: textgrey,
                          fontFamily: 'Poppins',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: 16.w, top: 17.h, left: 230),
                      child: Container(
                        height: 84.h,
                        width: 84.w,
                        child: Image.asset(Justin,fit: BoxFit.fill
                        ,)),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 109.h, right: 17.w, left: 281.w),
                      child: Container(
                        height: 25.h,
                        width: 68.w,
                        decoration: BoxDecoration(
                            color: whitetext,
                            borderRadius: BorderRadius.circular(6.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.exit_to_app,
                              size: 10,
                            ),
                            Text(
                              ' Logout',
                              style: TextStyle(
                                color: textRed,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 320.w, top: 14.h),
                child: Text(
                  ' General',
                  style: TextStyle(
                    color: whitetext,
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Row(
                children: [
                  CustomContainer(Title: 'Account', acon: Icons.person),
                  SizedBox(
                    width: 23.w,
                  ),
                  CustomContainer(
                    Title: 'Apperence',
                    acon: Icons.remove_red_eye_sharp,
                  ),
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              Row(
                children: [
                  CustomContainer(Title: 'Payment', acon: Icons.payment),
                  SizedBox(
                    width: 23.w,
                  ),
                  CustomContainer(Title: 'Password', acon: Icons.lock),
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              Row(
                children: [
                  CustomContainer(
                      Title: 'Notifications', acon: Icons.notifications),
                  SizedBox(
                    width: 23.w,
                  ),
                  CustomContainer(Title: 'Support', acon: Icons.headphones),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 310.w, top: 14.h),
                child: Text(
                  ' My Songs',
                  style: TextStyle(
                    color: whitetext,
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Row(
                children: [
                  CustomContainer(
                      Title: 'Option 1', acon: Icons.music_note_sharp),
                  SizedBox(
                    width: 23.w,
                  ),
                  CustomContainer(
                      Title: 'Option 2', acon: Icons.remove_red_eye),
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              Row(
                children: [
                  CustomContainer(Title: 'Option 3', acon: Icons.payment),
                  SizedBox(
                    width: 23.w,
                  ),
                  CustomContainer(Title: 'Option 4', acon: Icons.lock),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 290.w, top: 14.h),
                child: Text(
                  'My Products',
                  style: TextStyle(
                    color: whitetext,
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Row(
                children: [
                  CustomContainer(
                      Title: 'Option 1', acon: Icons.shopping_cart_sharp),
                  SizedBox(
                    width: 23.w,
                  ),
                  CustomContainer(
                      Title: 'Option 3', acon: Icons.remove_red_eye),
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              Row(
                children: [
                  CustomContainer(Title: 'Option 2', acon: Icons.payment),
                  SizedBox(
                    width: 23.w,
                  ),
                  CustomContainer(Title: 'Option 4', acon: Icons.lock),
                ],
              ),
            ]),
          ),
        ));
  }
}
