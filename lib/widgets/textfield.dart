import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';

class textfield extends StatelessWidget{
  final String title;
  final Icon icon;

  textfield({
    required this.title,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: textfieldbg,
      margin: EdgeInsets.only(left: 29.w, right: 29.w),
      child: Container(
        height: 83.h,
                decoration: BoxDecoration(
                  color:textfieldbg,
                  borderRadius: BorderRadius.circular(15)
                    ),
                
                alignment: Alignment.centerLeft,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: title,
                    hintStyle: TextStyle(
                      fontSize: 19,
                      color: whitetext,
                    ),
                    prefixIcon: icon
                  ),
                  
                  style: TextStyle(
                    color: whitetext
                  ),
                ),
              ),
    );
  }

}