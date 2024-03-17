import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';

class MainButtonWeb extends StatelessWidget {
  const MainButtonWeb({
    super.key,
    this.onTap,
    this.color,
    this.textColor,
    this.textSize,
    required this.text,
    this.height,
    this.width,
    this.radius,
    this.borderColor,
    this.fontWeight,
  });

  final void Function()? onTap;
  final Color? color;
  final Color? textColor;
  final String text;
  final double? textSize;
  final double? height;
  final double? width;
  final double? radius;
  final Color? borderColor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(radius ?? 5),
            border: Border.all(color: borderColor ?? AppColors.borderColor)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: textSize ?? 14,
              fontFamily: 'Poppins',
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
