import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/widgets/custom_text_field_web.dart';

class ColumnWithTextFieldWeb extends StatefulWidget {
  const ColumnWithTextFieldWeb({
    super.key,
    required this.text,
    required this.controller,
    this.width,
    this.height,
    this.textSize,
    this.prefixIcon,
    this.suffixIcon,
  });
  final String text;
  final double? textSize;
  final double? width;
  final double? height;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  @override
  State<ColumnWithTextFieldWeb> createState() => _ColumnWithTextFieldWebState();
}

class _ColumnWithTextFieldWebState extends State<ColumnWithTextFieldWeb> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 64,
      width: widget.width ?? 360,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.text,
            style: TextStyle(
                fontSize: widget.textSize ?? 14,
                color: AppColors.mainFontColor,
                fontFamily: 'Poppins'),
          ),
          const SizedBox(height: 4),
          CustomTextFieldWeb(
            controller: widget.controller,
            suffixIcon: widget.suffixIcon,
          ),
        ],
      ),
    );
  }
}
