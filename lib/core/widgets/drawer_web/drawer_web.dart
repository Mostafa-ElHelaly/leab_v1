import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/drawer_web/widgets/drawer-buttons.dart';
import 'package:leap/core/widgets/drawer_web/widgets/user_row.dart';
import 'package:leap/view/constants/extensions.dart';

class DrawerWeb extends StatefulWidget {
  const DrawerWeb({super.key});

  @override
  State<DrawerWeb> createState() => _DrawerWebState();
}

class _DrawerWebState extends State<DrawerWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryBackGroundColor,
      width: context.screenWidth * .4,
      height: context.screenHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          const UserRowDrawerWeb(),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomDrawerButtonWeb(
                  text: 'Home',
                  onPressed: () {},
                ),
                CustomDrawerButtonWeb(
                  text: 'Jobs',
                  onPressed: () {},
                ),
                CustomDrawerButtonWeb(
                  text: 'Companies',
                  onPressed: () {},
                ),
                CustomDrawerButtonWeb(
                  text: 'Blog',
                  onPressed: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomDrawerButtonWeb(
                      text: 'Options',
                      onPressed: () {},
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 20.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                //
              ],
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Center(
              child: Container(
                height: 40.h,
                width: context.screenWidth * .35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.primaryColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.logout,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(
                      width: AppSize.defaultSize!,
                    ),
                    const Text(
                      'LogOut',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15.h),
        ],
      ),
    );
  }
}
