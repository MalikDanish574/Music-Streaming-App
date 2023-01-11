import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/screens/loginTabBar/signin.dart';
import 'package:music_streaming_app/screens/loginTabBar/signup.dart';
import 'package:music_streaming_app/utils/colors.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(length: 2, child: Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 337.h),
            child: TabBar(
             labelColor:labeltabtext,
             unselectedLabelColor: unselectedlabeltabtext,
        indicatorColor:Color.fromARGB(115, 31, 30, 30),
              tabs:[
              Container(
                child: Text("Login",style: TextStyle(
                  fontSize: 26,
                ),),
              ),

              Container(
                child: Text("Sign Up",style: TextStyle(
                  fontSize: 26,
                ),),
              )
            ]),
          ),
          Expanded(child: TabBarView(children: [Signin(),Signup()],))
        ],
      ),
   )
   );
   
   
   
  }

}