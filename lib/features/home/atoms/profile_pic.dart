import 'package:flutter/material.dart';

import 'rounded_container.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const RoundedContainer(
      borderColor: Colors.green,
      child: Icon(
        Icons.person,
        size: 32,
      ),
    );
  }
}
