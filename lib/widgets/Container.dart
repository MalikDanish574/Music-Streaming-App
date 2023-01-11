
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';


class CustomContainer extends StatelessWidget {
  String Title;
  IconData acon;
  CustomContainer({
    Key? key,
    required this.Title,
    required this.acon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49.h,
      width: 173.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r), color: containerbg),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                acon,
                color: background,
              )),
          Spacer(),
          Text(
            Title,
            style: TextStyle(
              fontSize: 13.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              color: whitetext,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_right,
            color: background,
          ),
        ],
      ),
    );
  }
}
