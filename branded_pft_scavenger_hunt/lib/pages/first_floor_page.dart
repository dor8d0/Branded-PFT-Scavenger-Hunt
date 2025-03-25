import 'package:flutter/material.dart';

class FirstFloorPage extends StatelessWidget {
  final int currentIndex;
  final Function(int) onIndexChanged;

  const FirstFloorPage({
    super.key,
    required this.currentIndex,
    required this.onIndexChanged,
  });

  static const List<Widget> _pages = [
    FirstFloorQ1(),
    FirstFloorQ2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
    );
  }
}

class FirstFloorQ1 extends StatelessWidget {
  const FirstFloorQ1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1st Floor'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('First Floor Stuff lol'),
            ElevatedButton(
              onPressed: () {
                // Find the parent FirstFloorPage and call its onIndexChanged
                final firstFloorPage = context.findAncestorWidgetOfExactType<FirstFloorPage>();
                firstFloorPage?.onIndexChanged(1);
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstFloorQ2 extends StatelessWidget {
  const FirstFloorQ2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1st Floor page 2'),
      ),
      body: const Center(
        child: Text('First Floor Stuff the sequel lol'),
      ),
    );
  }
}
