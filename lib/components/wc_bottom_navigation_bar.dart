import 'package:flutter/material.dart';

class WcBottomNavigationBar extends StatelessWidget {

  final int currentIndex;
  final void Function(int)? onTap;
  const WcBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Theme.of(context).colorScheme.inversePrimary,
      items: const [

        // Home Page
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),

        // Search Page
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),

        // Profile Page
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),

      ]
    );
  }
}