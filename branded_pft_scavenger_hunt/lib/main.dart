import 'package:flutter/material.dart';
import 'pages/first_floor_page.dart';
import 'pages/second_floor_page.dart';
import 'pages/third_floor_page.dart';
import 'pages/map_page.dart';

void main() {
  runApp(const MaterialApp(home: MainScreen()));
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  
  static const List<Widget> _pages = [
    FirstFloorPage(),
    SecondFloorPage(),
    ThirdFloorPage(),
    MapPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: '1st Floor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: '2nd Floor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: '3rd Floor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
        ],
      ),
    );
  }
}

