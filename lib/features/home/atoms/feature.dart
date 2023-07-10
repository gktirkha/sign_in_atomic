import 'package:flutter/material.dart';

import 'rounded_container.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({
    super.key,
    required this.child,
    this.onTap,
  });
  final Widget child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.grey,
      child: RoundedContainer(
        borderColor: Colors.deepPurple,
        child: child,
      ),
    );
  }
}
