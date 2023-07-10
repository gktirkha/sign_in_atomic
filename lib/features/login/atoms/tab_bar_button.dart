import 'package:flutter/material.dart';

import '../../../tokens/typography.dart';

class TabBarButton extends StatelessWidget {
  const TabBarButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.isSelected,
  });
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Text(
          label,
          style: AppTextStyles.loginTabBar(isSelected: isSelected),
        ),
      ),
    );
  }
}
