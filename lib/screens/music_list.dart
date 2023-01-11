import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/widgets/appbar.dart';
import 'package:music_streaming_app/widgets/searchBar.dart';
import '../utils/colors.dart';
import '../widgets/music_list_widgets.dart';
class MusicList extends StatelessWidget {
  const MusicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 49.h,),
            Appbar(),
            SizedBox(height: 20.h,),
            SearchBAr(),
            
            SizedBox(height: 20.h,),
            Padding(
              padding:EdgeInsets.only(right: 25.w,left:26.w),
              child: Text('Songs',
                style: TextStyle(
                color:whitetext,
                fontSize: 15.sp,
              ),),
            ),
            SizedBox(height: 20.h,),
           Padding(
               padding:EdgeInsets.only(right: 25.w,left:26.w),
             child: Container(
              
               width: 380.w,
               height: 800.h,
               child: ListView.builder(
                 itemCount: 5,
                 scrollDirection: Axis.vertical,
                 cacheExtent: 100,
                 itemBuilder: (BuildContext context, int index) {
                 return const MusicLitViewWidgets();
               },),
             ),
           ),
          ],
        ),
      )
    );
  }
}
