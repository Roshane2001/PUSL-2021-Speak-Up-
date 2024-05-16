import 'package:flutter/material.dart';
import 'package:pusl__2021/gamel1.dart';
import 'package:pusl__2021/gamel2.dart';
import 'package:pusl__2021/gamel3.dart';



class gamelevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RotatedBox(
                  quarterTurns: 3,
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => gamel1()),
                        );
                        // Implement functionality for Year 1 button
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFF7E9C6B)), // background color
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white), // Text color
                        minimumSize: MaterialStateProperty.all<Size>(
                            Size(15, 370)), // Button size
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero), // Remove default padding
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Button border radius
                          ),
                        ),
                      ),
                      child: Transform.rotate(
                        angle: -270 * 3.141592653589793 / 180,
                        child: Text(
                          'Level 1',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                RotatedBox(
                  quarterTurns: 3,
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => gamel2()),
                        );
                        // Implement functionality for Year 2 button
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFF7E9C6B)), // background color
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white), // Text color
                        minimumSize: MaterialStateProperty.all<Size>(
                            Size(15, 370)), // Button size
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero), // Remove default padding
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Button border radius
                          ),
                        ),
                      ),
                      child: Transform.rotate(
                        angle: -270 * 3.141592653589793 / 180,
                        child: Text(
                          'Level 2',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );

  }
}
