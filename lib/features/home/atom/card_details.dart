import 'package:flutter/material.dart';

import '../../../tokens/typography.dart';
import '../../login/atoms/sized_boxes.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key, required this.detail, required this.heading});
  final String detail;
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          detail,
          style: AppTextStyles.f16W400White(),
        ),
        const VSizedBox8(),
        Text(
          heading,
          style: AppTextStyles.f12W400White(),
        ),
      ],
    );
  }
}
