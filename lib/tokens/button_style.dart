import 'package:flutter/material.dart';

abstract class AppButtonStyles {
  static ButtonStyle loginButtonStyle() => ElevatedButton.styleFrom(
        foregroundColor: Colors.blue[900],
        backgroundColor: Colors.white,
      );
}
