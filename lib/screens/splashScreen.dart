import 'dart:async';

import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/screens/login.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => Login()
            )
         )
         
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body :Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 363.h,left: 158.w,right: 156.5.w),
            child: Image.asset(logo),
          ),

          Text("MUSIC",style: TextStyle(
            fontSize: 42,
            color: logotext
          ),)
        ],
      )
    );
  }
}