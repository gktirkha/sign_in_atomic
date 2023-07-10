import 'package:flutter/material.dart';

import '../../../utils/sized_boxes.dart';

class AccountDetailsText extends StatelessWidget {
  const AccountDetailsText({
    super.key,
    required this.name,
    required this.location,
  });
  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          name,
          textAlign: TextAlign.start,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              location,
              textAlign: TextAlign.start,
            ),
            const HSizedBox8(),
            const Icon(
              Icons.location_on_sharp,
              color: Colors.deepPurple,
            )
          ],
        ),
      ],
    );
  }
}
