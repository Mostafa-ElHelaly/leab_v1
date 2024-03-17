import 'package:flutter/material.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/core/widgets/main_button.dart';
import 'package:leap/features/auth/presentation/widgets/column-with_text_field.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,text: 'Forget Password'),
      body: Padding(
        padding: EdgeInsets.all(AppSize.defaultSize! * 2),
        child: Column(
          children: [
            ColumnWithTextField(
              text: 'Password',
              controller: passwordController,
            ),
            ColumnWithTextField(
              text: 'Confirm Password',
              controller: passwordConfirmController,
            ),
            SizedBox(
              height: AppSize.defaultSize!*4,
            ),
            const MainButton(text: 'Confirm')
          ],
        ),
      ),
      
    );
  }
}
