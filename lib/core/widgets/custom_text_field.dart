import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';

class CustomTextField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool readOnly;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function()? onTap;
  final TextStyle? hintStyle;
   const CustomTextField({
    Key? key,
      this.labelText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
     this.readOnly=false,
    this.prefixIcon, this.suffixIcon, this.onTap, this.hintText, this.hintStyle,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.defaultSize! * 6,
      width: AppSize.screenWidth! - (AppSize.defaultSize! * 4),
      child: TextFormField(
        onTap:widget. onTap,
        readOnly:widget. readOnly,

        decoration: InputDecoration(

            labelText: widget.labelText,
            hintText: widget.hintText,

            hintStyle:widget.hintStyle ,
            suffixIcon: widget.suffixIcon,
            labelStyle: const TextStyle(
                color: AppColors.primaryColor,
            ),
            prefixIcon: widget.prefixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.borderColor.withOpacity(.4)
              ),

            ),
          focusedBorder:    OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.borderColor.withOpacity(.4)
              )
          ),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.borderColor.withOpacity(.4)
              )
          ),
        ),

        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
      ),
    );
  }
}
