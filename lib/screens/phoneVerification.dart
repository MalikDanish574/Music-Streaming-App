import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/smsVerification.dart';
import 'package:music_streaming_app/utils/colors.dart';

import '../widgets/CustomAppbar.dart';
import '../widgets/button.dart';

class PhoneVerification extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(children: [
          SizedBox(
              height: 337.h,
            ),
          CustomAppBar(Title: "Phone Verification"),
          SizedBox(
              height: 101.h,
            ),
          Text(
              "Please Enter Phone Number For Verification",
              style: TextStyle(
                  color: textgrey, fontSize: 15, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 36.h,
            ),
        
            Card(
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
                      hintText: "Phone No.",
                      hintStyle: TextStyle(
                        fontSize: 19,
                        color: whitetext,
                      ),
                      prefixIcon: Icon(Icons.call,color: iconwhite,)
                    ),
                    
                    style: TextStyle(
                      color: whitetext
                    ),
                  ),
                ),
            ),
        
          
        
            SizedBox(
              height: 145.h,
            ),
            button(onTap: (){
              Get.to(()=>SmsVerification());
            },
              btnTitle:"Send"),
           
              ]),
        ),
    );
  }

}