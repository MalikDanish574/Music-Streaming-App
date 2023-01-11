// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/widgets/appbar.dart';
import 'package:music_streaming_app/widgets/searchBar.dart';

import '../utils/colors.dart';
import '../widgets/cardWidget.dart';


class ShopByCategory extends StatelessWidget {
  const ShopByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
     
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 49.h,),
            Appbar(),
            SizedBox(height: 17.h,),
           SearchBAr(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Categories',
              style: TextStyle(
                color: whitetext,
                fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20.h,
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: 710.h,
                child: GridView.builder(
                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30.h,
                      crossAxisSpacing: 26.h,
                      childAspectRatio: 1), itemBuilder: (BuildContext context, index) {
                        return Container(
                          child: CardWidget(onTap: null),
                        );
                        
                      }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
