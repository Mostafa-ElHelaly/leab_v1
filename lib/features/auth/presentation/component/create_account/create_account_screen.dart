import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:globaladvice_new/core/resource_manger/asset_path.dart';
import 'package:globaladvice_new/core/resource_manger/color_manager.dart';
import 'package:globaladvice_new/core/resource_manger/locale_keys.g.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';
import 'package:globaladvice_new/core/widgets/custom_text_field.dart';
import 'package:globaladvice_new/core/widgets/main_button.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../../../../core/resource_manger/routs_manager.dart';
import '../../../../../core/widgets/snack_bar.dart';
import '../../manager/register_bloc/register_bloc.dart';
import '../../manager/register_bloc/register_event.dart';
import '../../manager/register_bloc/register_state.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController ganderController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dateOfBirthdayController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    ganderController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    dateOfBirthdayController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    ganderController.dispose();
    emailController.dispose();
    passwordController.dispose();
    dateOfBirthdayController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  String? selectedValue;
  bool isVisible = true;
  bool isVisible1 = true;
  final List<String> items = [
    'Male',
    'Female',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccessState) {
          EasyLoading.dismiss();
          Navigator.pushNamedAndRemoveUntil(
            context,
            Routes.login,
            (route) => false,
          );
        } else if (state is RegisterErrorState) {
          EasyLoading.dismiss();
          EasyLoading.showError(state.errorMessage);
        } else if (state is RegisterLoadingState) {
          EasyLoading.show(status: 'loading...');
        }
      },
      child: Scaffold(
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
            StringManager.signUpWithUs.tr(),
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
                  StringManager.dateOfBirthday.tr(),
                  style: TextStyle(
                    fontSize: ConfigSize.defaultSize! * 1.6,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: ConfigSize.defaultSize! - 5,
                ),
                CustomTextField(
                  controller: dateOfBirthdayController,
                  inputType: TextInputType.datetime,
                ),
                SizedBox(height: ConfigSize.defaultSize! * 2),
                Text(
                  StringManager.password.tr(),
                  style: TextStyle(
                    fontSize: ConfigSize.defaultSize! * 1.6,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: ConfigSize.defaultSize! - 5,
                ),
                CustomTextField(
                  controller: passwordController,
                  inputType: TextInputType.text,
                  obscureText: isVisible1,
                  suffix: InkWell(
                      onTap: () {
                        {
                          isVisible1 = !isVisible1;
                        }
                        setState(() {});
                      },
                      child: Icon(isVisible1
                          ? Icons.visibility_off_outlined
                          : Icons.remove_red_eye_outlined)),
                ),
                SizedBox(height: ConfigSize.defaultSize! * 2),
                Text(
                  StringManager.confirmPassword.tr(),
                  style: TextStyle(
                    fontSize: ConfigSize.defaultSize! * 1.6,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: ConfigSize.defaultSize! - 5,
                ),
                CustomTextField(
                  controller: confirmPasswordController,
                  inputType: TextInputType.text,
                  obscureText: isVisible,
                  suffix: InkWell(
                    onTap: () {
                      {
                        isVisible = !isVisible;
                      }
                      setState(() {});
                    },
                    child: Icon(isVisible
                        ? Icons.visibility_off_outlined
                        : Icons.remove_red_eye_outlined),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ConfigSize.defaultSize! * 3),
                  child: MainButton(
                    // onTap: () {
                    //   if (validation()) {
                    //     errorSnackBar(context, StringManager.login.tr());
                    //   } else {
                    //     BlocProvider.of<RegisterBloc>(context)
                    //         .add(RegisterEvent(
                    //       email: emailController.text,
                    //       password: 'Nn@\$${passwordController.text}',
                    //     ));
                    //   }
                    // },

                    onTap: () {
                      if (validation()) {
                        BlocProvider.of<RegisterBloc>(context).add(
                          RegisterEvent(
                            email: emailController.text,
                            password: 'Nn@\$${passwordController.text}',
                          ),
                        );
                      } else {
                        errorSnackBar(context, StringManager.errorFillFields);
                      }
                    },

                    // PersistentNavBarNavigator.pushNewScreen(
                    //   context,
                    //   screen: const MainScreen(),
                    //   withNavBar: false,
                    //   pageTransitionAnimation: PageTransitionAnimation.fade,
                    // );

                    title: StringManager.next.tr(),
                  ),
                ),
                SizedBox(
                  height: ConfigSize.defaultSize! * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      StringManager.alreadyHaveAnAccount.tr(),
                      style: TextStyle(
                        color: ColorManager.kPrimaryBlueDark,
                        fontWeight: FontWeight.bold,
                        fontSize: ConfigSize.defaultSize! * 2,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: const CreateAccount(),
                          withNavBar: false,
                          pageTransitionAnimation: PageTransitionAnimation.fade,
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorManager.gray,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: ConfigSize.defaultSize! * 1.5,
                            horizontal: ConfigSize.defaultSize! * 3,
                          ),
                          child: Text(
                            StringManager.login.tr(),
                            style: TextStyle(
                              color: ColorManager.kPrimaryBlueDark,
                              fontWeight: FontWeight.bold,
                              fontSize: ConfigSize.defaultSize! * 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool validation() {
    if (emailController.text == '') {
      return false;
    } else if (passwordController.text == '') {
      return false;
    } else {
      return true;
    }
  }
}
