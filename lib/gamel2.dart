import 'package:flutter/material.dart';
import 'dart:math';

class gamel2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Level 3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorNamingScreen(),
    );
  }
}

class ColorNamingScreen extends StatefulWidget {
  @override
  _ColorNamingScreenState createState() => _ColorNamingScreenState();
}

class _ColorNamingScreenState extends State<ColorNamingScreen> {
  List<Color> colors = [
    Colors.red,
    Colors.black,
    Colors.pink,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  List<String> colorNames = [
    'Red',
    'Black',
    'Pink',
    'Green',
    'Blue',
    'Yellow',
  ];

  int currentColorIndex = 0;
  TextEditingController textEditingController = TextEditingController();
  bool isCorrect = false;

  void checkAnswer() {
    String typedColor = textEditingController.text.toLowerCase();
    String actualColor = colorNames[currentColorIndex].toLowerCase();
    setState(() {
      isCorrect = typedColor == actualColor;
    });
  }

  void nextColor() {
    textEditingController.clear();
    setState(() {
      currentColorIndex = Random().nextInt(colors.length);
      isCorrect = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Naming Game'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: colors[currentColorIndex],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Type color name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: checkAnswer,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text('Okay', style: TextStyle(fontSize: 18)),
                ),
              ),
              SizedBox(height: 20),
              isCorrect
                  ? Text(
                      'Correct!',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    )
                  : SizedBox(),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: nextColor,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text('Next Color', style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

