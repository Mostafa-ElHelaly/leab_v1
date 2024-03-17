import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/features/home/home_screen/controller/cubit.dart';
import 'package:leap/features/home/home_screen/controller/states.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';


class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({Key? key, required this.cubit}) : super(key: key);
final HomeScreenCubit cubit;
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      currentIndex: cubit.currentIndex,
      onTap: (i) {
        cubit.changeIndex(i);        // setState(() {});
      },
      type: BottomNavigationBarType.fixed,
      selectedIconTheme:   IconThemeData(color: primaryColor, size: AppSize.defaultSize!*2),
      selectedLabelStyle: const TextStyle(color: primaryColor),
      backgroundColor: secondaryBackGroundColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.school_outlined,
          ),
          label: 'Internships',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag,
          ),
          label: 'Jobs',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.collections_bookmark_outlined,
          ),
          label: 'Resources',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.sticky_note_2_outlined,
          ),
          label: 'Blogs',
        ),
      ],
    );

  }
}
