import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class FoodChatWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 77.h,
        width: 377.w,
        padding: EdgeInsets.only(left: 10.w,top: 10.h,bottom: 10.h),
        decoration: BoxDecoration(
          color: containerbg,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
          return Container(
            child:Row(
              children: [

              ],
            ),
          );
          
        })
        );
        


        // child:Row(
        //   children: [
        //     CircleAvatar(
        //       radius: 30.r,
        //       backgroundImage: AssetImage(image),
        //     ),
        //     Padding(
        //       padding:  EdgeInsets.only(left: 15.w,top: 10.h,bottom: 10),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(title,
        //             style: TextStyle(
        //               color:whitetext,
        //               fontSize: 15.sp,
        //             ),),
        //           SizedBox(height: 5.h,),
        //           Text('Message Here',
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 10.sp,
        //             ),),
        //         ],
        //       ),
        //     ),
        //     Padding(
        //       padding:  EdgeInsets.only(left: 175.w,top: 10.h,right: 14.w),
        //       child: Column(

        //         crossAxisAlignment: CrossAxisAlignment.end,
        //         children: [
        //           Text('10:20 PM',
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 10.sp,
        //             ),),
        //           SizedBox(height: 5.h,),
        //         ],
        //       ),
        //     ),

        //   ],
        // )
   
  }
}
