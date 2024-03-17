import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/widgets/main_button_web.dart';
import 'package:leap/models/job.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';
import 'package:responsive_builder/responsive_builder.dart';

class JobCard extends StatelessWidget {
  const JobCard({Key? key, required this.job}) : super(key: key);
  final Job job;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return Container(
          color: AppColors.secondaryBackGroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 238.h,
                width: 468.w,
                color: AppColors.containerColor,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 16.h, left: 16.w, right: 24.w),
                      child: Image.asset(
                        job.logo,
                        width: 96.w,
                        height: 80.h,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          job.title,
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp),
                        ).padding(
                          EdgeInsets.symmetric(
                            vertical: 8.h,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 4.0.w),
                              child: Text(
                                'Posted 2 days ago ',
                                style: TextStyle(
                                  color: mainFontColor,
                                  fontSize: 14.sp,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Text(
                              '. Full Time',
                              style: TextStyle(
                                color: mainFontColor,
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 4.0.w),
                              child: Image.asset(
                                AssetPath.location,
                                width: 13.w,
                                height: 16.h,
                              ),
                            ),
                            Text(
                              job.location,
                              style: TextStyle(
                                  color: mainFontColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 14.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 4.0.w),
                              child: Image.asset(
                                AssetPath.skillIconBlack,
                                width: 13.w,
                                height: 16.h,
                              ),
                            ),
                            Text(
                              job.skill,
                              style: TextStyle(
                                color: mainFontColor,
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        Text(
                          job.salary,
                          style: TextStyle(
                            color: mainFontColor,
                            fontSize: 16.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 16.h, right: 16.w),
                          child: SizedBox(
                            width: 316.w,
                            height: 32.h,
                            child: MainButtonWeb(
                              text: 'View Job',
                              textSize: 16.sp,
                              borderColor: AppColors.primaryColor,
                              height: 32.h,
                              width: 316.w,
                              color: AppColors.backGroundColor,
                              textColor: AppColors.primaryColor,
                              radius: 10,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16.w),
              Container(
                height: 238.h,
                width: 468.w,
                color: AppColors.containerColor,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 16.h, left: 16.w, right: 24.w),
                      child: Image.asset(
                        job.logo,
                        width: 96.w,
                        height: 80.h,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          job.title,
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp),
                        ).padding(
                          EdgeInsets.symmetric(
                            vertical: 8.h,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 4.0.w),
                              child: Text(
                                'Posted 2 days ago ',
                                style: TextStyle(
                                  color: mainFontColor,
                                  fontSize: 14.sp,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Text(
                              '. Full Time',
                              style: TextStyle(
                                color: mainFontColor,
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 4.0.w),
                              child: Image.asset(
                                AssetPath.location,
                                width: 13.w,
                                height: 16.h,
                              ),
                            ),
                            Text(
                              job.location,
                              style: TextStyle(
                                  color: mainFontColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 14.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 4.0.w),
                              child: Image.asset(
                                AssetPath.skillIconBlack,
                                width: 13.w,
                                height: 16.h,
                              ),
                            ),
                            Text(
                              job.skill,
                              style: TextStyle(
                                color: mainFontColor,
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        Text(
                          job.salary,
                          style: TextStyle(
                            color: mainFontColor,
                            fontSize: 16.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 16.h, right: 16.w),
                          child: SizedBox(
                            width: 316.w,
                            height: 32.h,
                            child: MainButtonWeb(
                              text: 'View Job',
                              textSize: 16.sp,
                              borderColor: AppColors.primaryColor,
                              height: 32.h,
                              width: 316.w,
                              color: AppColors.backGroundColor,
                              textColor: AppColors.primaryColor,
                              radius: 10,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      tablet: (context) {
        return Container(
          height: 238.h,
          width: 700.w,
          color: AppColors.containerColor,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 35.w),
                child: Image.asset(
                  job.logo,
                  width: 110.w,
                  height: 90.h,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    job.title,
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 21.sp),
                  ).padding(
                    EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.0.w),
                        child: Text(
                          'Posted 2 days ago ',
                          style: TextStyle(
                            color: mainFontColor,
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Text(
                        '. Full Time',
                        style: TextStyle(
                          color: mainFontColor,
                          fontSize: 18.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.0.w),
                        child: Image.asset(
                          AssetPath.location,
                          width: 16.w,
                          height: 20.h,
                        ),
                      ),
                      Text(
                        job.location,
                        style: TextStyle(
                            color: mainFontColor,
                            fontFamily: 'Poppins',
                            fontSize: 18.sp),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.0.w),
                        child: Image.asset(
                          AssetPath.skillIconBlack,
                          width: 16.w,
                          height: 20.h,
                        ),
                      ),
                      Text(
                        job.skill,
                        style: TextStyle(
                          color: mainFontColor,
                          fontSize: 18.sp,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Text(
                    job.salary,
                    style: TextStyle(
                      color: mainFontColor,
                      fontSize: 22.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16.h, right: 16.w),
                    child: SizedBox(
                      width: 350.w,
                      height: 32.h,
                      child: MainButtonWeb(
                        text: 'View Job',
                        textSize: 18.sp,
                        borderColor: AppColors.primaryColor,
                        height: 32.h,
                        width: 350.w,
                        color: AppColors.backGroundColor,
                        textColor: AppColors.primaryColor,
                        radius: 10,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
      mobile: (context) {
        return Container(
          height: 200.h,
          width: 300.w,
          color: AppColors.containerColor,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 24.w),
                child: Image.asset(
                  job.logo,
                  width: 12.w,
                  height: 10.h,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    job.title,
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 8.sp),
                  ).padding(
                    EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.0.w),
                        child: Text(
                          'Posted 2 days ago ',
                          style: TextStyle(
                            color: mainFontColor,
                            fontSize: 6.sp,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Text(
                        '. Full Time',
                        style: TextStyle(
                          color: mainFontColor,
                          fontSize: 6.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.0.w),
                        child: Image.asset(
                          AssetPath.location,
                          width: 13.w,
                          height: 16.h,
                        ),
                      ),
                      Text(
                        job.location,
                        style: TextStyle(
                            color: mainFontColor,
                            fontFamily: 'Poppins',
                            fontSize: 6.sp),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.0.w),
                        child: Image.asset(
                          AssetPath.skillIconBlack,
                          width: 8.w,
                          height: 12.h,
                        ),
                      ),
                      Text(
                        job.skill,
                        style: TextStyle(
                          color: mainFontColor,
                          fontSize: 6.sp,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  Text(
                    job.salary,
                    style: TextStyle(
                      color: mainFontColor,
                      fontSize: 6.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16.h, right: 16.w),
                    child: SizedBox(
                      width: 150.w,
                      height: 32.h,
                      child: MainButtonWeb(
                        text: 'View Job',
                        textSize: 16.sp,
                        borderColor: AppColors.primaryColor,
                        height: 32.h,
                        width: 316.w,
                        color: AppColors.backGroundColor,
                        textColor: AppColors.primaryColor,
                        radius: 10,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
