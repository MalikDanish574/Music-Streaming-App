import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/widgets/appbar.dart';
import 'package:music_streaming_app/widgets/searchBar.dart';
import '../widgets/music_list_widgets.dart';
import '../widgets/profile_screen_widgets.dart';
class ArtistProfileScreen extends StatelessWidget {
  const ArtistProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: background,
        body: SafeArea(
          child:
          Column(
            children: [
              Appbar(),
              SizedBox(height: 29.h,),
            Container(
              height: 245.h,
              width: 377.w,
              decoration: BoxDecoration(
                color: containerbg,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: 18.w,top: 30.h),
                child: ProfileScreenWidgets(),
              ),
            ),
              SizedBox(height: 10.h,),
              TabBar(
          indicatorColor: selectedCustomBar,
                indicatorSize: TabBarIndicatorSize.label,
                onTap: (index) {},
                tabs: [
                  Tab(
                    child: Text('Tracks',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xff97999B),
                      ),

                    ),
                  ),
                  Tab(
                    child: Text('Albums',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xff97999B),
                      ),),
                  ),
                  Tab(
                    child: Text('Reviews',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xff97999B),
                      ),
                    ),
                  ),
                  Tab(
                    child: Text('About',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xff97999B),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 490.h,
                width: 400.w,
                child: TabBarView(
                    children: [
                      SizedBox(
                    width: 380.w,
                    height: 800.h,
                    child: ListView.builder(
                      itemCount: 5,
                      cacheExtent: 100,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return const MusicLitViewWidgets();
                      },),
                  ),
                      SizedBox(
                        width: 380.w,
                        height: 800.h,
                        child: ListView.builder(
                          itemCount: 5,
                          cacheExtent: 100,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return const MusicLitViewWidgets();
                          },),
                      ),
                      SizedBox(
                        width: 380.w,
                        height: 800.h,
                        child: ListView.builder(
                          itemCount: 5,
                          cacheExtent: 100,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return const MusicLitViewWidgets();
                          },),
                      ),
                      SizedBox(
                        width: 377.w,
                        height: 800.h,
                        child: ListView.builder(
                          itemCount: 5,
                          cacheExtent: 200,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return  MusicLitViewWidgets();
                          },),
                      ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
