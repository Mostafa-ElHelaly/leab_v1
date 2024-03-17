
import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';
class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key, required this.text, required this.hintText, this.width});
final String text;
final String hintText;
final double? width;
  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(
          height: AppSize.defaultSize!,
        ),
        Container(
          width: AppSize.screenWidth! * .9,
          height:AppSize.defaultSize!*4 ,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderColor.withOpacity(.4)),
              borderRadius: BorderRadius.circular(AppSize.defaultSize! * .5)),
          child: Center(
            child: DropdownButton<String>(
              // value: selectedValue,
              underline: const SizedBox(),
              onChanged: (String? newValue) {
                // setState(() {
                //   selectedValue = newValue!;
                // });
              },

              hint: Text(
                widget.   hintText,
                style: TextStyle(
                  fontSize: AppSize.defaultSize!,
                ),
              ),

              icon: Padding(
                padding: EdgeInsets.only(left: AppSize.defaultSize! * 25),
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: AppSize.defaultSize! * 3,
                ),
              ),
              items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: AppSize.defaultSize!,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}


