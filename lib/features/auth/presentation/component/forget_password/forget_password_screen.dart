import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:globaladvice_new/core/resource_manger/color_manager.dart';
import 'package:globaladvice_new/core/resource_manger/locale_keys.g.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';
import 'package:globaladvice_new/core/widgets/custom_text_field.dart';
import 'package:globaladvice_new/core/widgets/main_button.dart';
import 'package:globaladvice_new/features/auth/data/model/reset_password_model.dart';
import 'package:globaladvice_new/features/auth/presentation/component/forget_password/otp_screen.dart';
import 'package:globaladvice_new/features/auth/presentation/manager/reset_password_bloc/bloc/reset_password_bloc.dart';
import 'package:globaladvice_new/features/auth/presentation/manager/reset_password_bloc/bloc/reset_password_state.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../../core/resource_manger/routs_manager.dart';
import '../../../../../core/widgets/snack_bar.dart';
import '../../../data/data_source/remotly_data_source.dart';
import '../../manager/reset_password_bloc/bloc/reset_password_event.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailController = TextEditingController();

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
        body: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.all(ConfigSize.defaultSize! * 1.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringManager.forgetPasswordHint.tr(),
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: ConfigSize.defaultSize! * 1.5,
                    ),
                  ),
                  SizedBox(
                    height: ConfigSize.defaultSize! * 2,
                  ),
                  Text(
                    StringManager.enterYourEmail.tr(),
                    style: TextStyle(
                      fontSize: ConfigSize.defaultSize! * 1.4,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: ConfigSize.defaultSize! - 5,
                  ),
                  CustomTextField(
                    controller: emailController,
                    inputType: TextInputType.emailAddress,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: ConfigSize.defaultSize! * 3),
                      child: MainButton(
                        onTap: () {
                          if (emailController.text.isNotEmpty) {
                            BlocProvider.of<ResetPasswordBloc>(context).add(
                              ResetPasswordEvent(email: emailController.text),
                            );
                          } else {
                            errorSnackBar(
                                context, StringManager.controllererror.tr());
                          }
                        },
                        title: StringManager.sendCode.tr(),
                      ))
                ],
              ),
            );
          },
          listener: (context, state) {
            if (state is Resetpasswordsuccess && state.model.isCompleted!) {
              Navigator.pushNamedAndRemoveUntil(
                  context, Routes.mainScreen, (route) => false);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(StringManager.resetPasswordSuccess.tr()),
                  backgroundColor: Colors.green,
                ),
              );
            } else if (state is Changingfailedstate) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(StringManager.resetPasswordfailed.tr()),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
        ));
  }
}
