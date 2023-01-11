
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';




class TabBarMusic extends StatelessWidget {
  const TabBarMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 25.h,
          ),
          Container(
            height: 20.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: background,
            ),
            child: TabBar(
              onTap: (index) {},
              indicatorColor: btnbg2,
              unselectedLabelColor: containerbg,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: whitetext,
              tabs: [
                Tab(
                  child: FittedBox(
                    child: Text(
                      'Recommend',
                      style: TextStyle(
                        color: whitetext,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: FittedBox(
                    child: Text(
                      'Popular',
                      style: TextStyle(
                        color: whitetext,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: FittedBox(
                    child: Text(
                      'News',
                      style: TextStyle(
                        color: whitetext,
                        fontFamily: 'Poppins',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: FittedBox(
                    child: Center(
                      child: Text(
                        'Favorite',
                        style: TextStyle(
                          color: whitetext,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h)
        ],
      ),
    );
  }
}
