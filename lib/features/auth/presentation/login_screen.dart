import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/main_button.dart';
import 'package:leap/core/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppSize.screenHeight! * .3,
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(AssetPath.illustrationLogin)),
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AssetPath.logo,
                            scale: 2,
                          ),
                          Text(
                            'Welcome back !',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: AppSize.defaultSize! * 1.8,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'You Have Been Missed For Long Time',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: AppSize.defaultSize! * 1.2,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            CustomTextField(
              labelText: 'email',
              controller: emailController,
            ),
            SizedBox(
              height: AppSize.defaultSize! * 2,
            ),
            CustomTextField(
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
                  isVisible ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.forgetPassword);
                },
                child: const Text(
                  'Forget Your Password ?',
                  style: TextStyle(color: AppColors.forgetPasswordColor),
                ),
              ),
            ),

              MainButton(
              text: 'login',
                onTap: (){
                Navigator.pushNamed(context, Routes.home);
                },
            ),
            SizedBox(
              height: AppSize.defaultSize! * 4,
            ),
            Text(
              'Or sign in with',
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: AppSize.defaultSize! * 1.2,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: AppSize.defaultSize! * 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetPath.google),
                SizedBox(
                  width: AppSize.defaultSize! * 2,
                ),
                Image.asset(AssetPath.facebook),
                SizedBox(
                  width: AppSize.defaultSize! * 2,
                ),
                Image.asset(AssetPath.apple),
                SizedBox(
                  width: AppSize.defaultSize! * 2,
                ),
                Image.asset(AssetPath.google),
              ],
            ),
            SizedBox(
              height: AppSize.screenHeight! * .17,
            ),
            Container(
              color: AppColors.containerColor,
              height: AppSize.defaultSize! * 4.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?   ',
                    style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: AppSize.defaultSize! * 1.4,
                        fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.signUp);
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: AppSize.defaultSize! * 1.5,
                          fontWeight: FontWeight.w700),
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
