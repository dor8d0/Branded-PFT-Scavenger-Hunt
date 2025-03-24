import 'package:flutter/material.dart';

class ThirdFloorPage extends StatelessWidget {
  const ThirdFloorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3rd Floor'),
      ),
      body: const Center(
        child: Text('Third Floor Content'),
      ),
    );
  }
} 