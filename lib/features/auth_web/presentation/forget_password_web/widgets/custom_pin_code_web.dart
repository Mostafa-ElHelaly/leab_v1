import 'dart:async';

import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextFieldWeb extends StatefulWidget {
  const CustomPinCodeTextFieldWeb({super.key});

  @override
  State<CustomPinCodeTextFieldWeb> createState() =>
      _CustomPinCodeTextFieldWebState();
}

class _CustomPinCodeTextFieldWebState extends State<CustomPinCodeTextFieldWeb> {
  late TextEditingController controller;
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    controller = TextEditingController();
    errorController = StreamController<ErrorAnimationType>();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    errorController!.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(AppSize.defaultSize!),
        fieldHeight: WidgetRatio.heightRatio(64),
        fieldWidth: WidgetRatio.widthRatio(53),
        activeFillColor: Colors.white,
        disabledColor: Colors.white,
        selectedFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        inactiveColor: AppColors.borderColor,
        selectedColor: AppColors.borderColor,
        activeColor: AppColors.primaryColor,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      errorAnimationController: errorController,
      controller: controller,
      onCompleted: (v) {
        print("Completed");
      },
      onChanged: (value) {
        print(value);
        setState(() {
          currentText = value;
        });
      },
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
    );
  }
}
