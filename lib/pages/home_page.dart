import 'package:flutter/material.dart';
import 'package:we_connect/pages/posts_page.dart';
import 'package:we_connect/pages/profile_page.dart';
import 'package:we_connect/pages/search_page.dart';
import 'package:we_connect/components/wc_bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Current Selected Index
  int _selectedIndex = 0;

  // List of Pages
  final List<Widget> pages = [
    const PostsPage(),
    const SearchPage(),
    const ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: WcBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
