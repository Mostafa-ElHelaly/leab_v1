import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/core/widgets/main_button.dart';
import 'package:leap/features/auth/presentation/forget%20password/widgets/pin_text_field.dart';

class SendOTPCode extends StatefulWidget {
  const SendOTPCode({super.key});

  @override
  State<SendOTPCode> createState() => _SendOTPCodeState();
}

class _SendOTPCodeState extends State<SendOTPCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, text: 'ForgetPassword'),
      body: Padding(
        padding: EdgeInsets.all(AppSize.defaultSize! * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'We will send a code to your Mobile No. to verify your Mobile No. to set the new password',
              maxLines: 4,
              style: TextStyle(
                  fontSize: AppSize.defaultSize! * 1.6,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis),
            ),
            SizedBox(
              height: AppSize.defaultSize! * 4,
            ),
            const CustomPinCodeTextField(),
            Text(
              'You can resend the verification code after 2:00',
              maxLines: 4,
              style: TextStyle(
                  fontSize: AppSize.defaultSize! * 1.6,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Resend the code',
                maxLines: 4,
                style: TextStyle(
                    fontSize: AppSize.defaultSize! * 1.7,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.grey,
                    decorationThickness: 2,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
            MainButton(
              text: 'verify',
              onTap: () {
                Navigator.pushNamed(context, Routes.changePassword);
              },
            )
          ],
        ),
      ),
    );
  }
}
