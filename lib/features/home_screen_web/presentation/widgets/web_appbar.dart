import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/widgets/custom_dropdown.dart';
import 'package:leap/core/widgets/custom_text_button.dart';
import 'package:leap/core/widgets/main_button_web.dart';
import 'package:leap/view/constants/extensions.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WebAppbar extends StatefulWidget {
  const WebAppbar({Key? key}) : super(key: key);

  @override
  State<WebAppbar> createState() => _WebAppbarState();
}

class _WebAppbarState extends State<WebAppbar> {
  final List<String> recoursesList = ['Recourses', 'Recourse1', 'Recourse2'];
  final List<String> optionsList = ['Options', 'Option1', 'Option2'];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ScreenTypeLayout.builder(
        tablet: (context) {
          return Row(
            children: [
              IconButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
              SizedBox(width: context.screenWidth * .05),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0.w, vertical: 4.h),
                child: Image.asset(
                  AssetPath.logo,
                  width: 64.w,
                  height: 20.h,
                ),
              ),
              const Spacer(),
              // Sign Up
              MainButtonWeb(
                text: 'Sign Up',
                textColor: AppColors.primaryColor,
                textSize: 12.sp,
                color: AppColors.backGroundColor,
                height: 20.h,
                width: 100.w,
                borderColor: AppColors.primaryColor,
                radius: 5,
              ),
              // Sign In
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: MainButtonWeb(
                  text: 'Sign In',
                  textColor: AppColors.primaryColor,
                  textSize: 12.sp,
                  color: AppColors.backGroundColor,
                  height: 20.h,
                  width: 100.w,
                  borderColor: AppColors.primaryColor,
                  radius: 5,
                ),
              ),
              // For Employers
              MainButtonWeb(
                text: 'For Employers',
                textColor: AppColors.primaryColor,
                textSize: 12.sp,
                color: AppColors.backGroundColor,
                height: 20.h,
                width: 100.w,
                borderColor: AppColors.primaryColor,
                radius: 5,
              ),
              SizedBox(
                width: context.screenWidth * .05,
              ),
            ],
          );
        },
        mobile: (context) {
          return Row(
            children: [
              IconButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
              SizedBox(width: context.screenWidth * .05),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0.w, vertical: 4.h),
                child: Image.asset(
                  AssetPath.logo,
                  width: 64.w,
                  height: 20.h,
                ),
              ),
              const Spacer(),
              // Sign Up
              MainButtonWeb(
                text: 'Sign Up',
                textColor: AppColors.primaryColor,
                textSize: 4.sp,
                color: AppColors.backGroundColor,
                height: 20.h,
                width: 40.w,
                borderColor: AppColors.primaryColor,
                radius: 5,
              ),
              // Sign In
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: MainButtonWeb(
                  text: 'Sign In',
                  textColor: AppColors.primaryColor,
                  textSize: 4.sp,
                  color: AppColors.backGroundColor,
                  height: 20.h,
                  width: 40.w,
                  borderColor: AppColors.primaryColor,
                  radius: 5,
                ),
              ),
              // For Employers
              MainButtonWeb(
                text: 'For Employers',
                textColor: AppColors.primaryColor,
                textSize: 4.sp,
                color: AppColors.backGroundColor,
                height: 20.h,
                width: 40.w,
                borderColor: AppColors.primaryColor,
                radius: 5,
              ),
              SizedBox(
                width: context.screenWidth * .05,
              ),
            ],
          );
        },
        desktop: (context) {
          return Row(children: [
            SizedBox(
              width: 80.w,
            ),
            // Logo
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 4.h),
              child: Image.asset(
                AssetPath.logo,
                width: 64.w,
                height: 40.h,
              ),
            ),
            //Internship
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              child: CustomTextButton(
                text: 'Internships',
                textWeight: FontWeight.w500,
                textSize: 14.sp,
                textColor: AppColors.mainFontColor,
                textFamily: 'Poppins',
              ),
            ),
            //jobs
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              child: CustomTextButton(
                text: 'Jobs',
                textWeight: FontWeight.w500,
                textSize: 14.sp,
                textColor: AppColors.mainFontColor,
                textFamily: 'Poppins',
              ),
            ),
            // Companies
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              child: CustomTextButton(
                text: 'Internships',
                textWeight: FontWeight.w500,
                textSize: 14.sp,
                textColor: AppColors.mainFontColor,
                textFamily: 'Poppins',
              ),
            ),
            // Recourses
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: SizedBox(
                width: 120.w,
                // height: 35.h,
                child: SimpleDropdown(
                  hintText: 'Resources',
                  list: recoursesList,
                  fontSize: 14.sp,
                  fontColor: AppColors.mainFontColor,
                  backgroundColor: AppColors.backGroundColor,
                  fontWeight: FontWeight.w500,
                  containerPadding:
                      EdgeInsets.symmetric(horizontal: 4.w, vertical: 17.5.h),
                ),
              ),
            ),
            //Options
            SizedBox(
              width: 120.w,
              // height: 35.h,
              child: SimpleDropdown(
                hintText: 'Options',
                list: optionsList,
                fontSize: 14.sp,
                fontColor: AppColors.mainFontColor,
                backgroundColor: AppColors.backGroundColor,
                fontWeight: FontWeight.w500,
                containerPadding:
                    EdgeInsets.symmetric(horizontal: 4.w, vertical: 17.5.h),
              ),
            ),
            const Spacer(),
            // Sign Up
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 4.w),
              child: MainButtonWeb(
                text: 'Sign Up',
                textColor: AppColors.primaryColor,
                textSize: 13.sp,
                color: AppColors.backGroundColor,
                height: 32.h,
                width: 120.w,
                borderColor: AppColors.primaryColor,
                radius: 5,
              ),
            ),
            // Sign In
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 4.w),
              child: MainButtonWeb(
                text: 'Sign In',
                textColor: AppColors.primaryColor,
                textSize: 13.sp,
                color: AppColors.backGroundColor,
                height: 32.h,
                width: 120.w,
                borderColor: AppColors.primaryColor,
                radius: 5,
              ),
            ),
            // For Employers
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 4.w),
              child: MainButtonWeb(
                text: 'For Employers',
                textColor: AppColors.primaryColor,
                textSize: 13.sp,
                color: AppColors.backGroundColor,
                height: 32.h,
                width: 120.w,
                borderColor: AppColors.primaryColor,
                radius: 5,
              ),
            ),
            SizedBox(
              width: 80.w,
            ),
          ]);
        },
      ),
    );
  }
}
