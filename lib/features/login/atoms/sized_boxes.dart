import 'package:flutter/material.dart';

class VSizedBox8 extends StatelessWidget {
  const VSizedBox8({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 8,
    );
  }
}

class VSizedBox16 extends StatelessWidget {
  const VSizedBox16({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 16,
    );
  }
}

class HSizedBox16 extends StatelessWidget {
  const HSizedBox16({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 16,
    );
  }
}

class HSizedBox8 extends StatelessWidget {
  const HSizedBox8({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 8,
    );
  }
}
