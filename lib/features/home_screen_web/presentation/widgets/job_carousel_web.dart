import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/models/job.dart';

import 'job_card_web.dart';

class CarouselWithIndicatorWeb extends StatefulWidget {
  const CarouselWithIndicatorWeb({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorWeb> {
  int current = 0;
  final List<Widget> jobSlider = [
    JobCard(job: dummyJobs[0]),
    JobCard(job: dummyJobs[1]),
    JobCard(job: dummyJobs[2]),
  ];
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    // int current = 0;
    return SizedBox(
      height: 250.h,
      // width: WidgetRatio.widthRatio(952),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: CarouselSlider(
              items: jobSlider,
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  aspectRatio: 1.5.w,
                  onPageChanged: (index, reason) {
                    setState(() {
                      current = index;
                    });
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: jobSlider.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 8.w,
                  height: 8.h,
                  margin: EdgeInsets.symmetric(vertical: 6.h, horizontal: 4.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(current == entry.key ? 0.9 : 0.4),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
