import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });
  final int selectedIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.query_stats),
          label: 'Stats',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.currency_exchange,
          ),
          label: 'balance',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.security,
          ),
          label: 'Security',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_2,
          ),
          label: 'Account',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: 'Settings',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onTap,
      selectedItemColor: Colors.purple[900],
      unselectedItemColor: Colors.grey[700],
      backgroundColor: Colors.white,
      showSelectedLabels: false,
    );
  }
}
