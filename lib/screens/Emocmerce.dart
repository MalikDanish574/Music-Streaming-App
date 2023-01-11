import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:music_streaming_app/utils/colors.dart';
import 'package:music_streaming_app/widgets/appbar.dart';

import 'package:music_streaming_app/widgets/searchBar.dart';

import '../widgets/EcommerceTAbBAr/ProductView.dart';
import '../widgets/EcommerceTAbBAr/ServicesView.dart';



class Ecommerence extends StatefulWidget {
  Ecommerence({Key? key}) : super(key: key);

  @override
  State<Ecommerence> createState() => _EcommerenceState();
}

class _EcommerenceState extends State<Ecommerence> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: background,
       
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 49.h,
              ),
               Appbar(),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 39.w),
                child: Container(
                  height: 50.w,
                  width: 350.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: containerbg,
                  ),
                  child: TabBar(
                    onTap: (index) {},
                    indicatorColor: btnbgGrey,
                    unselectedLabelColor: btnbgGrey,
                    tabs: [
                      Tab(
                        child: Row(
                          children: [
                            Container(
                              height: 42.h,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [btnbg, btnbg2],
                                  end: Alignment.bottomCenter,
                                  begin: Alignment.topCenter,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: 135.w,
                              child: Center(
                                child: Text(
                                  'Products',
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
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Container(
                              height: 42.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              width: 135.w,
                              child: Center(
                                child: Text(
                                  'Services',
                                  style: TextStyle(
                                    color: whitetext,
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 29.h,
              ),
             SearchBAr(),
              SizedBox(
                height: 14.h,
              ),
              SizedBox(
                height: 645.h,
                width: 426.w,
                child: TabBarView(children: [ProductView(), ServicesView()]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
