import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle welcomeMessageHeading() => const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 32,
      );
  static TextStyle welcomeMessageBody() => const TextStyle(
        color: Colors.white,
        fontSize: 32,
      );
  static TextStyle loginTabBar({required bool isSelected}) => TextStyle(
        color: isSelected ? Colors.white : Colors.white60,
        fontSize: 24,
      );
  static TextStyle f16W400White() => const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );
  static TextStyle f24W400White() => const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      );
  static TextStyle f32W400White() => const TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.w400,
      );
  static TextStyle f12W400White() => const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );
}
