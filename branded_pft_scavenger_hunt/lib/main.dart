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
  
  // Maintain states for each floor
  final List<int> _floorIndices = [0, 0, 0]; // For 1st, 2nd, and 3rd floors
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _updateFloorIndex(int floorIndex, int newIndex) {
    setState(() {
      _floorIndices[floorIndex] = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          FirstFloorPage(
            currentIndex: _floorIndices[0],
            onIndexChanged: (index) => _updateFloorIndex(0, index),
          ),
          SecondFloorPage(
            currentIndex: _floorIndices[1],
            onIndexChanged: (index) => _updateFloorIndex(1, index),
          ),
          ThirdFloorPage(
            currentIndex: _floorIndices[2],
            onIndexChanged: (index) => _updateFloorIndex(2, index),
          ),
          const MapPage(),
        ],
      ),
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

