import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/widgets/searchBar.dart';

import '../widgets/TopArtist_GridView.dart';


class Top_Artist extends StatelessWidget {
  const Top_Artist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: background,
        title: Text(
          'Products Name',
          style: TextStyle(
            color: whitetext,
            fontWeight: FontWeight.w700,
            fontSize: 15.sp,
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
              ))
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: background,
          child: Column(
            children: [
              SizedBox(height: 10.h),
              SearchBAr(),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 303.w),
                child: Text(
                  'Top Artist',
                  style: TextStyle(
                    color: whitetext,
                    fontFamily: 'Poppins',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w),
                child: SizedBox(child: TopArtistGridView()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
