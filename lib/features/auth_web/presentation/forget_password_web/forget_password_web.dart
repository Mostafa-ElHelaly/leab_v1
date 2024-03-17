import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/custom_text_field_web.dart';
import 'package:leap/core/widgets/main_button_web.dart';

class ForgetPasswordWeb extends StatefulWidget {
  const ForgetPasswordWeb({super.key});

  @override
  State<ForgetPasswordWeb> createState() => _ForgetPasswordWebState();
}

class _ForgetPasswordWebState extends State<ForgetPasswordWeb> {
  late TextEditingController phoneController;

  @override
  void initState() {
    phoneController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      body: Stack(
        children: [
          Center(
            child: Container(
              width: WidgetRatio.widthRatio(400),
              height: WidgetRatio.heightRatio(290),
              decoration: const BoxDecoration(
                color: AppColors.backGroundColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.login),
                      icon: const Icon(Icons.close_outlined),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(WidgetRatio.heightRatio(12)),
                          child: Text(
                            'Forget Password',
                            style: TextStyle(
                              color: AppColors.mainFontColor,
                              fontSize: WidgetRatio.widthRatio(24),
                              fontWeight: FontWeight.bold,
                              // fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Text(
                          'We will send a code to your Mobile No. to verify your Mobile No. to set the new password',
                          maxLines: 3,
                          style: TextStyle(
                            color: AppColors.mainFontColor,
                            fontSize: WidgetRatio.heightRatio(12),
                            fontWeight: FontWeight.w400,
                            overflow: TextOverflow.ellipsis,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(height: WidgetRatio.heightRatio(16)),
                        CustomTextFieldWeb(
                          labelText: 'Enter Your Mobile No.',
                          controller: phoneController,
                          width: WidgetRatio.widthRatio(360),
                          height: WidgetRatio.heightRatio(35),
                        ),
                        SizedBox(height: WidgetRatio.heightRatio(24)),
                        MainButtonWeb(
                          text: 'Send Code',
                          textSize: WidgetRatio.heightRatio(16),
                          borderColor: AppColors.primaryColor,
                          height: WidgetRatio.heightRatio(48),
                          onTap: () {
                            Navigator.pushNamed(context, Routes.sendOTPCode);
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
