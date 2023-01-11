import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/emailVerification.dart';
import 'package:music_streaming_app/screens/phoneVerification.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/widgets/CustomAppbar.dart';
import 'package:music_streaming_app/widgets/buttonwithIcon.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          SizedBox(
            height: 337.h,
          ),
          CustomAppBar(Title: "Forget Password"),
           SizedBox(
            height: 89.h,
          ),
          Text(
            "Select Method for OTP Verification",
            style: TextStyle(
                color: textgrey, fontSize: 15, fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: 38.h,
          ),
          buttonWithIcon(onTap: () {
            Get.to(()=>EmailVerification());
          },
              btnTitle: "Verify by Email",
              icon: Icon(
                Icons.email_outlined,
                color: iconwhite,
              )),
               SizedBox(
            height: 29.h,
          ),
          buttonWithIcon(onTap: (){
            Get.to(()=>PhoneVerification());
          },
              btnTitle: "Sms To Phone",
              icon: Icon(
                Icons.perm_phone_msg_outlined,
                color: iconwhite,
              )),
          
        ],
      ),
    );
  }
}
