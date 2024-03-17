import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';

class TopEmployerCard extends StatelessWidget {
  const TopEmployerCard({
    Key? key,
    required this.logoString,
    required this.name,
    required this.location,
    required this.jobs,
  }) : super(key: key);

  final String logoString;
  final String name;
  final String location;
  final String jobs;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      width: 300.w,
      child: Card(
        elevation: 0,
        color: AppColors.backGroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Image.asset(
                logoString,
                height: 100.h,
                width: 300.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.mainFontColor,
                  fontFamily: 'Poppins',
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: Image.asset(
                      AssetPath.location,
                      height: 16.h,
                      width: 13.w,
                    ),
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.mainFontColor,
                      fontFamily: 'Poppins',
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
              child: Row(
                children: [
                  Text(
                    jobs,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.mainFontColor,
                      fontFamily: 'Poppins',
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 10.w)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
