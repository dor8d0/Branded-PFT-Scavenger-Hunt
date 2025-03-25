import 'package:flutter/material.dart';

class ThirdFloorPage extends StatelessWidget {
  final int currentIndex;
  final Function(int) onIndexChanged;

  const ThirdFloorPage({
    super.key,
    required this.currentIndex,
    required this.onIndexChanged,
  });

  static const List<Widget> _pages = [
    ThirdFloorQ1(),
    ThirdFloorQ2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
    );
  }
}

class ThirdFloorQ1 extends StatelessWidget {
  const ThirdFloorQ1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3rd Floor'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Third Floor Stuff lol'),
            ElevatedButton(
              onPressed: () {
                final thirdFloorPage = context.findAncestorWidgetOfExactType<ThirdFloorPage>();
                thirdFloorPage?.onIndexChanged(1);
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdFloorQ2 extends StatelessWidget {
  const ThirdFloorQ2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3rd Floor page 2'),
      ),
      body: const Center(
        child: Text('Third Floor Stuff the sequel lol'),
      ),
    );
  }
} 