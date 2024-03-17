import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/colors.dart';

class SkillLogo extends StatelessWidget {
  const SkillLogo({Key? key, required this.pathText, required this.logoName})
      : super(key: key);
  final String pathText;
  final String logoName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(children: [
        Image.asset(
          pathText,
          width: 129.w,
          height: 129.h,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          logoName,
          style: TextStyle(
            fontSize: 16.sp,
            color: AppColors.primaryColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}
