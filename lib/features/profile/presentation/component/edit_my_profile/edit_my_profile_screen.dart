import 'dart:io';

import 'package:csc_picker/csc_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:globaladvice_new/core/resource_manger/asset_path.dart';
import 'package:globaladvice_new/core/resource_manger/color_manager.dart';
import 'package:globaladvice_new/core/resource_manger/locale_keys.g.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';
import 'package:globaladvice_new/core/widgets/custom_text_field.dart';
import 'package:globaladvice_new/core/widgets/main_button.dart';
import 'package:globaladvice_new/features/auth/presentation/component/forget_password/change_password_screen.dart';
import 'package:globaladvice_new/features/auth/presentation/component/forget_password/forget_password_screen.dart';
import 'package:globaladvice_new/main_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class EditMyProfileScreen extends StatefulWidget {
  const EditMyProfileScreen({super.key});

  @override
  State<EditMyProfileScreen> createState() => _EditMyProfileScreenState();
}

class _EditMyProfileScreenState extends State<EditMyProfileScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();



  String? selectedValue;
  bool isVisible = true;
  bool isVisible1 = true;
  final List<String> items = [
    'Male',
    'Female',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: ColorManager.mainColor,
          ),
        ),
        title: Text(
          StringManager.editMyProfile.tr(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: ConfigSize.defaultSize! * 2,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(ConfigSize.defaultSize! * 1.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringManager.firstName.tr(),
                          style: TextStyle(
                            fontSize: ConfigSize.defaultSize! * 1.6,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        CustomTextField(
                          controller: firstNameController,
                          inputType: TextInputType.name,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: ConfigSize.defaultSize! * 2,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringManager.lastName.tr(),
                          style: TextStyle(
                            fontSize: ConfigSize.defaultSize! * 1.6,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        CustomTextField(
                          controller: lastNameController,
                          inputType: TextInputType.name,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: ConfigSize.defaultSize! * 2),
              Text(
                StringManager.phone.tr(),
                style: TextStyle(
                  fontSize: ConfigSize.defaultSize! * 1.6,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: ConfigSize.defaultSize! - 5,
              ),
              CustomTextField(
                controller: phoneController,
                inputType: TextInputType.number,
              ),
              SizedBox(height: ConfigSize.defaultSize! * 2),







              Text(
                StringManager.gander.tr(),
                style: TextStyle(
                  fontSize: ConfigSize.defaultSize! * 1.6,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: ConfigSize.defaultSize! - 5,
              ),
              Center(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Text(
                      'Gander',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(12)),
                        color: Colors.white,
                        border:
                        Border.all(color: Colors.grey.shade300, width: 1),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: ConfigSize.defaultSize! * 1.6),
                      height: ConfigSize.defaultSize! * 5.5,
                      width: ConfigSize.screenWidth,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),
                  ),
                ),
              ),
              SizedBox(height: ConfigSize.defaultSize! * 2),
              Text(
                StringManager.email.tr(),
                style: TextStyle(
                  fontSize: ConfigSize.defaultSize! * 1.6,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: ConfigSize.defaultSize! - 5,
              ),
              CustomTextField(
                controller: emailController,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: ConfigSize.defaultSize! * 2),
              Text(
                StringManager.phone.tr(),
                style: TextStyle(
                  fontSize: ConfigSize.defaultSize! * 1.6,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: ConfigSize.defaultSize! - 5,
              ),
              CustomTextField(
                controller: phoneController,
                inputType: TextInputType.phone,
              ),
              SizedBox(height: ConfigSize.defaultSize! * 2),






              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: ConfigSize.defaultSize! * 3,
                ),
                child: MainButton(
                  onTap: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: const ForgetPasswordScreen(),
                      withNavBar: false,
                      pageTransitionAnimation: PageTransitionAnimation.fade,
                    );


                  },
                  title: StringManager.changePassword.tr(),
                  color: ColorManager.gray,
                  textColor: ColorManager.kPrimaryBlueDark,
                ),
              ),
              MainButton(
                onTap: () {PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: const MainScreen(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.fade,
                );
                },
                title: StringManager.done.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
