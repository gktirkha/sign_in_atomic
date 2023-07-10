import 'package:flutter/material.dart';

import '../../../tokens/typography.dart';
import '../../login/atoms/sized_boxes.dart';
import '../atom/card_details.dart';
import '../atom/rounded_rectangle.dart';

class CardMolecule extends StatelessWidget {
  const CardMolecule({
    super.key,
    required this.cardNumber,
    required this.name,
    required this.validity,
  });
  final String cardNumber;
  final String name;
  final String validity;

  @override
  Widget build(BuildContext context) {
    return RoundedRectangle(
      width: double.maxFinite,
      color: Colors.deepPurple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: RoundedRectangle(
              padding: 8,
              color: Colors.black.withOpacity(.2),
              borderRadius: 8,
              child: Text(
                'CARD',
                style: AppTextStyles.f16W400White(),
              ),
            ),
          ),
          Text(
            cardNumber,
            style: AppTextStyles.f32W400White(),
          ),
          const VSizedBox16(),
          Text(
            'Card Number',
            style: AppTextStyles.f24W400White(),
          ),
          const VSizedBox16(),
          Row(
            children: [
              CardDetails(heading: 'Name', detail: name),
              const HSizedBox16(),
              CardDetails(heading: 'Validity', detail: validity),
            ],
          )
        ],
      ),
    );
  }
}
