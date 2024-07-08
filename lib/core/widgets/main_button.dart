import 'package:flutter/material.dart';
import 'package:globaladvice_new/core/resource_manger/color_manager.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';

class MainButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  final Color? color;
  final Color? textColor;

  const MainButton({
    super.key,
    required this.onTap,
    required this.title,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: ConfigSize.screenWidth!,
        height: ConfigSize.defaultSize! * 5,
        decoration: BoxDecoration(
          color: color ?? ColorManager.kPrimaryBlueDark,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: ConfigSize.defaultSize! * 1.7,
            ),
          ),
        ),
      ),
    );
  }
}
