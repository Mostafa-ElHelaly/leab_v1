import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/main_button_web.dart';
import 'package:leap/features/auth_web/presentation/widgets/column_with_text_field_web.dart';

class SignUpScreenWeb extends StatefulWidget {
  const SignUpScreenWeb({super.key});

  @override
  State<SignUpScreenWeb> createState() => _SignUpScreenWebState();
}

class _SignUpScreenWebState extends State<SignUpScreenWeb> {
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController universityController;
  late TextEditingController majorController;

  @override
  void initState() {
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    universityController = TextEditingController();
    majorController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    universityController.dispose();
    majorController.dispose();
    super.dispose();
  }

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: AppSize.screenWidth,
        height: AppSize.screenHeight,
        color: AppColors.loginBackGroundColor,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                AssetPath.loginBackground,
                width: WidgetRatio.widthRatio(604),
                height: WidgetRatio.heightRatio(564),
                alignment: Alignment.topRight,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                AssetPath.circles,
                width: WidgetRatio.widthRatio(667),
                height: WidgetRatio.heightRatio(304),
                alignment: Alignment.bottomLeft,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(WidgetRatio.heightRatio(50)),
                    child: Image.asset(AssetPath.logo, scale: 2),
                  ),
                  Container(
                    width: WidgetRatio.widthRatio(310),
                    height: WidgetRatio.heightRatio(510),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: AppColors.logingBorderColor),
                      color: AppColors.backGroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: WidgetRatio.widthRatio(24)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  EdgeInsets.all(WidgetRatio.heightRatio(12)),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: WidgetRatio.widthRatio(24),
                                  fontWeight: FontWeight.bold,
                                  // fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              ColumnWithTextFieldWeb(
                                text: 'First Name',
                                controller: emailController,
                                width: WidgetRatio.widthRatio(310) / 2 - 40,
                              ),
                              const Spacer(),
                              ColumnWithTextFieldWeb(
                                text: 'Last Name',
                                controller: emailController,
                                width: WidgetRatio.widthRatio(310) / 2 - 40,
                              ),
                            ],
                          ),
                          ColumnWithTextFieldWeb(
                            text: 'Email',
                            controller: emailController,
                          ),
                          ColumnWithTextFieldWeb(
                            text: 'Password',
                            controller: passwordConfirmController,
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              child: Icon(
                                isVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          ColumnWithTextFieldWeb(
                            text: 'Confirm Password',
                            controller: passwordConfirmController,
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              child: Icon(
                                isVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          ColumnWithTextFieldWeb(
                            text: 'Age',
                            controller: phoneController,
                          ),
                          ColumnWithTextFieldWeb(
                            text: 'Phone',
                            controller: phoneController,
                          ),
                          ColumnWithTextFieldWeb(
                            text: 'Address',
                            controller: phoneController,
                          ),
                          SizedBox(height: WidgetRatio.heightRatio(15)),
                          MainButtonWeb(
                            text: 'Sign Up',
                            height: WidgetRatio.heightRatio(38),
                            borderColor: AppColors.primaryColor,
                            onTap: () =>
                                Navigator.pushNamed(context, Routes.login),
                          ),
                          SizedBox(height: WidgetRatio.heightRatio(14)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'You Already have an account?   ',
                                style: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: WidgetRatio.widthRatio(12),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, Routes.login);
                                },
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: WidgetRatio.widthRatio(12),
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
