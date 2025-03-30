import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  bool _isFirstFloor = true;

  void _toggleFloor() {
    setState(() {
      _isFirstFloor = !_isFirstFloor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: Column(
        children: [
          Expanded(
            child: InteractiveViewer(
              minScale: 0.5,
              maxScale: 4.0,
              child: Image.asset(
                _isFirstFloor ? 'images/pftmap1.webp' : 'images/pftmap2.webp',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _toggleFloor,
              child: const Text('Switch Floors'),
            ),
          ),
        ],
      ),
    );
  }
} 