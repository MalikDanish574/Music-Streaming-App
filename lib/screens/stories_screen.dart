import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/utils/images.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: background,
      body: Stack(
        children: [
          Image.asset( bgImage,height: 926.h,width: 428.w,fit: BoxFit.fill,),
          Padding(
            padding:  EdgeInsets.only(top: 43.0.h,left: 15.w),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: (){
                    Get.back();
                  },
                  icon:  const Icon(Icons.arrow_back,color: whitetext,),
                ),
                Image.asset(Stories,height: 52.h,width: 52.w,),
                SizedBox(width: 15.w,height: 10.h,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.h,),
                    Text('Hamad khan',
                      style: TextStyle(
                        color: whitetext,fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text('8h ago',
                      style: TextStyle(
                        color: whitetext,fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ),
          Positioned(
            top: 499.h,
            right: 20.w,
            child:  Column(
              children: [
                IconButton(
                onPressed: (){},
                icon:   Icon(Icons.favorite,color:whitetext,size: 40.sp,),
          ),
                Text('45.8k',style: TextStyle(color:whitetext,fontSize: 15.sp),)
              ],
            ),),
          Positioned(
            top: 588.h,
            right: 20.w,
            child:  Column(
              children: [
                IconButton(
                  onPressed: (){
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),topRight: Radius.circular(30.r)),
                            ),
                            context: context, builder:(BuildContext context){
                          return  FractionallySizedBox(
                            heightFactor: 0.9,
                            child: Column(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 36.0.w,top: 21.h),
                                  child: Row(
                                    children: [
                                      Text('Comment',style: TextStyle(color:textgrey,fontSize: 15.sp),),
                                      SizedBox(width: 250.w,),
                                      IconButton(
                                        onPressed: (){
                                          Get.back();
                                        }, icon: const Icon(Icons.clear,color: iconblackcolor,),),
                                    ],
                                  ),

                                ),

                                Padding(
                                  padding: EdgeInsets.only(bottom: 0.h,left: 10.w,right: 10.w,top: 330.h),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.emoji_emotions_outlined),
                                      SizedBox(width: 4.w,),

                                      SizedBox(
                                        height:50.h,
                                        width:375.w,
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            hintText: 'Type a comment',hintStyle: TextStyle(
                                            color:textgrey,
                                          ),
                                            border: InputBorder.none,
                                            suffixIcon:Icon(Icons.send_outlined,color: iconblackcolor,),
                                            prefixIcon:Icon(Icons.alternate_email_outlined,color: iconblackcolor,),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),

                          );
                        });
                      },


                  icon:   Icon(Icons.message_rounded,color: whitetext,size: 40.sp,),
                ),
                Text('80.20k',style: TextStyle(color: whitetext,fontSize: 15.sp),)
              ],
            ),),
          Positioned(
            top: 670.h,
            right: 20.w,
            child:  Column(
              children: [
                IconButton(
                  onPressed: (){},
                  icon:   Icon(Icons.share,color:whitetext,size: 40.sp,),
                ),
                Text('Share',style: TextStyle(color:whitetext,fontSize: 15.sp),),

              ],
            ),),
          Positioned(
            left: 20.w,
            top: 791.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('My Travel Photography',
                    style: TextStyle(
                      color: whitetext,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 10.h,),
                Text("Yesterday I just traveled across the world and find a beautiful place &\nI decided to take some photos of.... Read more",
                    style: TextStyle(
                      color: whitetext,
                      fontSize: 10.sp,
                    ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
