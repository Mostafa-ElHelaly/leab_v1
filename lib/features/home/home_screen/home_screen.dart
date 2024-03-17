import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/features/home/home_screen/widgets/job_carousel.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:homeAppBar(context,widget: Image.asset(AssetPath.logo,scale: 3,),),
      body: const Column(
        children: [
          CarouselWithIndicatorDemo(),
          // TakeQuiz(),
          // HomePageButtons(text: 'Jobs'),
          // HomePageButtons(text: 'Internships'),
        ],
      ),
    );
  }
}
