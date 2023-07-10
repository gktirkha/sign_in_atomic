import 'package:flutter/material.dart';

import '../../login/atoms/sized_boxes.dart';
import '../molecules/account_details_tile.dart';
import '../molecules/card_molecule.dart';
import '../molecules/features.dart';
import '../organism/card_actions.dart';

class Template4 extends StatelessWidget {
  const Template4({super.key});
  final String name = 'Gautam Tirkha';
  final String location = 'Gurugram';
  final String cardNumber = 'xxxxxxxxxx';
  final double balance = 1234.56;
  final String validity = '12/12/2000';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          AccountDetailsTile(
            name: name,
            location: location,
            balance: balance,
          ),
          const VSizedBox16(),
          const Features(),
          const VSizedBox16(),
          CardMolecule(cardNumber: cardNumber, name: name, validity: validity),
          const VSizedBox16(),
          CardActions(),
        ],
      ),
    );
  }
}
