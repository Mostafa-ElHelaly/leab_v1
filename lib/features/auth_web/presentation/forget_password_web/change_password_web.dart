import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/custom_text_field_web.dart';
import 'package:leap/core/widgets/main_button_web.dart';

class ChangePasswordWeb extends StatefulWidget {
  const ChangePasswordWeb({super.key});

  @override
  State<ChangePasswordWeb> createState() => _ChangePasswordWebState();
}

class _ChangePasswordWebState extends State<ChangePasswordWeb> {
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmController;
  @override
  void initState() {
    passwordController = TextEditingController();
    passwordConfirmController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    passwordConfirmController.dispose();

    super.dispose();
  }

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      body: Stack(
        children: [
          Center(
            child: Container(
              width: WidgetRatio.widthRatio(400),
              height: WidgetRatio.heightRatio(289),
              decoration: const BoxDecoration(
                color: AppColors.backGroundColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, Routes.sendOTPCode),
                        icon: const Icon(Icons.arrow_back),
                      ),
                      IconButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, Routes.login),
                        icon: const Icon(Icons.close_outlined),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(WidgetRatio.heightRatio(12)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Enter New Password',
                              style: TextStyle(
                                color: AppColors.mainFontColor,
                                fontSize: WidgetRatio.widthRatio(24),
                                fontWeight: FontWeight.bold,
                                // fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                        CustomTextFieldWeb(
                          labelText: 'New Password',
                          height: WidgetRatio.heightRatio(48),
                          width: WidgetRatio.widthRatio(360),
                          obscureText: isVisible,
                          controller: passwordController,
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
                        SizedBox(
                          height: WidgetRatio.heightRatio(12),
                        ),
                        CustomTextFieldWeb(
                          labelText: 'Confirm New Password',
                          height: WidgetRatio.heightRatio(48),
                          width: WidgetRatio.widthRatio(360),
                          // width: ,
                          obscureText: isVisible,
                          controller: passwordController,
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
                        SizedBox(
                          height: WidgetRatio.heightRatio(24),
                        ),
                        MainButtonWeb(
                          text: 'Confirm',
                          textSize: WidgetRatio.heightRatio(16),
                          borderColor: AppColors.primaryColor,
                          height: WidgetRatio.heightRatio(48),
                          onTap: () {
                            Navigator.pushNamed(context, Routes.login);
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
