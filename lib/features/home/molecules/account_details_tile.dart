import 'package:flutter/material.dart';

import '../../login/atoms/sized_boxes.dart';
import '../atom/account_balance.dart';
import '../atom/account_details_text.dart';
import '../atom/profile_pic.dart';

class AccountDetailsTile extends StatelessWidget {
  const AccountDetailsTile({
    super.key,
    required this.name,
    required this.location,
    required this.balance,
  });
  final String name;
  final String location;
  final double balance;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const ProfilePic(),
            const HSizedBox16(),
            AccountDetailsText(
              location: location,
              name: name,
            ),
          ],
        ),
        const VSizedBox16(),
        AccountBalance(balance: balance),
      ],
    );
  }
}
