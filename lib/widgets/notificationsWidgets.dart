import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/images.dart';

class NotificationsWidget extends StatelessWidget {
  final IconData? unread;
  final String profilePic;
  final String title;
  final String subTitle;
  final String thumbnail;

  const NotificationsWidget(
      {super.key,
      required this.unread,
      required this.profilePic,
      required this.title,
      required this.subTitle,
      required this.thumbnail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.sp,
       
      ),
      child: Row(
        children: [
          Icon(
            unread,
            size: 12.h,
            color: unreadIconColor,
          ),
          SizedBox(
            width: 11.w,
          ),
          Image.asset(
            profilePic,
          ),
          SizedBox(
            width: 21.w,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color:whitetext,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: textgrey,
                    ),
                  ),
                ],
              )
            ],
          ),
          Spacer(),
          Image.asset(thumbnail),
        ],
      ),
    );
  }
}
