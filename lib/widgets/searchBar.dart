import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';


class SearchBAr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.only(left: 26.w, right: 25.w),
                child: Container(
                  
                  height: 47.h,
                  width: 377.w,
                  child: TextField(
                    decoration: InputDecoration(
                     fillColor: textfieldbg,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      prefixIcon: Icon(Icons.search,color: iconLightGrey,),
                                  
                    ),
                  ),
                ),
              );
  }

}