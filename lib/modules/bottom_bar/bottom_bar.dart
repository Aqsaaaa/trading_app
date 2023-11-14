import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // FirstPage(),
    // SecondPage(),
    // ThirdPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navbar Example'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'All Chart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Display',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Signal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Help Desk',
          ),
        ],
      ),
    );
  }
}
