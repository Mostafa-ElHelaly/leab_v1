import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/main_button_web.dart';
import 'package:leap/features/auth_web/presentation/widgets/field_widget_login_web.dart';

class LoginScreenWeb extends StatefulWidget {
  const LoginScreenWeb({super.key});

  @override
  State<LoginScreenWeb> createState() => _LoginScreenWebState();
}

class _LoginScreenWebState extends State<LoginScreenWeb> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: WidgetRatio.heightRatio(24)),
                            child: Text(
                              'Welcome back !',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: WidgetRatio.widthRatio(24),
                                // fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: WidgetRatio.widthRatio(4)),
                            child: Text(
                              'You Have Been Missed For Long Time',
                              style: TextStyle(
                                color: AppColors.mainFontColor,
                                fontSize: WidgetRatio.widthRatio(12),
                                // fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: WidgetRatio.heightRatio(45),
                          ),
                          CustomTextFieldWeb(
                            labelText: 'email',
                            controller: emailController,
                          ),
                          SizedBox(
                            height: WidgetRatio.heightRatio(12),
                          ),
                          CustomTextFieldWeb(
                            labelText: 'password',
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
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.forgetPassword);
                              },
                              child: Text(
                                'Forget Your Password ?',
                                style: TextStyle(
                                  color: AppColors.forgetPasswordColor,
                                  fontSize: WidgetRatio.widthRatio(12),
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: WidgetRatio.heightRatio(32),
                          ),
                          MainButtonWeb(
                            text: 'Sign In',
                            height: WidgetRatio.heightRatio(38),
                            borderColor: AppColors.primaryColor,
                            onTap: () =>
                                Navigator.pushNamed(context, Routes.home),
                          ),
                          SizedBox(
                            height: WidgetRatio.heightRatio(30),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Don\'t have an account?   ',
                                style: TextStyle(
                                    color: AppColors.greyColor,
                                    // fontSize: AppSize.defaultSize! * 1.4,
                                    fontWeight: FontWeight.w700),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, Routes.signUp);
                                },
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: AppColors.primaryColor,
                                      // fontSize: AppSize.defaultSize! * 1.5,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                      decorationColor: AppColors.primaryColor),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: WidgetRatio.heightRatio(30),
                          ),
                          MainButtonWeb(
                            text: 'Sign in For Employer',
                            height: WidgetRatio.heightRatio(38),
                            color: AppColors.backGroundColor,
                            textColor: AppColors.primaryColor,
                            borderColor: AppColors.primaryColor,
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
