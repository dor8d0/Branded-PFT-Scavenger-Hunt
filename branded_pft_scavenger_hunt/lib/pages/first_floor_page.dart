import 'package:flutter/material.dart';

class FirstFloorPage extends StatelessWidget {
  const FirstFloorPage({super.key});

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