import 'package:flutter/material.dart';

import '../atoms/account_actions_tile.dart';

class CardActions extends StatelessWidget {
  CardActions({super.key});
  final List<String> actionNames = ['My Card', 'Transactions'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => AccountActionTile(
        onTap: () {},
        title: actionNames[index],
      ),
      itemCount: actionNames.length,
    );
  }
}
