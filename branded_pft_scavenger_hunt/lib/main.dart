import 'package:flutter/material.dart';
import 'pages/first_floor_page.dart';
import 'pages/second_floor_page.dart';
import 'pages/third_floor_page.dart';
import 'pages/map_page.dart';

void main() {
  runApp(MaterialApp(
    home: const MainScreen(),
    theme: ThemeData(
      primaryColor: const Color(0xFF461D7C), // LSU Purple
      colorScheme: ColorScheme.light(
        primary: const Color(0xFF461D7C), // LSU Purple
        secondary: const Color(0xFFFDD023), // LSU Gold
        surface: Colors.white,
        background: Colors.white,
        error: Colors.red,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF461D7C), // LSU Purple
        foregroundColor: Color(0xFFFDD023), // LSU Gold
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF461D7C), // LSU Purple
          foregroundColor: const Color(0xFFFDD023), // LSU Gold
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(const Color(0xFF461D7C)), // LSU Purple
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFF461D7C)), // LSU Purple
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFF461D7C), width: 2), // LSU Purple
        ),
        hintStyle: const TextStyle(color: Colors.grey),
        errorStyle: const TextStyle(color: Colors.red),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF461D7C), // LSU Purple
        selectedItemColor: Color(0xFFFDD023), // LSU Gold
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
    ),
  ));
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

