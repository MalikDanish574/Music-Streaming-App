
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';


class TabBarPLD extends StatelessWidget {
  const TabBarPLD({Key? key}) : super(key: key);

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
                      'Overview',
                      style: TextStyle(
                        color: whitetext,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: FittedBox(
                    child: Text(
                      'Specifcation',
                      style: TextStyle(
                        color: whitetext,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: FittedBox(
                    child: Text(
                      'Reviews',
                      style: TextStyle(
                        color: whitetext,
                        fontFamily: 'Poppins',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: FittedBox(
                    child: Center(
                      child: Text(
                        'About',
                        style: TextStyle(
                          color: whitetext,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 10.sp,
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
