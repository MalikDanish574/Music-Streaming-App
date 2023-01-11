// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/shopByCategory.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';

import '../widgets/notificationsWidgets.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        leading: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: iconwhite,
                size: 18,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Notifications',
                        style: TextStyle(
                          color: whitetext,
                            fontSize: 20.sp, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'You Have 13 New Notifications',
                        style: TextStyle(
                          color: whitetext,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.add_road,
                        size: 20.h,
                        color: iconwhite,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Today ',
                style: TextStyle(
                  color: whitetext,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 397.w,
                height: 280.h,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return NotificationsWidget(
                      unread: Icons.circle,
                      profilePic: profilePic6,
                      subTitle: '045 - Profile - 2h ago',
                      title: 'Someone Liked Your Photo',
                      thumbnail: thumbnail,
                    );
                  },
                ),
              ),
              Text(
                'This Week ',
                style: TextStyle(
                  color: whitetext,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 397.w,
                height: 280.h,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return NotificationsWidget(
                      unread: null,
                      profilePic: profilePic4,
                      subTitle: '045 - Profile - 2h ago',
                      title: 'Someone Liked Your Photo',
                      thumbnail: thumbnail,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
