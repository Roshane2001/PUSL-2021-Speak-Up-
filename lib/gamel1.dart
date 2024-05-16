import 'dart:math';
import 'package:flutter/material.dart';

class gamel1 extends StatelessWidget {
  const gamel1({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Matching Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorMatchingHomePage(),
    );
  }
}

class ColorMatchingHomePage extends StatefulWidget {
  @override
  _ColorMatchingHomePageState createState() => _ColorMatchingHomePageState();
}

class _ColorMatchingHomePageState extends State<ColorMatchingHomePage> {
  List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.black,
    Colors.yellow,
    Colors.pink,
  ];
  late Color _targetColor;
  late List<Color> _options;
  int _currentIndex = 0;
  bool _showCorrectDialog = false;

  @override
  void initState() {
    super.initState();
    _targetColor = _colors[_currentIndex];
    _options = _generateOptions();
  }

  void _generateGame() {
    setState(() {
      _targetColor = _colors[_currentIndex];
      _options = _generateOptions();
    });
  }

  List<Color> _generateOptions() {
    List<Color> options = [_targetColor];
    Random random = Random();
    while (options.length < 4) {
      Color newColor = _colors[random.nextInt(_colors.length)];
      if (!options.contains(newColor)) {
        options.add(newColor);
      }
    }
    options.shuffle();
    return options;
  }

  void _checkAnswer(Color selectedColor) {
    setState(() {
      if (selectedColor == _targetColor) {
        _showCorrectDialog = true;
      } else {
        _showCorrectDialog = false;
      }
    });
  }

  void _nextColor() {
    setState(() {
      if (_currentIndex < _colors.length - 1) {
        _currentIndex++;
        _generateGame();
      } else {
        // End of the game
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Congratulations!'),
            content: Text('You have completed the color matching game.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('level 1',textAlign: TextAlign.center, style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),), ),
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Match this color:',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: _targetColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: _options.map((color) {
                    return GestureDetector(
                      onTap: () => _checkAnswer(color),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                if (_showCorrectDialog)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _nextColor();
                        _showCorrectDialog = false;
                      });
                    },
                    child: Text('Next'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
