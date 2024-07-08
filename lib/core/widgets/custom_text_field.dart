import 'package:flutter/material.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  Widget? suffix;
  TextInputType inputType;
  bool? obscureText;
  String? hint;

  CustomTextField({
    super.key,
    required this.controller,
    this.suffix,
    required this.inputType,
    this.obscureText = false,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: suffix,
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            EdgeInsets.symmetric(horizontal: ConfigSize.defaultSize!),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xFFD3D3D3),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xFFD3D3D3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xFFD3D3D3),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xFFD3D3D3),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xFFD3D3D3),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xFFD3D3D3),
          ),
        ),
      ),
      style: const TextStyle(color: Colors.black),
    );
  }
}
