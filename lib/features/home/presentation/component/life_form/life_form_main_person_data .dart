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

class LifeFormMainPersonData extends StatefulWidget {
  const LifeFormMainPersonData({super.key});

  @override
  State<LifeFormMainPersonData> createState() => _LifeFormMainPersonDataState();
}

class _LifeFormMainPersonDataState extends State<LifeFormMainPersonData> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController marketValueController = TextEditingController();

  @override
  void initState() {
    fullNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    marketValueController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    fullNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    marketValueController.dispose();
    super.dispose();
  }

  String? selectedValue;
  final List<String> items = [
    'Male',
    'Female',
  ];
  final List<String> type = [
    'Owner',
    'Tenant',
  ];
  final List<String> carBrand = [
    'skoda',
    'kia',
    'Honda',
    'Bmw',
    'Volvo',
    'Seat',
    'Mini',
  ];
  final List<String> motorDeductibles = [
    '10%',
    '25%',
    'No Deductible',
  ];  final List<String> manufactureYear = [
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022',
    '2023',
    '2024',

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
          StringManager.lifeInsuranceForm.tr(),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetsPath.logo,
                    scale: 5,
                  ),
                ],
              ),
              SizedBox(
                height: ConfigSize.defaultSize! * 2,
              ),
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
                inputType: TextInputType.phone,
              ),
              SizedBox(height: ConfigSize.defaultSize! * 2),
              Text(
                StringManager.type.tr(),
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
                      'Type',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: type
                        .map((String type) => DropdownMenuItem<String>(
                              value: type,
                              child: Text(
                                type,
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
                StringManager.address.tr(),
                style: TextStyle(
                  fontSize: ConfigSize.defaultSize! * 1.6,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: ConfigSize.defaultSize! - 5,
              ),
              CustomTextField(
                controller: marketValueController,
                inputType: TextInputType.text,
              ),

              SizedBox(height: ConfigSize.defaultSize! * 2),
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
    if (marketValueController.text == '') {
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
