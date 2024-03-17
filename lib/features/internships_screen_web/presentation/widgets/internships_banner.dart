import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/features/internships_screen_web/presentation/widgets/internships_nums.dart';
import 'package:leap/view/constants/extensions.dart';

class InternshipsBanner extends StatelessWidget {
  const InternshipsBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: context.screenHeight / 2,
      child: Stack(
        children: [
          Positioned(
            width: context.screenWidth,
            height: context.screenHeight / 2,
            child: Image.asset(
              AssetPath.homeBackgroundLargeHalf,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            width: context.screenWidth,
            height: context.screenHeight / 2,
            color: Colors.black.withOpacity(0.5),
          ),
          const Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InternshipsNums(),
            ],
          )),
        ],
      ),
    );
  }
}

// extension ResposiveExtension on BuildContext{
//   double get tabletBreakPoint
// }
