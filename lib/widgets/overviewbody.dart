import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';


class OverViewPLD extends StatelessWidget {
  const OverViewPLD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              color: containerbg,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: 23.w, top: 19.h, bottom: 32.h, left: 25.w),
                    child: Text(
                      'Description is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley.',
                      style: TextStyle(
                        color: textgrey,
                        fontFamily: 'Poppins',
                        fontSize: 9.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              Container(
                height: 41.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [btnbg, btnbg2],
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                width: 177.w,
                child: Center(
                  child: Text(
                    'Chat with seller',
                    style: TextStyle(
                      color: whitetext,
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.h,
              ),
              Container(
                height: 41.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [btnbg, btnbg2],
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                width: 177.w,
                child: Center(
                  child: Text(
                    'Add To Cart',
                    style: TextStyle(
                      color: whitetext,
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
