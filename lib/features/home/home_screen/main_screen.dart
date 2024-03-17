import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/features/home/home_screen/componants/drawer/drawer.dart';
import 'package:leap/features/home/home_screen/controller/cubit.dart';
import 'package:leap/features/home/home_screen/controller/states.dart';
import 'package:leap/features/home/home_screen/home_screen.dart';
import 'package:leap/features/home/home_screen/widgets/bottom_navigation_bar.dart';

import 'package:leap/view/constants/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeScreenCubit,HomeStates>(
      listener: ( context, state){},
      builder: (context, state) {
        HomeScreenCubit cubit=HomeScreenCubit.get(context);
        return Scaffold(
          drawer:const HomeDrawer(),
          bottomNavigationBar:   HomeBottomNavigationBar(cubit: cubit,),
          backgroundColor: secondaryBackGroundColor,

          body: cubit.screens[cubit.currentIndex],
        );
      },
    );
  }
}
