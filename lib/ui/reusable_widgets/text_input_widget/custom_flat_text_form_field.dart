import 'package:flutter/material.dart';
import 'package:igpzr/core/config/app_config.dart';

class CustomFlatTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final Function(String?)? validator;

  const CustomFlatTextFormField({
    Key? key,
    required this.hintText,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.always,
      validator: (String? val) {
        if (validator != null) {
          return validator!(val);
        }
      },
      decoration: InputDecoration(
        filled: true,
        hintStyle: TextStyle(color: AppConfig.customGray),
        hintText: hintText,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        border: InputBorder.none,
        fillColor: Colors.white,
        focusedBorder: InputBorder.none,
      ),
    );
  }
}
