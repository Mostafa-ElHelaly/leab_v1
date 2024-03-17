import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/features/home_screen_web/presentation/widgets/card_row.dart';
import 'package:leap/features/home_screen_web/presentation/widgets/job_search.dart';
import 'package:leap/features/home_screen_web/presentation/widgets/jobs_posted.dart';
import 'package:leap/features/home_screen_web/presentation/widgets/search_by_tags_text.dart';
import 'package:leap/view/constants/extensions.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return SizedBox(
          width: context.screenWidth,
          height: context.screenHeight + 20.h,
          child: Stack(
            children: [
              Positioned(
                width: context.screenWidth,
                height: context.screenHeight - 60.h,
                child: Image.asset(
                  AssetPath.homeBackgroundLarge,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: context.screenWidth,
                height: context.screenHeight - 60.h,
                color: Colors.black.withOpacity(0.5),
              ),
              const Positioned.fill(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    JobsPosted(),
                    JobSearch(),
                    SearchByTagsText(),
                    Spacer(),
                    CardRow(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      tablet: (context) {
        return SizedBox(
          width: context.screenWidth,
          height: context.screenHeight - 300.h,
          child: Stack(
            children: [
              Positioned(
                width: context.screenWidth,
                height: context.screenHeight - 350.h,
                child: Image.asset(
                  AssetPath.homeBackgroundLarge,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: context.screenWidth,
                height: context.screenHeight - 350.h,
                color: Colors.black.withOpacity(0.5),
              ),
              const Positioned.fill(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    JobsPosted(),
                    JobSearch(),
                    SearchByTagsText(),
                    Spacer(),
                    CardRow(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      mobile: (context) {
        return SizedBox(
          width: context.screenWidth,
          height: context.screenHeight + 570.h,
          child: Stack(
            children: [
              Positioned(
                width: context.screenWidth,
                height: context.screenHeight - 50.h,
                child: Image.asset(
                  AssetPath.homeBackgroundLarge,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: context.screenWidth,
                height: context.screenHeight - 50.h,
                color: Colors.black.withOpacity(0.5),
              ),
              const Positioned.fill(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    JobsPosted(),
                    JobSearch(),
                    SearchByTagsText(),
                    Spacer(),
                    CardRow(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
