import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';
class CustomDrawerButton extends StatelessWidget {
  const CustomDrawerButton({super.key, this.onPressed, required this.text});
final void Function()? onPressed;
final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(
      text,
        style: TextStyle(
    fontSize: AppSize.defaultSize!*1.6,
fontWeight: FontWeight.w600,
          color: AppColors.black.withOpacity(.8)
    ),
    ));
  }
}
