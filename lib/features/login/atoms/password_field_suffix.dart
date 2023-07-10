import 'package:flutter/material.dart';

class PasswordFieldSuffix extends StatelessWidget {
  const PasswordFieldSuffix({
    super.key,
    required this.isPasswordVisible,
  });

  final ValueNotifier<bool> isPasswordVisible;

  @override
  Widget build(BuildContext context) {
    final bool value = isPasswordVisible.value;
    return GestureDetector(
      onTap: () => isPasswordVisible.value = !value,
      child: Icon(
        isPasswordVisible.value ? Icons.visibility : Icons.visibility_off,
        color: Colors.white,
      ),
    );
  }
}
