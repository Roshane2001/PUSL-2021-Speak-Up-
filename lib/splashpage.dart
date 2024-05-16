import 'package:flutter/material.dart';
import 'package:pusl__2021/home.dart';



class splashpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 491,
                    height: 124,
                    decoration: BoxDecoration(
                      color: Color(0xFF8CB4E9),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Text(
                    'Speak Up',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                MaterialPageRoute(builder: (context) => const home()));
                  // Navigate to home page here
                },
                child: Container(
                  width: 168,
                  height: 166,
                  decoration: BoxDecoration(
                    color: Color(0xFF0C0B55),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      'GO',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 80,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
