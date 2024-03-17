import 'package:flutter/material.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/custom_text_field.dart';

class ColumnWithTextField extends StatefulWidget {
  const ColumnWithTextField({
    super.key,
    required this.text,
    required this.controller,
    this.width,
    this.height,
    this.readOnly = false,
    this.onTap,
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
  });

  final String text;
  final String? labelText;
  final String? hintText;
  final double? width;
  final double? height;
  final bool readOnly;
  final Widget? suffixIcon;
  final void Function()? onTap;
  final TextInputType keyboardType;

  final TextEditingController controller;

  @override
  State<ColumnWithTextField> createState() => _ColumnWithTextFieldState();
}

class _ColumnWithTextFieldState extends State<ColumnWithTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppSize.defaultSize! * 2,
        ),
        Text(
          widget.text,
          style: TextStyle(
              fontSize: AppSize.defaultSize! * 1.4,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: AppSize.defaultSize! * .3,
        ),
        SizedBox(
            width: widget.width ?? AppSize.screenWidth! * .9,
            height: widget.height ?? AppSize.defaultSize! * 4.5,
            child: CustomTextField(
              controller: widget.controller,
              readOnly: widget.readOnly,
              onTap: widget.onTap,
              labelText: widget.labelText,
              hintText: widget.hintText,
              suffixIcon: widget.suffixIcon,
              keyboardType: widget.keyboardType,
            )),
      ],
    );
  }
}
