import 'package:flutter/material.dart';

import '../atoms/feature.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(iconTheme: const IconThemeData(color: Colors.deepPurple)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FeatureWidget(
            child: const Icon(Icons.add),
            onTap: () {},
          ),
          FeatureWidget(
            child: const Icon(Icons.search),
            onTap: () {},
          ),
          FeatureWidget(
            child: const Icon(Icons.bar_chart),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
