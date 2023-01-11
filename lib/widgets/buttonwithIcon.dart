import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';

class buttonWithIcon extends StatelessWidget {
  final String btnTitle;
  final Icon icon;
  final VoidCallback onTap;

  buttonWithIcon(
      {required this.btnTitle, required this.icon, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 29.w, right: 29.w),
      height: 82.h,
      decoration: BoxDecoration(
          color: btnbgGrey, borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(
              width: 27.w,
            ),
            icon,
            SizedBox(
              width: 23.w,
            ),
            Text(
              btnTitle,
              style: TextStyle(color: btntext, fontSize: 19),
            ),
          ],
        ),
      ),
    );
  }
}
