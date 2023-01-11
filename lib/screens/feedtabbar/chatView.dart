import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/chats_screen.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, top: 20.h),
          child: Column(children: [
            SizedBox(
                height: 700.h,
                width: 377.w,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                        onTap: (){
                          Get.to(()=>ChatsScreen());
                        },
                        child: Container(
                            margin: EdgeInsets.only(bottom: 10.h),
                            height: 72.h,
                            width: 377.w,
                            decoration: BoxDecoration(
                                color: containerbg,
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                      width: 14.w,
                                    ),
                                Image.asset(
                                  chatLogo,
                                  height: 52.h,
                                  width: 52.w,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(
                                      width: 14.w,
                                    ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Nouman',
                                      style: TextStyle(
                                        color: whitetext,
                                        fontFamily: 'Poppins',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Text(
                                      'Message here',
                                      style: TextStyle(
                                        color: whitetext,
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '10:30 pm',
                                      style: TextStyle(
                                        color: whitetext,
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Container(
                                      height: 21.h,
                                      width: 21.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              colors: [btnbg, btnbg2],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter),
                                              ),
                                           child:  Center(
                                             child: Text(
                                      '1',
                                      
                                      style: TextStyle(
                                        color: whitetext,
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                           ),  
                                    )
                                  ],
                                ),
                                SizedBox(
                                      width: 14.w,
                                    ),
                              ],
                            )),
                      );
                    })),
          ]),
        ),
      ),
    );
  }
}
