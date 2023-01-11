import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/widgets/appbar.dart';
import 'package:music_streaming_app/widgets/searchBar.dart';

import '../widgets/PDL_GridView.dart';


class ProductListDesign extends StatelessWidget {
  const ProductListDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
            body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 49.h,
              ),
              Appbar(),
              SizedBox(
                height: 17.h,
              ),
             SearchBAr(),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 334.w),
                child: Text(
                  ' Products',
                  style: TextStyle(
                    color: whitetext,
                    fontFamily: 'Poppins',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              GridViewProductList()
            ],
          ),
        ),
      ),
    );
  }
}
