import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_streaming_app/utils/images.dart';

class CardWidget extends StatelessWidget {
  final VoidCallback? onTap;

  const CardWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        cate1,
        width: 172.w,
        height: 182.h,
      ),
    );
  }
}
