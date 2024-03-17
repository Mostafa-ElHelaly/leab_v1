import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/features/home_screen_web/presentation/widgets//home_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CardRow extends StatelessWidget {
  const CardRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeCard(
              icon: AssetPath.skillIcon,
              boldText: 'Skill',
              line1Text: 'the ability to carry out diverse duties in IT roles',
            ),
            HomeCard(
              icon: AssetPath.employer,
              boldText: 'Employer',
              line1Text: 'seek candidates who write code in several languages',
            ),
            HomeCard(
              icon: AssetPath.location1,
              boldText: 'Province',
              line1Text: 'where an Employee reports for work at Company',
            ),
            HomeCard(
              icon: AssetPath.title,
              boldText: 'Title',
              line1Text: 'the type of position and level an employee',
            ),
          ],
        );
      },
      tablet: (context) {
        return const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeCard(
              icon: AssetPath.skillIcon,
              boldText: 'Skill',
              line1Text: 'the ability to carry out diverse duties in IT roles',
            ),
            HomeCard(
              icon: AssetPath.employer,
              boldText: 'Employer',
              line1Text: 'seek candidates who write code in several languages',
            ),
            HomeCard(
              icon: AssetPath.location1,
              boldText: 'Province',
              line1Text: 'where an Employee reports for work at Company',
            ),
            HomeCard(
              icon: AssetPath.title,
              boldText: 'Title',
              line1Text: 'the type of position and level an employee',
            ),
          ],
        );
      },
      mobile: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeCard(
              padding: 8,
              width: 180.w,
              icon: AssetPath.skillIcon,
              boldText: 'Skill',
              line1Text: 'the ability to carry out diverse duties in IT roles',
            ),
            HomeCard(
              padding: 8,
              width: 180.w,
              icon: AssetPath.employer,
              boldText: 'Employer',
              line1Text: 'seek candidates who write code in several languages',
            ),
            HomeCard(
              padding: 8,
              width: 180.w,
              icon: AssetPath.location1,
              boldText: 'Province',
              line1Text: 'where an Employee reports for work at Company',
            ),
            HomeCard(
              padding: 8,
              width: 180.w,
              icon: AssetPath.title,
              boldText: 'Title',
              line1Text: 'the type of position and level an employee',
            ),
          ],
        );
      },
    );
  }
}
