import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/homeScreen.dart';
import 'package:music_streaming_app/screens/login.dart';
import 'package:music_streaming_app/screens/loginTabBar/signin.dart';
import 'package:music_streaming_app/widgets/Container.dart';
import 'package:music_streaming_app/widgets/customBottomBar.dart';

import '../../utils/colors.dart';
import '../../widgets/button.dart';
import '../../widgets/password.dart';
import '../../widgets/textfield.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(children: [
           SizedBox(
              height: 51.h,
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
                 textfield(
                icon: Icon(
                  Icons.email_outlined,
                  color: iconwhite,
                ),
                title: "Email"),
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
              height: 46.h,
            ),

                 button(
                  onTap: (){
            Get.to(()=>CustomBottombar());
          },
                  btnTitle: "Signup"),
              
              
              
        ]),
        
    
      ),
    );
  }

}