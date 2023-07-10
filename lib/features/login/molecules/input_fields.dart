import 'package:flutter/material.dart';

import '../atoms/password_field_suffix.dart';

class InputField extends StatelessWidget {
  InputField({
    super.key,
    this.isPasswordField = false,
    this.label,
    this.controller,
  });
  final bool isPasswordField;
  final ValueNotifier<bool> isPasswordVisible = ValueNotifier(false);
  final String? label;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isPasswordVisible,
      builder: (context, value, child) => TextField(
        controller: controller,
        obscureText: isPasswordField ? !value : false,
        cursorColor: Colors.white,
        style: const TextStyle(color: Colors.white),
        decoration: inputFieldDecoration(),
      ),
    );
  }

  InputDecoration inputFieldDecoration() {
    return InputDecoration(
      labelStyle: const TextStyle(color: Colors.white54),
      label: label == null ? null : Text(label!),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      disabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      suffix: isPasswordField
          ? PasswordFieldSuffix(isPasswordVisible: isPasswordVisible)
          : null,
    );
  }
}
