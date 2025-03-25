import 'package:flutter/material.dart';

class SecondFloorPage extends StatelessWidget {
  final int currentIndex;
  final Function(int) onIndexChanged;

  const SecondFloorPage({
    super.key,
    required this.currentIndex,
    required this.onIndexChanged,
  });

  static const List<Widget> _pages = [
    SecondFloorQ1(),
    SecondFloorQ2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
    );
  }
}

class SecondFloorQ1 extends StatelessWidget {
  const SecondFloorQ1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2nd Floor'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Second Floor Stuff lol'),
            ElevatedButton(
              onPressed: () {
                final secondFloorPage = context.findAncestorWidgetOfExactType<SecondFloorPage>();
                secondFloorPage?.onIndexChanged(1);
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondFloorQ2 extends StatelessWidget {
  const SecondFloorQ2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2nd Floor page 2'),
      ),
      body: const Center(
        child: Text('Second Floor Stuff the sequel lol'),
      ),
    );
  }
} 