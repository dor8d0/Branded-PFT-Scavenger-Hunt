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
    FirstFloorQ4(),
    FirstFloorQ5(),
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

  void _handleSubmit() {
    setState(() {
      _isCorrect = _answerController.text.trim().toLowerCase() == 'panera bread';
    });

    if (_isCorrect) {
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
              'What restaurant is located in the PFT?',
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
                errorText: _isCorrect ? null : 'Try again!',
              ),
              onSubmitted: (_) => _handleSubmit(),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _handleSubmit,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstFloorQ3 extends StatefulWidget {
  const FirstFloorQ3({super.key});

  @override
  State<FirstFloorQ3> createState() => _FirstFloorQ3State();
}

class _FirstFloorQ3State extends State<FirstFloorQ3> {
  int? _selectedAnswer;

  void _handleAnswerSelection(int? value) {
    setState(() {
      _selectedAnswer = value;
    });

    // If the correct answer (3) is selected, navigate to the next page
    if (_selectedAnswer == 3) {
      // Add a small delay to show the selection before navigating
      Future.delayed(const Duration(milliseconds: 500), () {
        final firstFloorPage = context.findAncestorWidgetOfExactType<FirstFloorPage>();
        firstFloorPage?.onIndexChanged(3);
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
              'Question 3:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'What color are the stairs in the capstone gallery?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            RadioListTile<int>(
              title: const Text(
                'Red',
                style: TextStyle(color: Colors.red),
              ),
              value: 1,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text(
                'Gray',
                style: TextStyle(color: Colors.grey),
              ),
              value: 2,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text(
                'Light Brown',
                style: TextStyle(color: Color(0xFFD2B48C)), // Light Brown color
              ),
              value: 3,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text(
                'Purple',
                style: TextStyle(color: Colors.purple),
              ),
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

class FirstFloorQ4 extends StatefulWidget {
  const FirstFloorQ4({super.key});

  @override
  State<FirstFloorQ4> createState() => _FirstFloorQ4State();
}

class _FirstFloorQ4State extends State<FirstFloorQ4> {
  // List of digits 0-9 for each dropdown
  final List<String> _digits = List.generate(10, (index) => index.toString());
  
  // Selected values for each digit
  String _firstDigit = '0';
  String _secondDigit = '0';
  String _thirdDigit = '0';
  String _fourthDigit = '0';

  void _handleSubmit() {
    // Check if the combination matches "1100"
    if (_firstDigit == '1' && 
        _secondDigit == '1' && 
        _thirdDigit == '0' && 
        _fourthDigit == '0') {
      Future.delayed(const Duration(milliseconds: 500), () {
        final firstFloorPage = context.findAncestorWidgetOfExactType<FirstFloorPage>();
        firstFloorPage?.onIndexChanged(4);
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
              'Question 4:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'What is the room number of the Roy O Martin Auditorium?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // First digit dropdown
                Container(
                  width: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: DropdownButtonFormField<String>(
                    value: _firstDigit,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    items: _digits.map((String digit) {
                      return DropdownMenuItem<String>(
                        value: digit,
                        child: Text(digit),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _firstDigit = newValue;
                        });
                      }
                    },
                  ),
                ),
                // Second digit dropdown
                Container(
                  width: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: DropdownButtonFormField<String>(
                    value: _secondDigit,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    items: _digits.map((String digit) {
                      return DropdownMenuItem<String>(
                        value: digit,
                        child: Text(digit),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _secondDigit = newValue;
                        });
                      }
                    },
                  ),
                ),
                // Third digit dropdown
                Container(
                  width: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: DropdownButtonFormField<String>(
                    value: _thirdDigit,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    items: _digits.map((String digit) {
                      return DropdownMenuItem<String>(
                        value: digit,
                        child: Text(digit),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _thirdDigit = newValue;
                        });
                      }
                    },
                  ),
                ),
                // Fourth digit dropdown
                Container(
                  width: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: DropdownButtonFormField<String>(
                    value: _fourthDigit,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    items: _digits.map((String digit) {
                      return DropdownMenuItem<String>(
                        value: digit,
                        child: Text(digit),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _fourthDigit = newValue;
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: _handleSubmit,
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstFloorQ5 extends StatelessWidget {
  const FirstFloorQ5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1st Floor'),
      ),
      body: const Center(
        child: Text('First Floor Question 5'),
      ),
    );
  }
}
