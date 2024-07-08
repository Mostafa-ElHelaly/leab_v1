import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:globaladvice_new/core/resource_manger/asset_path.dart';
import 'package:globaladvice_new/core/resource_manger/color_manager.dart';
import 'package:globaladvice_new/core/resource_manger/locale_keys.g.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';
import 'package:globaladvice_new/features/home/presentation/component/card_screen/card_screen.dart';
import 'package:globaladvice_new/features/home/presentation/component/card_screen/card_slider.dart';
import 'package:globaladvice_new/features/my_policies/presentation/my_polcies_screen.dart';
import 'package:globaladvice_new/features/profile/presentation/profile_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pinput/pinput.dart';
import 'package:readmore/readmore.dart';

import 'component/car_form/car_form_main_person_data .dart';
import 'component/life_form/life_form_main_person_data .dart';
import 'component/medical_form/medical_form_main_person_data .dart';
import 'component/property_form/property_form_main_person_data .dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = [
    "assets/images/test1.jpg",
    "assets/images/test2.jpg",
    "assets/images/test3.jpg",
    "assets/images/test4.jpg"
  ];
  final card = [
    const CardSliderScreen(
      text1: 'Motor Plus',
      text2:
          'As a car owner, it is almost impossible imagining your life without your car. Not only do you depend on it for the most essential things such as getting to work and taking your children to school, but even for the most fun such as meeting friends and traveling.That’s why you need to be prepared when the unexpected occurs.',
      image: "assets/images/test1.jpg",
    ),
    const CardSliderScreen(
      text1: 'Motor Plus',
      text2:
          'As a car owner, it is almost impossible imagining your life without your car. Not only do you depend on it for the most essential things such as getting to work and taking your children to school, but even for the most fun such as meeting friends and traveling.That’s why you need to be prepared when the unexpected occurs.',
      image: "assets/images/test2.jpg",
    ),
    const CardSliderScreen(
      text1: 'Motor Plus',
      text2:
          'As a car owner, it is almost impossible imagining your life without your car. Not only do you depend on it for the most essential things such as getting to work and taking your children to school, but even for the most fun such as meeting friends and traveling.That’s why you need to be prepared when the unexpected occurs.',
      image: "assets/images/test3.jpg",
    ),
    const CardSliderScreen(
      text1: 'Motor Plus',
      text2:
          'As a car owner, it is almost impossible imagining your life without your car. Not only do you depend on it for the most essential things such as getting to work and taking your children to school, but even for the most fun such as meeting friends and traveling.That’s why you need to be prepared when the unexpected occurs.',
      image: "assets/images/test4.jpg",
    ),
  ];
  int currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          AssetsPath.logo,
          scale: 10,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ConfigSize.defaultSize! * 2,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: ConfigSize.defaultSize! * 2,
                    ),
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndexPage = index;
                              });
                            },
                            height: ConfigSize.defaultSize! * 25,
                            viewportFraction: 1,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 5),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeFactor: 0.3,
                          ),
                          items: items.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: ConfigSize.screenWidth!,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(i),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(ConfigSize.defaultSize! * 2),
                          child: InkWell(
                            onTap: () {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: const MyPolicies(),
                                withNavBar: false,
                                pageTransitionAnimation:
                                    PageTransitionAnimation.fade,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.4),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: ColorManager.whiteColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: ConfigSize.defaultSize! * 1.5,
                                  horizontal: ConfigSize.defaultSize! * 3,
                                ),
                                child: Text(
                                  StringManager.viewPlans.tr(),
                                  style: TextStyle(
                                    color: ColorManager.kPrimaryBlueDark,
                                    fontWeight: FontWeight.bold,
                                    fontSize: ConfigSize.defaultSize! * 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ConfigSize.defaultSize! * 1,
                    ),
                    DotsIndicator(
                      dotsCount: items.length,
                      position: currentIndexPage,
                      decorator: const DotsDecorator(
                          activeColor: ColorManager.kPrimaryBlueDark),
                      onTap: (index) {},
                    ),
                    SizedBox(
                      height: ConfigSize.defaultSize! * 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          StringManager.service.tr(),
                          style: const TextStyle(
                              color: ColorManager.kPrimaryBlueDark,
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                        ),
                        InkWell(
                          onTap: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const CardScreen(),
                              withNavBar: true,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.fade,
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ConfigSize.defaultSize! * 1),
                            child: Text(
                              StringManager.viewAll.tr(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ConfigSize.defaultSize! * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const MedicalFormMainPersonData(),
                              withNavBar: true,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.fade,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorManager.kPrimaryBlueDark,
                                borderRadius:
                                    BorderRadiusDirectional.circular(12)),
                            width: ConfigSize.defaultSize! * 18,
                            height: ConfigSize.defaultSize! * 20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.medical_services_outlined,
                                  color: ColorManager.whiteColor,
                                  size: 50,
                                ),
                                SizedBox(
                                  height: ConfigSize.defaultSize! * 1,
                                ),
                                Text(
                                  StringManager.medicalInsurance.tr(),
                                  style: const TextStyle(
                                      color: ColorManager.whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const CarFormMainPersonData(),
                              withNavBar: true,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.fade,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorManager.kPrimaryBlueDark,
                                borderRadius:
                                    BorderRadiusDirectional.circular(12)),
                            width: ConfigSize.defaultSize! * 18,
                            height: ConfigSize.defaultSize! * 20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.car_crash_outlined,
                                  color: ColorManager.whiteColor,
                                  size: 50,
                                ),
                                SizedBox(
                                  height: ConfigSize.defaultSize! * 1,
                                ),
                                Text(
                                  StringManager.carInsurance.tr(),
                                  style: const TextStyle(
                                      color: ColorManager.whiteColor,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ConfigSize.defaultSize! * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const PropertyFormMainPersonData(),
                              withNavBar: true,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.fade,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorManager.kPrimaryBlueDark,
                                borderRadius:
                                    BorderRadiusDirectional.circular(12)),
                            width: ConfigSize.defaultSize! * 18,
                            height: ConfigSize.defaultSize! * 20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.house_outlined,
                                  color: ColorManager.whiteColor,
                                  size: 50,
                                ),
                                SizedBox(
                                  height: ConfigSize.defaultSize! * 1,
                                ),
                                Text(
                                  StringManager.propertyInsurance.tr(),
                                  style: const TextStyle(
                                      color: ColorManager.whiteColor,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const LifeFormMainPersonData(),
                              withNavBar: true,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.fade,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorManager.kPrimaryBlueDark,
                                borderRadius:
                                    BorderRadiusDirectional.circular(12)),
                            width: ConfigSize.defaultSize! * 18,
                            height: ConfigSize.defaultSize! * 20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.monitor_heart_outlined,
                                  color: ColorManager.whiteColor,
                                  size: 50,
                                ),
                                SizedBox(
                                  height: ConfigSize.defaultSize! * 1,
                                ),
                                Text(
                                  StringManager.lifeInsurance.tr(),
                                  style: const TextStyle(
                                      color: ColorManager.whiteColor,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ConfigSize.defaultSize! * 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          StringManager.insuranceType.tr(),
                          style: const TextStyle(
                              color: ColorManager.kPrimaryBlueDark,
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                        ),
                        InkWell(
                          onTap: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const CardScreen(),
                              withNavBar: true,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.fade,
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ConfigSize.defaultSize! * 1),
                            child: Text(
                              StringManager.viewAll.tr(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ConfigSize.defaultSize! * 1,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndexPage = index;
                          });
                        },
                        height: ConfigSize.defaultSize! * 50,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 5),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeFactor: 0.3,
                      ),
                      items: card
                        ..map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration:
                                      const BoxDecoration(color: Colors.amber),
                                  child: Text(
                                    'text $i',
                                    style: const TextStyle(fontSize: 16.0),
                                  ));
                            },
                          );
                        }).toList(),
                    ),

                    Center(
                      child: DotsIndicator(
                        dotsCount: items.length,
                        position: currentIndexPage,
                        decorator: const DotsDecorator(
                            activeColor: ColorManager.kPrimaryBlueDark),
                        onTap: (index) {},
                      ),
                    ),
                  ],
                ),
              ),



              SizedBox(
                height: ConfigSize.defaultSize! * 1,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
