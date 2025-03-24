import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: StartPage(),));
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          children: [Text("this is the start page")],
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(onPressed: (){}, child: Text("floor 1"))
      ],
    );
  }
}

