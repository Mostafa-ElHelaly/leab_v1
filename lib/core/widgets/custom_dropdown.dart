import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class SimpleDropdown extends StatelessWidget {
  const SimpleDropdown({
    Key? key,
    required this.list,
    required this.hintText,
    required this.containerPadding,
    this.width,
    this.height,
    this.itemListPadding,
    this.backgroundColor,
    this.fontSize,
    this.fontColor,
    this.fontWeight,
    this.closedHeaderPadding,
  }) : super(key: key);

  final List<String> list;
  final String hintText;
  final double? width;
  final double? height;
  final EdgeInsets? itemListPadding;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final EdgeInsets containerPadding;
  final EdgeInsets? closedHeaderPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: containerPadding,
      child: CustomDropdown<String>(
        hintText: hintText,
        // listItemPadding: EdgeInsets.symmetric(horizontal: 1),
        itemsListPadding: itemListPadding,
        closedHeaderPadding: closedHeaderPadding,
        decoration: CustomDropdownDecoration(
          closedBorderRadius: const BorderRadius.all(Radius.circular(10)),
          hintStyle: TextStyle(
            fontSize: fontSize,
            color: fontColor,
            fontFamily: 'Poppins',
            fontWeight: fontWeight,
          ),
          listItemStyle: TextStyle(
            fontSize: fontSize,
            color: fontColor,
            fontFamily: 'Poppins',
            fontWeight: fontWeight,
          ),
          headerStyle: TextStyle(
            fontSize: fontSize,
            color: fontColor,
            fontFamily: 'Poppins',
            fontWeight: fontWeight,
          ),
          // hintStyle: TextStyle(fontSize: 14, color: Colors.orange),
          closedFillColor: backgroundColor,
          expandedFillColor: backgroundColor,
        ),
        // hintText: 'Select job role',
        items: list,
        // initialItem: list[0],
        onChanged: (value) {
          log('changing value to: $value');
        },
      ),
    );
  }
}
