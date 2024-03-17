import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/main_button_web.dart';
import 'package:leap/features/auth_web/presentation/forget_password_web/widgets/custom_pin_code_web.dart';

class SendOTPCodeWeb extends StatefulWidget {
  const SendOTPCodeWeb({super.key});

  @override
  State<SendOTPCodeWeb> createState() => _SendOTPCodeWebState();
}

class _SendOTPCodeWebState extends State<SendOTPCodeWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      body: Stack(
        children: [
          Center(
            child: Container(
              width: WidgetRatio.widthRatio(400),
              height: WidgetRatio.heightRatio(350),
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
                            Navigator.pushNamed(context, Routes.forgetPassword),
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
                              'Verify Email',
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
                        Text(
                          'Please enter the code which sent to Mobile No.',
                          maxLines: 2,
                          style: TextStyle(
                            color: AppColors.mainFontColor,
                            fontSize: WidgetRatio.heightRatio(12),
                            fontWeight: FontWeight.w400,
                            overflow: TextOverflow.ellipsis,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(height: WidgetRatio.heightRatio(16)),
                        const CustomPinCodeTextFieldWeb(),
                        SizedBox(height: WidgetRatio.heightRatio(16)),
                        Text(
                          'You can resend the verification code after 2:00',
                          maxLines: 3,
                          style: TextStyle(
                            color: AppColors.mainFontColor,
                            fontSize: WidgetRatio.heightRatio(12),
                            fontWeight: FontWeight.w400,
                            overflow: TextOverflow.ellipsis,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.signUp);
                          },
                          child: Text(
                            'Resend Code',
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: WidgetRatio.heightRatio(14),
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.primaryColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(height: WidgetRatio.heightRatio(24)),
                        MainButtonWeb(
                          text: 'Send Code',
                          textSize: WidgetRatio.heightRatio(16),
                          borderColor: AppColors.primaryColor,
                          height: WidgetRatio.heightRatio(48),
                          onTap: () {
                            Navigator.pushNamed(context, Routes.changePassword);
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
