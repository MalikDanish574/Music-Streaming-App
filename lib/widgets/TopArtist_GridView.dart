
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/screens/artist_profile_screen.dart';
import 'package:music_streaming_app/utils/colors.dart';


import '../../Utils/Images.dart';

class TopArtistGridView extends StatelessWidget {
  const TopArtistGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(()=>ArtistProfileScreen());
      },
      child: Container(
        child: Column(
          children: [
            Container(
              width: 428.w,
              height: 700.h,
              child: GridView.builder(
                itemCount: 9,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.85,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 35),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 800.h,
                    width: 428.w,
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            topartist,
                            fit: BoxFit.fill,
                            height: 102,
                            width: 102,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Alan Walker',
                          style: TextStyle(
                            color: whitetext,
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '6.4M Followers',
                          style: TextStyle(
                            color: textgrey,
                            fontFamily: 'Poppins',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 19.h,
                          width: 79.w,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [btnbg, btnbg2],
                                end: Alignment.bottomCenter,
                                begin: Alignment.topCenter,
                              ),
                              borderRadius: BorderRadius.circular(3)),
                          child: Center(
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                color: whitetext,
                                fontFamily: 'Poppins',
                                fontSize: 9.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
