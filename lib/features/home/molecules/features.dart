import 'package:flutter/material.dart';

import '../atom/rounded_container.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(iconTheme: const IconThemeData(color: Colors.deepPurple)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FeatureWidget(
            child: Icon(Icons.add),
          ),
          FeatureWidget(
            child: Icon(Icons.search),
          ),
          FeatureWidget(
            child: Icon(Icons.bar_chart),
          ),
        ],
      ),
    );
  }
}

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      borderColor: Colors.deepPurple,
      child: child,
    );
  }
}
