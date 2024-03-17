import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SearchByTagsText extends StatelessWidget {
  const SearchByTagsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Search by tags:',
                style: TextStyle(
                  color: backGroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                ),
              ),
              Text(
                ' Developer, Engineer, Support, Senior, Junior',
                style: TextStyle(
                  color: backGroundColor,
                  fontSize: 24.sp,
                ),
              ),
            ],
          ),
        );
      },
      tablet: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Search by tags:',
                style: TextStyle(
                  color: backGroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                ),
              ),
              Text(
                ' Developer, Engineer, Support, Senior, Junior',
                style: TextStyle(
                  color: backGroundColor,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
        );
      },
      mobile: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Search by tags:',
                style: TextStyle(
                  color: backGroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 8.sp,
                ),
              ),
              Text(
                ' Developer, Engineer, Support, Senior, Junior',
                style: TextStyle(
                  color: backGroundColor,
                  fontSize: 8.sp,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
