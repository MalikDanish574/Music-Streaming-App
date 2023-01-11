import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';
import 'package:music_streaming_app/widgets/UserProfileContainer.dart';
import 'package:music_streaming_app/widgets/appbar.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          SizedBox(
            height: 49.h,
          ),
          Appbar(),
          SizedBox(
            height: 28.h,
          ),
          Container(
            height: 271.h,
            width: 377.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: containerbg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 21.h, right: 13.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.mode_edit_outlined,
                        color: iconblackcolor,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 14.w, right: 20.w),
                      child: Container(
                        height: 124.h,
                        width: 124.w,
                        child: Image.asset(
                          profile,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 17.h,
                          width: 65.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Containerbgwhite,
                          ),
                          child: Center(
                            child: Text(
                              "Upgrade",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 8,
                                  fontFamily: 'poppins'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        Text(
                          "My Profile",
                          style: TextStyle(
                              color: whitetext,
                              fontSize: 18,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "America",
                          style: TextStyle(
                              color: textgrey,
                              fontSize: 10,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "54",
                                  style: TextStyle(
                                      color: whitetext,
                                      fontSize: 15,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(
                                      color: textgrey,
                                      fontSize: 10,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 29.w,
                            ),
                            Column(
                              children: [
                                Text(
                                  "68",
                                  style: TextStyle(
                                      color: whitetext,
                                      fontSize: 15,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  "Likes",
                                  style: TextStyle(
                                      color: textgrey,
                                      fontSize: 10,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 29.w,
                            ),
                            Column(
                              children: [
                                Text(
                                  "6.8k",
                                  style: TextStyle(
                                      color: whitetext,
                                      fontSize: 15,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  "Views",
                                  style: TextStyle(
                                      color: textgrey,
                                      fontSize: 10,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 36.w,
                    ),
                    Column(
                      children: [
                        Text(
                          "\$140.61",
                          style: TextStyle(
                              color: whitetext,
                              fontSize: 15,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(
                              color: textgrey,
                              fontSize: 10,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 41.w,
                    ),
                    Container(
                      height: 56,
                      width: 1,
                      color: textgrey,
                    ),
                    SizedBox(
                      width: 41.w,
                    ),
                    Column(
                      children: [
                        Text(
                          "12",
                          style: TextStyle(
                              color: whitetext,
                              fontSize: 15,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "Songs",
                          style: TextStyle(
                              color: textgrey,
                              fontSize: 10,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 41.w,
                    ),
                    Container(
                      height: 56,
                      width: 1,
                      color: textgrey,
                    ),
                    SizedBox(
                      width: 41.w,
                    ),
                    Column(
                      children: [
                        Text(
                          "\$140.61",
                          style: TextStyle(
                              color: whitetext,
                              fontSize: 15,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "Products",
                          style: TextStyle(
                              color: textgrey,
                              fontSize: 10,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h,),
          User_profile_container(
            icon: Icon(
              Icons.favorite_border_rounded,
              color: iconblackcolor,
            ),
            title: "My Favourites",
          ),
          SizedBox(height: 10.h,),
          User_profile_container(
            icon: Icon(
              Icons.payment_rounded,
              color: iconblackcolor,
            ),
            title: "Payments",
          ),
          SizedBox(height: 10.h,),
          User_profile_container(
            icon: Icon(
              Icons.music_note_rounded,
              color: iconblackcolor,
            ),
            title: "My Songs",
          ),
          SizedBox(height: 10.h,),
          User_profile_container(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: iconblackcolor,
            ),
            title: "My Products",
          ),
          SizedBox(height: 30.h,),

          Container(
      height: 68.h,
      width: 377.w,
      decoration: BoxDecoration(
        color: containerbg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SizedBox(width: 18.w,),
              Icon(
              Icons.exit_to_app_rounded,
              color: iconblackcolor,
            ),
                SizedBox(width: 37.w,),
                Text("Logout",style: TextStyle(
                  color: textRed,
                  fontSize: 14,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.normal
                ),),
                
                
               
        ],
      ),
    )
        ],
      ),
    );
  }
}
