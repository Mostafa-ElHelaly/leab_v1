import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/core/widgets/main_button.dart';
import 'package:leap/features/auth/presentation/widgets/column-with_text_field.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
      appBar: appBar(context,text: 'forget password'),
      body: Padding(
        padding: EdgeInsets.all(AppSize.defaultSize! * 2),
        child: Column(
          children: [
            Text(
              'We will send a code to your Mobile No. to verify your Mobile No. to set the new password',
              maxLines: 4,
              style: TextStyle(
                  fontSize: AppSize.defaultSize! * 1.6,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis),
            ),
            ColumnWithTextField(
              text: 'Enter Your Mobile No.',
              controller: phoneController,
            ),
            SizedBox(
              height: AppSize.defaultSize!*4,
            ),
            MainButton(text: 'Send Code',onTap: (){
              Navigator.pushNamed(context, Routes.sendOTPCode);
            },)
          ],
        ),
      ),
    );
  }
}
