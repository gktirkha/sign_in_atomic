import 'package:flutter/material.dart';

import '../atoms/home_app_bar.dart';
import '../organisms/bottom_nav.dart';
import '../templates/template_1.dart';
import '../templates/template_2.dart';
import '../templates/template_3.dart';
import '../templates/template_4.dart';
import '../templates/template_5.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 3;
  void _onTap(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  List<Widget> homePages = [
    const Template1(),
    const Template2(),
    const Template3(),
    const Template4(),
    const Template5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: homePages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavBar(
        onTap: _onTap,
        selectedIndex: selectedIndex,
      ),
    );
  }
}
