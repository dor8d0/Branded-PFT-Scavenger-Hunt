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
    FirstFloorQ3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
    );
  }
}

class FirstFloorQ1 extends StatefulWidget {
  const FirstFloorQ1({super.key});

  @override
  State<FirstFloorQ1> createState() => _FirstFloorQ1State();
}

class _FirstFloorQ1State extends State<FirstFloorQ1> {
  int? _selectedAnswer;

  void _handleAnswerSelection(int? value) {
    setState(() {
      _selectedAnswer = value;
    });

    // If the correct answer (2) is selected, navigate to the next page
    if (_selectedAnswer == 2) {
      // Add a small delay to show the selection before navigating
      Future.delayed(const Duration(milliseconds: 500), () {
        final firstFloorPage = context.findAncestorWidgetOfExactType<FirstFloorPage>();
        firstFloorPage?.onIndexChanged(1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1st Floor'),
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
              'What is the capital of France?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            RadioListTile<int>(
              title: const Text('London'),
              value: 1,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Paris'),
              value: 2,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Berlin'),
              value: 3,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Madrid'),
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

class FirstFloorQ2 extends StatefulWidget {
  const FirstFloorQ2({super.key});

  @override
  State<FirstFloorQ2> createState() => _FirstFloorQ2State();
}

class _FirstFloorQ2State extends State<FirstFloorQ2> {
  final TextEditingController _answerController = TextEditingController();
  bool _isCorrect = false;

  void _checkAnswer(String value) {
    if (value.toLowerCase() == 'sandwiches') {
      setState(() {
        _isCorrect = true;
      });
      // Add a small delay to show the correct state before navigating
      Future.delayed(const Duration(milliseconds: 500), () {
        final firstFloorPage = context.findAncestorWidgetOfExactType<FirstFloorPage>();
        firstFloorPage?.onIndexChanged(2);
      });
    }
  }

  @override
  void dispose() {
    _answerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1st Floor'),
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
              'What food item is typically made with two slices of bread and various fillings?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _answerController,
              decoration: InputDecoration(
                hintText: 'Enter your answer',
                border: const OutlineInputBorder(),
                suffixIcon: _isCorrect
                    ? const Icon(Icons.check_circle, color: Colors.green)
                    : null,
              ),
              onChanged: _checkAnswer,
              onSubmitted: _checkAnswer,
            ),
            if (_isCorrect)
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Correct! Moving to next question...',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class FirstFloorQ3 extends StatelessWidget {
  const FirstFloorQ3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1st Floor'),
      ),
      body: const Center(
        child: Text('First Floor Question 3'),
      ),
    );
  }
}
