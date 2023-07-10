import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
  const CenterText({super.key, required this.num});
  final int num;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Yet To Be Implemented $num'));
  }
}
