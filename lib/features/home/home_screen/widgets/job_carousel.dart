import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:leap/models/job.dart';
import 'package:leap/view/constants/extensions.dart';

import 'job_card.dart';

class VerticalSliderDemo extends StatelessWidget {
  VerticalSliderDemo({super.key});
  final List<Widget> jobSlider = [
    JobCard(job: dummyJobs[0]),
    JobCard(job: dummyJobs[1]),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * .3,
      width: context.screenWidth,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ),
        items: jobSlider,
      ),
    );
  }
}

class VerticalSliderDemo1 extends StatelessWidget {
  VerticalSliderDemo1({super.key});
  final List<Widget> jobSlider = [
    JobCard(job: dummyJobs[0]),
    JobCard(job: dummyJobs[1]),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: context.screenHeight * .25,
      child: CarouselSlider(
        options: CarouselOptions(height: 400, enlargeCenterPage: true),
        items: jobSlider.map((job) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: job,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final List<Widget> jobSlider = [
    JobCard(job: dummyJobs[0]),
    JobCard(job: dummyJobs[1]),
    JobCard(job: dummyJobs[2]),
  ];
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * .3,
      child: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: jobSlider,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: false,
                viewportFraction: 1,
                enlargeCenterPage: false,
                aspectRatio: 2,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
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
                width: 8,
                height: 8,
                margin:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
