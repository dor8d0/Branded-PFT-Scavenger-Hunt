import 'package:flutter/material.dart';

class SecondFloorPage extends StatelessWidget {
  const SecondFloorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2nd Floor'),
      ),
      body: const Center(
        child: Text('Second Floor Content'),
      ),
    );
  }
} 