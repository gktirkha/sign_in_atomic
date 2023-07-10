import 'package:flutter/material.dart';

import '../../../tokens/typography.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Welcome, ',
            style: AppTextStyles.welcomeMessageHeading(),
          ),
          TextSpan(
            text: 'To Sign In Continue',
            style: AppTextStyles.welcomeMessageBody(),
          )
        ],
      ),
    );
  }
}
