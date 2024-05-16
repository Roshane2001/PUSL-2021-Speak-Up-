import 'package:flutter/material.dart';



class splash3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Congratulations',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Congratulations!',
          style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: Center(
          child: Container(
            color: Colors.white, // Optional: set background color
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Expanded(
                    child: Image.network(
                      'https://media.tenor.com/kKmvIr30vQYAAAAi/stars-changing-colors.gif',
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Text('Error loading GIF');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}