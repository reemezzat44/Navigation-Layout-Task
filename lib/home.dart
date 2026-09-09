import 'package:assignment_16/grid_view_screen.dart';
import 'package:assignment_16/page_view_screen.dart';
import 'package:assignment_16/tab_bar_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    TabBarScreen(),
    GridViewScreen(),
    PageViewScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.purple.shade200,
        unselectedItemColor: Colors.black26,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.tab),
            label: "TabBar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on_rounded),
            label: "GridView",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_carousel),
            label: "PageView",
          ),
        ],
      ),
    );
  }
}
