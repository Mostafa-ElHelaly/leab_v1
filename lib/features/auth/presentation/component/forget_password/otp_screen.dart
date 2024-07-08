import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:globaladvice_new/core/resource_manger/color_manager.dart';
import 'package:globaladvice_new/core/resource_manger/locale_keys.g.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';
import 'package:globaladvice_new/core/widgets/main_button.dart';
import 'package:globaladvice_new/features/auth/presentation/component/forget_password/change_password_screen.dart';
import 'package:globaladvice_new/features/auth/presentation/component/forget_password/counter_by_minute.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final pinController = TextEditingController();

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

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
          StringManager.forgetPassword2.tr(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: ConfigSize.defaultSize! * 2,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(ConfigSize.defaultSize! * 1.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringManager.pleaseEnterTheCode.tr(),
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: ConfigSize.defaultSize! * 1.6,
              ),
            ),
            Text(
              "GlobaAdvice@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: ConfigSize.defaultSize! * 1.6,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: ConfigSize.defaultSize! * 3,
              ),
              child: Pinput(
                controller: pinController,
                androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsUserConsentApi,
                listenForMultipleSmsOnAndroid: true,
                length: 6,
                defaultPinTheme: PinTheme(
                    width: ConfigSize.defaultSize! * 6,
                    height: ConfigSize.defaultSize! * 6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(ConfigSize.defaultSize!),
                      border: Border.all(color: Colors.grey),
                    )),
                separatorBuilder: (index) => const SizedBox(width: 8),
                validator: (value) {
                  return value != null ? null : 'Pin is incorrect';
                },
                hapticFeedbackType: HapticFeedbackType.lightImpact,
                onCompleted: (pin) {
                  debugPrint('onCompleted: $pin');
                },
                onChanged: (value) {
                  debugPrint('onChanged: $value');
                },
              ),
            ),
            const CounterByMinute(),
            const SizedBox(
              height: 5,
            ),
            Text(
              StringManager.resendCode.tr(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: ConfigSize.defaultSize! * 1.6,
                color: ColorManager.mainColor,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: ConfigSize.defaultSize! * 3),
              child: MainButton(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const ChangePasswordScreen(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade,
                  );
                },
                title: StringManager.verify.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
