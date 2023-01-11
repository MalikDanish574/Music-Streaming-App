import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/forgetPassword.dart';
import 'package:music_streaming_app/screens/homeScreen.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/widgets/button.dart';
import 'package:music_streaming_app/widgets/customBottomBar.dart';
import 'package:music_streaming_app/widgets/password.dart';
import 'package:music_streaming_app/widgets/textfield.dart';

import '../login.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            textfield(
                icon: Icon(
                  Icons.person_outline,
                  color: iconwhite,
                ),
                title: "Username"),
            SizedBox(
              height: 28.h,
            ),
            Password(
                icon: Icon(
                  Icons.lock_open_rounded,
                  color: iconwhite,
                ),
                title: "Password"),
            SizedBox(
              height: 17.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){
                    Get.to(()=>ForgetPassword());
                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(color: textgrey, fontSize: 13),
                  ),
                ),
                SizedBox(
                  width: 29.w,
                ),
              ],
            ),
            SizedBox(
              height: 121.h,
            ),
            button(onTap: (){
            Get.to(()=>CustomBottombar());
          }, 
              btnTitle: "Login"),
           
           
          ],
        ),
      ),
    );
  }
}
