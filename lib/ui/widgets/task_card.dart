import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/font.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 60.h,
          width: 60.h,
          decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(12.r)),
          child: Center(
            child: Text(
              "06 AM",
              style: Font.myCustomFont(fsize: 16),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.symmetric(vertical: 10),
          width: 0.65.sw,
          height: 60.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              gradient: AppColors.cardGradient),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(
                "Take a walk outside",
                style: Font.myCustomFont(color: Colors.white, fsize: 16),
              ),
              Text(
                "6:00 AM - 7:00 AM",
                style: Font.myCustomFont(color: Colors.grey, fsize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
