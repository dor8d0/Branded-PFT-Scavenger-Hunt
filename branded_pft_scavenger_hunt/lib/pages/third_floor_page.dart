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
    ThirdFloorQ3(),
    ThirdFloorComplete(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
    );
  }
}

class ThirdFloorQ1 extends StatefulWidget {
  const ThirdFloorQ1({super.key});

  @override
  State<ThirdFloorQ1> createState() => _ThirdFloorQ1State();
}

class _ThirdFloorQ1State extends State<ThirdFloorQ1> {
  int? _selectedAnswer;

  void _handleAnswerSelection(int? value) {
    setState(() {
      _selectedAnswer = value;
    });

    // If the correct answer (1) is selected, navigate to the next page
    if (_selectedAnswer == 1) {
      // Add a small delay to show the selection before navigating
      Future.delayed(const Duration(milliseconds: 500), () {
        final thirdFloorPage = context.findAncestorWidgetOfExactType<ThirdFloorPage>();
        thirdFloorPage?.onIndexChanged(1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3rd Floor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Question 1:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Look for a trophy wall near room 3207. What is the color of the book "Theory, Measurement and Interpretation of Well Logs"?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            RadioListTile<int>(
              title: const Text('Red'),
              value: 1,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Blue'),
              value: 2,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Black'),
              value: 3,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Purple'),
              value: 4,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdFloorQ2 extends StatefulWidget {
  const ThirdFloorQ2({super.key});

  @override
  State<ThirdFloorQ2> createState() => _ThirdFloorQ2State();
}

class _ThirdFloorQ2State extends State<ThirdFloorQ2> {
  int? _selectedAnswer;

  void _handleAnswerSelection(int? value) {
    setState(() {
      _selectedAnswer = value;
    });

    // If the correct answer (2) is selected, navigate to the next page
    if (_selectedAnswer == 2) {
      // Add a small delay to show the selection before navigating
      Future.delayed(const Duration(milliseconds: 500), () {
        final thirdFloorPage = context.findAncestorWidgetOfExactType<ThirdFloorPage>();
        thirdFloorPage?.onIndexChanged(2);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3rd Floor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Question 2:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Look for a plaque wall near room 3307. How many pictures of people on stairs are there?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            RadioListTile<int>(
              title: const Text('4'),
              value: 1,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('5'),
              value: 2,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('6'),
              value: 3,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('7'),
              value: 4,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdFloorQ3 extends StatefulWidget {
  const ThirdFloorQ3({super.key});

  @override
  State<ThirdFloorQ3> createState() => _ThirdFloorQ3State();
}

class _ThirdFloorQ3State extends State<ThirdFloorQ3> {
  int? _selectedAnswer;

  void _handleAnswerSelection(int? value) {
    setState(() {
      _selectedAnswer = value;
    });

    // If the correct answer (4) is selected, show alert and navigate
    if (_selectedAnswer == 4) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Congratulations!'),
            content: const Text('Third Floor Completed!'),
            actions: [
              TextButton(
                onPressed: () async {
                  Navigator.of(context).pop(); // Close the dialog
                  // Add a small delay to ensure the dialog is closed
                  await Future.delayed(const Duration(milliseconds: 100));
                  if (mounted) { // Check if widget is still mounted
                    final thirdFloorPage = context.findAncestorWidgetOfExactType<ThirdFloorPage>();
                    thirdFloorPage?.onIndexChanged(3); // Navigate to complete page
                  }
                },
                child: const Text('Continue'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3rd Floor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Question 3:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Look for a plaque wall near room 3319. What are the colors of the two hard hats there?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            RadioListTile<int>(
              title: const Text('Red and Black'),
              value: 1,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Black and Black'),
              value: 2,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Blue and Blue'),
              value: 3,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Blue and White'),
              value: 4,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdFloorComplete extends StatelessWidget {
  const ThirdFloorComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3rd Floor'),
      ),
      body: const Center(
        child: Text(
          'Floor Complete!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color(0xFF461D7C), // LSU Purple
          ),
        ),
      ),
    );
  }
} 