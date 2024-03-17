import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/main_button_web.dart';

class JoinUsContainer extends StatelessWidget {
  const JoinUsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryBackGroundColor,
      width: 952.w,
      height: 287.h,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.containerColor,
              ),
              width: 952.w,
              height: 247.h,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 40.w,
                  top: 32.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Join us today without any hesitation',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 30.sp,
                      ),
                    ),
                    Text(
                      'Empower your journey and unlock opportunities.',
                      style: TextStyle(
                        color: AppColors.mainFontColor,
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                      ),
                    ),
                    Text(
                      'Register now for a transformative experience awaits you!',
                      style: TextStyle(
                        color: AppColors.mainFontColor,
                        fontFamily: 'Poppins',
                        fontSize: 14.sp,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: MainButtonWeb(
                            text: 'Create Account',
                            width: 232.w,
                            height: 48.h,
                            textSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            textColor: AppColors.backGroundColor,
                            color: AppColors.primaryColor,
                            borderColor: AppColors.primaryColor,
                            radius: 5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.h, horizontal: 8.w),
                          child: MainButtonWeb(
                            text: 'For Employers',
                            width: 232.w,
                            height: 48.h,
                            textSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            textColor: AppColors.backGroundColor,
                            color: AppColors.primaryColor,
                            borderColor: AppColors.primaryColor,
                            radius: 5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 60.w,
            bottom: 0,
            child: Image.asset(
              fit: BoxFit.fill,
              AssetPath.human,
              width: 173.w,
              height: 287.h,
            ),
          ),
        ],
      ),
    );
  }
}
