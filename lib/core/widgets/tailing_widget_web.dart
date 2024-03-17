import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/custom_text_button.dart';
import 'package:leap/view/constants/extensions.dart';

class TailingWidget extends StatelessWidget {
  const TailingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: 279.h,
      color: AppColors.tailingWidgetColor,
      child: Padding(
        padding: EdgeInsets.only(
          right: 244.w,
          left: 244.w,
          top: 29.h,
          bottom: 16.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AssetPath.logo,
              height: 40.h,
              width: 64.w,
            ),
            Row(
              children: [
                SizedBox(
                  width: 270.w,
                  child: Text(
                    '''Explore a world of possibilities with our internships, jobs website. Connect with dynamic opportunities, gain hands-on-experience, and propel your career forward.''',
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                SizedBox(width: 136.w),
                SizedBox(
                  height: 140.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Important Links',
                        style: TextStyle(
                          color: AppColors.mainFontColor,
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomTextButton(
                        text: 'About US',
                        textColor: AppColors.primaryColor,
                        textSize: 16.sp,
                        textFamily: 'Poppins',
                      ),
                      CustomTextButton(
                        text: 'Contact US',
                        textColor: AppColors.primaryColor,
                        textSize: 16.sp,
                        textFamily: 'Poppins',
                      ),
                      CustomTextButton(
                        text: 'Blog',
                        textColor: AppColors.primaryColor,
                        textSize: 16.sp,
                        textFamily: 'Poppins',
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 136.w),
                SizedBox(
                  height: 140.h,
                  width: (130 + 130 + 8).sp,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Download Leap Application Now',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            AssetPath.googlePlay,
                            fit: BoxFit.fill,
                            width: 130.w,
                            height: 40.h,
                          ),
                          SizedBox(width: 8.w),
                          Image.asset(
                            AssetPath.appStore,
                            fit: BoxFit.fill,
                            width: 130.w,
                            height: 40.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppColors.breakLineColor,
            ),
            Center(
              child: Text(
                '@ Leap 2024',
                style: TextStyle(
                  color: AppColors.tailingFontColor,
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
