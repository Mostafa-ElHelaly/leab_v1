import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class JobsPosted extends StatelessWidget {
  const JobsPosted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return Padding(
          padding: EdgeInsets.all(8.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '1500+',
                style: TextStyle(
                  overflow: TextOverflow.clip,
                  color: AppColors.backGroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 72.sp,
                ),
              ),
              Text(
                ' Jobs posted week ago',
                style: TextStyle(
                  color: AppColors.backGroundColor,
                  fontSize: 72.sp,
                ),
              ),
            ],
          ),
        );
      },
      tablet: (context) {
        return Padding(
          padding: EdgeInsets.all(8.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '1500+',
                style: TextStyle(
                  overflow: TextOverflow.clip,
                  color: AppColors.backGroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.sp,
                ),
              ),
              Text(
                ' Jobs posted week ago',
                style: TextStyle(
                  color: AppColors.backGroundColor,
                  fontSize: 50.sp,
                ),
              ),
            ],
          ),
        );
      },
      mobile: (context) {
        return Padding(
          padding: EdgeInsets.all(8.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   '1500+',
              //   maxLines: 2,
              //   style: TextStyle(
              //     overflow: TextOverflow.ellipsis,
              //     color: AppColors.backGroundColor,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 25.sp,
              //   ),
              // ),
              Expanded(
                child: Text(
                  '1500+ Jobs posted week ago',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.backGroundColor,
                    fontSize: 24.sp,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
