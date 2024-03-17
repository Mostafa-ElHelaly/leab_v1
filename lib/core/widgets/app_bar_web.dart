import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/widgets/custom_dropdown.dart';
import 'package:leap/core/widgets/custom_text_button.dart';
import 'package:leap/core/widgets/main_button_web.dart';

AppBar appBarWeb(BuildContext context) {
  final List<String> recoursesList = ['Recourses', 'Recourse1', 'Recourse2'];
  final List<String> optionsList = ['Options', 'Option1', 'Option2'];
  return AppBar(
    toolbarHeight: 100,
    backgroundColor: AppColors.backGroundColor,
    elevation: 1,
    leading: Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              // Navigator.pop(context);
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
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
        ],
      ),
    ),
    actions: [
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
    ],
  );
}

AppBar homeAppBar(BuildContext context,
    {String? text, void Function()? actionsOnPressed, Widget? widget}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    title: widget ?? Text('$text'),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      icon: Image.asset(AssetPath.menu),
    ),
    actions: [
      IconButton(
        onPressed: actionsOnPressed,
        icon: Image.asset(AssetPath.notification),
      )
    ],
  );
}
/*
 AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: AppColors.primaryColor,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          title: Image.asset(AssetPath.logo,scale: 3,),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                color: AppColors.primaryColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
 */
