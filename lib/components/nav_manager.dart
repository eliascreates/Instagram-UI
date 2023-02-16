import 'package:flutter/material.dart';
//components
import './bottom_nav.dart';
//pages
import '../pages/profilepage.dart';
import '../pages/homepage.dart';
import '../pages/searchpage.dart';

class NavManager extends StatefulWidget {
  const NavManager({super.key});

  @override
  State<NavManager> createState() => _NavManagerState();
}

class _NavManagerState extends State<NavManager> {
  int _selectedIndex = 0;

  void _indexBottomNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
          selectedIndex: _selectedIndex, indexBottomNav: _indexBottomNav),
      body: Nav.pages[_selectedIndex],
    );
  }
}

class Nav {
  static List<Widget> pages = const [
    HomePage(),
    SearchPage(),
    Center(child: Text('Post Page')),
    Center(child: Text('Reels Page')),
    ProfilePage()
  ];
}
