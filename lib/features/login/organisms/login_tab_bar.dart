import 'package:flutter/material.dart';

import '../atoms/tab_bar_button.dart';

typedef BoolCallback = Function(bool val);

class LoginTabBar extends StatelessWidget {
  const LoginTabBar({
    super.key,
    required this.controller,
  });
  final ValueNotifier<bool> controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.2),
      ),
      child: ValueListenableBuilder(
        valueListenable: controller,
        builder: (context, value, child) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabBarButton(
              label: 'Sign In',
              onTap: () => controller.value = true,
              isSelected: value,
            ),
            TabBarButton(
              label: 'Sign Up',
              onTap: () => controller.value = false,
              isSelected: !value,
            ),
          ],
        ),
      ),
    );
  }
}
