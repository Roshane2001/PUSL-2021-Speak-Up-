import 'package:flutter/material.dart';
import 'package:pusl__2021/home.dart';
import 'package:pusl__2021/video1.dart';
import 'package:pusl__2021/video2.dart';
import 'package:pusl__2021/video3.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.home), // Home button icon
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => home()),
              );
              // Implement functionality for home button
            },
          ),
        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RotatedBox(
                quarterTurns: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => video1()),
                        );
                        // Implement functionality for Year 1 button
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFB57C5C), // background color
                        foregroundColor: Colors.white, // Text color
                        minimumSize: Size(370, 60), // Button size
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // Button border radius
                        ),
                      ),
                      child: Text(
                        'Story 1',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => video2()),
                        );
                        // Implement functionality for Year 2 button
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFB57C5C), // background color
                        foregroundColor: Colors.white, // Text color
                        minimumSize: Size(370, 60), // Button size
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // Button border radius
                        ),
                      ),
                      child: Text(
                        'Story 2',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => video3()),
                        );
                        // Implement functionality for Year 3 button
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFB57C5C), // background color
                        foregroundColor: Colors.white, // Text color
                        minimumSize: Size(370, 60), // Button size
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // Button border radius
                        ),
                      ),
                      child: Text(
                        'Story 3',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Stories());
}
