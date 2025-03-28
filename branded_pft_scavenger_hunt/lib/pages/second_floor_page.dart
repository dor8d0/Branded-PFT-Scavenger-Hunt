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
    SecondFloorQ3(),
    SecondFloorQ4(),
    SecondFloorQ5(),
    SecondFloorComplete(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
    );
  }
}

class SecondFloorQ1 extends StatefulWidget {
  const SecondFloorQ1({super.key});

  @override
  State<SecondFloorQ1> createState() => _SecondFloorQ1State();
}

class _SecondFloorQ1State extends State<SecondFloorQ1> {
  int? _selectedAnswer;

  void _handleAnswerSelection(int? value) {
    setState(() {
      _selectedAnswer = value;
    });

    // If the correct answer (4) is selected, navigate to the next page
    if (_selectedAnswer == 4) {
      // Add a small delay to show the selection before navigating
      Future.delayed(const Duration(milliseconds: 500), () {
        final secondFloorPage = context.findAncestorWidgetOfExactType<SecondFloorPage>();
        secondFloorPage?.onIndexChanged(1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2nd Floor'),
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
              'What are rooms 2326 and 2324?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            RadioListTile<int>(
              title: const Text('Bathrooms'),
              value: 1,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Study Rooms'),
              value: 2,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Auditoriums'),
              value: 3,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Computer Labs'),
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

class SecondFloorQ2 extends StatefulWidget {
  const SecondFloorQ2({super.key});

  @override
  State<SecondFloorQ2> createState() => _SecondFloorQ2State();
}

class _SecondFloorQ2State extends State<SecondFloorQ2> {
  // List of digits 0-9 for each dropdown
  final List<String> _digits = List.generate(10, (index) => index.toString());
  
  // Selected values for each digit
  String _firstDigit = '0';
  String _secondDigit = '0';
  String _thirdDigit = '0';
  String _fourthDigit = '0';

  void _handleSubmit() {
    // Check if the combination matches "2228"
    if (_firstDigit == '2' && 
        _secondDigit == '2' && 
        _thirdDigit == '2' && 
        _fourthDigit == '8') {
      Future.delayed(const Duration(milliseconds: 500), () {
        final secondFloorPage = context.findAncestorWidgetOfExactType<SecondFloorPage>();
        secondFloorPage?.onIndexChanged(2);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2nd Floor'),
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
              'What is the room number of the William A Brookshire Student Services?',
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

class SecondFloorQ3 extends StatefulWidget {
  const SecondFloorQ3({super.key});

  @override
  State<SecondFloorQ3> createState() => _SecondFloorQ3State();
}

class _SecondFloorQ3State extends State<SecondFloorQ3> {
  // List of digits 0-9 for each dropdown
  final List<String> _digits = List.generate(10, (index) => index.toString());
  
  // Selected values for each digit
  String _firstDigit = '0';
  String _secondDigit = '0';
  String _thirdDigit = '0';
  String _fourthDigit = '0';

  void _handleSubmit() {
    // Check if the combination matches "2214"
    if (_firstDigit == '2' && 
        _secondDigit == '2' && 
        _thirdDigit == '1' && 
        _fourthDigit == '4') {
      Future.delayed(const Duration(milliseconds: 500), () {
        final secondFloorPage = context.findAncestorWidgetOfExactType<SecondFloorPage>();
        secondFloorPage?.onIndexChanged(3);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2nd Floor'),
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
              'What is the room number of the Dean\'s Suite?',
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

class SecondFloorQ4 extends StatefulWidget {
  const SecondFloorQ4({super.key});

  @override
  State<SecondFloorQ4> createState() => _SecondFloorQ4State();
}

class _SecondFloorQ4State extends State<SecondFloorQ4> {
  final TextEditingController _answerController = TextEditingController();
  bool _isCorrect = false;

  void _handleSubmit() {
    setState(() {
      _isCorrect = _answerController.text.trim().toLowerCase() == 'clarence eidt';
    });

    if (_isCorrect) {
      Future.delayed(const Duration(milliseconds: 500), () {
        final secondFloorPage = context.findAncestorWidgetOfExactType<SecondFloorPage>();
        secondFloorPage?.onIndexChanged(4);
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
        title: const Text('2nd Floor'),
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
              'Go to room 2134. Who made the generous contribution?',
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

class SecondFloorQ5 extends StatefulWidget {
  const SecondFloorQ5({super.key});

  @override
  State<SecondFloorQ5> createState() => _SecondFloorQ5State();
}

class _SecondFloorQ5State extends State<SecondFloorQ5> {
  int? _selectedAnswer;

  void _handleAnswerSelection(int? value) {
    setState(() {
      _selectedAnswer = value;
    });

    // If the correct answer (1) is selected, show alert and navigate
    if (_selectedAnswer == 1) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Congratulations!'),
            content: const Text('You have completed the second floor!'),
            actions: [
              TextButton(
                onPressed: () async {
                  Navigator.of(context).pop(); // Close the dialog
                  // Add a small delay to ensure the dialog is closed
                  await Future.delayed(const Duration(milliseconds: 100));
                  if (mounted) { // Check if widget is still mounted
                    final secondFloorPage = context.findAncestorWidgetOfExactType<SecondFloorPage>();
                    secondFloorPage?.onIndexChanged(5); // Navigate to complete page
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
        title: const Text('2nd Floor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Question 5:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Go to room 2272. Who is the room dedicated to?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            RadioListTile<int>(
              title: const Text('Mark and Carolyn Guidry'),
              value: 1,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Huey Long'),
              value: 2,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Louis Armstrong'),
              value: 3,
              groupValue: _selectedAnswer,
              onChanged: _handleAnswerSelection,
            ),
            RadioListTile<int>(
              title: const Text('Bel Edwards'),
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

class SecondFloorComplete extends StatelessWidget {
  const SecondFloorComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2nd Floor'),
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