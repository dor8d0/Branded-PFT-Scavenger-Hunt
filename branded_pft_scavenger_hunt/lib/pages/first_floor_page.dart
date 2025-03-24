import 'package:flutter/material.dart';

class FirstFloorPage extends StatefulWidget {
  const FirstFloorPage({super.key});

  @override
  State<FirstFloorPage> createState() => _FirstFloorPageState();
}

class _FirstFloorPageState extends State<FirstFloorPage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    FirstFloorQ1(),
  ];
}

//Getting through a page will update the index which will update the state of the main page
class FirstFloorQ1 extends StatelessWidget {
  const FirstFloorQ1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1st Floor'),
      ),
      body: const Center(
        child: Text('First Floor Content'),
      ),
    );
  }
}