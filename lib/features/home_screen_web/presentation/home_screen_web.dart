import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/drawer_web/drawer_web.dart';
import 'package:leap/core/widgets/join_us_container_web.dart';
import 'package:leap/core/widgets/tailing_widget_web.dart';
import 'package:leap/features/home_screen_web/presentation/widgets//job_carousel_web.dart';
import 'package:leap/features/home_screen_web/presentation/widgets//search_section.dart';
import 'package:leap/features/home_screen_web/presentation/widgets/featured_skill.dart';
import 'package:leap/features/home_screen_web/presentation/widgets/top_employers.dart';
import 'package:leap/features/home_screen_web/presentation/widgets/web_appbar.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);

    return Scaffold(
      drawer: const DrawerWeb(),
      backgroundColor: secondaryBackGroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const WebAppbar(),
            const SearchSection(),
            SizedBox(height: 120.h),
            const CarouselWithIndicatorWeb(),
            SizedBox(height: context.screenHeight * 0.14.h),
            // const FeaturedSkill(),
            // SizedBox(
            //   height: 120.h,
            // ),
            // const TopEmployers(),
            // SizedBox(height: 160.h),
            // const JoinUsContainer(),
            // SizedBox(height: 120.h),
            // const TailingWidget(),
          ],
        ),
      ),
    );
  }
}
