import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';

class button extends StatelessWidget{
  final String btnTitle;
  final VoidCallback onTap;

  button({
    required this.btnTitle,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 29.w, right: 29.w),
        height: 64.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [btnbg
                  ,btnbg2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(8)
                    ),
                
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: onTap,
                  child: Center(
                    child:  Text(btnTitle,style: TextStyle(
                      color: btntext,
                      fontSize: 26,
                    ),),
                  ),
                )
    );
  }

}