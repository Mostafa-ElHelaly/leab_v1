import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:globaladvice_new/core/resource_manger/color_manager.dart';
import 'package:globaladvice_new/core/resource_manger/locale_keys.g.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';
import 'package:globaladvice_new/features/my_policies/presentation/my_polcies_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CardSliderScreen extends StatelessWidget {
  final String text1;
  final String text2;
  final String image;

  const CardSliderScreen(
      {super.key,
      required this.text1,
      required this.text2,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(image),
              SizedBox(
                height: ConfigSize.defaultSize! * 1,
              ),
              SizedBox(
                height: ConfigSize.defaultSize! * 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ConfigSize.defaultSize! * 2),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text1,
                            style: TextStyle(
                                fontSize: ConfigSize.defaultSize! * 2,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            text2,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(ConfigSize.defaultSize! * 2),
                  child: InkWell(
                    onTap: () {
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: const MyPolicies(),
                        withNavBar: false,
                        pageTransitionAnimation: PageTransitionAnimation.fade,
                      );
                    },
                    child: Container(
                      width: ConfigSize.defaultSize! * 10,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                        color: ColorManager.whiteColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: ConfigSize.defaultSize! * 1.7,
                          horizontal: ConfigSize.defaultSize! * 1.5,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
