import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:globaladvice_new/core/resource_manger/asset_path.dart';
import 'package:globaladvice_new/core/resource_manger/color_manager.dart';
import 'package:globaladvice_new/core/resource_manger/locale_keys.g.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';
import 'package:globaladvice_new/core/widgets/custom_text_field.dart';
import 'package:globaladvice_new/features/home/presentation/component/medical_form/done.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../../core/widgets/main_button.dart';
import '../../../../../main_screen.dart';

class MedicalFormMainPersonData extends StatefulWidget {
  const MedicalFormMainPersonData({super.key});

  @override
  State<MedicalFormMainPersonData> createState() =>
      _MedicalFormMainPersonDataState();
}

class _MedicalFormMainPersonDataState extends State<MedicalFormMainPersonData> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    fullNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    fullNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  String? selectedValue;
  bool isVisible = true;
  bool isVisible1 = true;
  final List<String> items = [
    'Male',
    'Female',
  ];
  final List<String> annual = [
    '250,000 EGP',
    '350,000 EGP',
    '450,000 EGP',
    '550,000 EGP',
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
        centerTitle: true,
        title: Text(
          StringManager.medicalInsuranceForm.tr(),
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
              SizedBox(
                height: ConfigSize.defaultSize! * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetsPath.logo,
                    scale: 5,
                  ),
                ],
              ),
              SizedBox(
                height: ConfigSize.defaultSize! * 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringManager.fullName.tr(),
                          style: TextStyle(
                            fontSize: ConfigSize.defaultSize! * 1.6,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        CustomTextField(
                          controller: fullNameController,
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
                inputType: TextInputType.phone,
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
                StringManager.annualLimit.tr(),
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
                      'Annual limit',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: annual
                        .map((String annual) => DropdownMenuItem<String>(
                              value: annual,
                              child: Text(
                                annual,
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

              MainButton(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const MainScreen(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade,
                  );
                },
                title: StringManager.addYourFamily.tr(),
              ),


              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: ConfigSize.defaultSize! * 3),
                child: MainButton(
                  onTap: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: const DoneScreen(),
                      withNavBar: false,
                      pageTransitionAnimation: PageTransitionAnimation.fade,
                    );
                  },
                  title: StringManager.next.tr(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validation() {
    if (fullNameController.text == '') {
      return false;
    } else if (lastNameController.text == '') {
      return false;
    } else if (emailController.text == '') {
      return false;
    } else if (phoneController.text == '') {
      return false;
    } else {
      return true;
    }
  }
}
