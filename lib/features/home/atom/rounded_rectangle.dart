import 'package:flutter/material.dart';

class RoundedRectangle extends StatelessWidget {
  const RoundedRectangle({
    super.key,
    this.width,
    this.height,
    this.color,
    this.padding = 16,
    required this.child,
    this.borderRadius = 12,
  });
  final double? width;
  final double? height;
  final Color? color;
  final double padding;
  final Widget child;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      child: child,
    );
  }
}
