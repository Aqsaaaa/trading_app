// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../charts/view/charts_page.dart';
import '../displayed/view/displayed_page.dart';
import '../home/view/home_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const ChartsPage(),
    const DisplayedPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? Assets.icon.home.svg(color: Colors.blue)
                : Assets.icon.home.svg(),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? Assets.icon.allCharts.svg(color: Colors.blue)
                : Assets.icon.allCharts.svg(),
            label: 'All Charts',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? Assets.icon.displayed.svg(color: Colors.blue)
                : Assets.icon.displayed.svg(),
            label: 'Displayed',
          ),
        ],
      ),
    );
  }
}
