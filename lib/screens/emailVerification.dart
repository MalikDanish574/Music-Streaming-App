import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:music_streaming_app/screens/login.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/widgets/CustomAppbar.dart';
import 'package:music_streaming_app/widgets/button.dart';
import 'package:pinput/pinput.dart';

class EmailVerification extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(children: [
        SizedBox(
            height: 337.h,
          ),
        CustomAppBar(Title: "Email Verification"),
        SizedBox(
            height: 101.h,
          ),
        Text(
            "Please Check Email For Verification Code",
            style: TextStyle(
                color: textgrey, fontSize: 15, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 36.h,
          ),

          Padding(
            padding:  EdgeInsets.only(left:29.w,right:29.w),
            child: Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              defaultPinTheme: PinTheme(
                height: 82.h,
                width: 71.w,
                textStyle: TextStyle(
                  color: whitetext,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(15),
                  color: textfieldbg )
              ),
            ),
          ),
          SizedBox(
            height: 26.h,
          ),

           Text(
            "Resend",
            style: TextStyle(
                color: textgrey, fontSize: 15, fontWeight: FontWeight.bold),
          ),

          SizedBox(
            height: 100.h,
          ),
          button(onTap: (){
            Get.to(()=>Login());
          },
            btnTitle:"Verify"),
           
      ]),
    );
  }

}