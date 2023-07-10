import 'package:flutter/material.dart';

import '../../../utils/sized_boxes.dart';

class AccountBalance extends StatelessWidget {
  const AccountBalance({super.key, required this.balance});
  final double balance;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Balance',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const HSizedBox16(),
        Text(
          '\$${balance.toStringAsFixed(2)}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
