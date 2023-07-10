import 'package:flutter/material.dart';

import '../../login/atoms/sized_boxes.dart';

class AccountActionTile extends StatelessWidget {
  const AccountActionTile({
    super.key,
    required this.onTap,
    required this.title,
  });
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white30,
      onTap: onTap,
      child: Column(
        children: [
          const VSizedBox8(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              const Icon(
                Icons.navigate_next_rounded,
                color: Colors.grey,
              )
            ],
          ),
          const VSizedBox8(),
          const Divider(
            color: Colors.grey,
            height: 0,
          ),
        ],
      ),
    );
  }
}
