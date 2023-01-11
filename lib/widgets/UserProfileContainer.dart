import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';

class User_profile_container extends StatelessWidget {
  final String title;
  final Icon icon;

  User_profile_container({
    required this.title,
    required this.icon
  });
  @override
  Widget build(Object context) {
    return Container(
      height: 68.h,
      width: 377.w,
      decoration: BoxDecoration(
        color: containerbg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SizedBox(width: 18.w,),
                icon,
                SizedBox(width: 37.w,),
                Text(title,style: TextStyle(
                  color: whitetext,
                  fontSize: 14,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.normal
                ),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: iconblackcolor,)),
               
        ],
      ),
    );
  }
}
