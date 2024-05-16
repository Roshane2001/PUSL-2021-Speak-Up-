import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: null, // Removing the app bar
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 600), // Limiting width
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Font Color widget
                    Container(
                      width: 200,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.format_color_fill),
                        onPressed: () {
                          // Add your color fill functionality here
                          print('Color fill button pressed');
                        },
                      ),
                    ),
                    // Font Size widget
                    Container(
                      width: 200,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.text_fields),
                        onPressed: () {
                          // Add your font size functionality here
                          print('Font size button pressed');
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Adding space
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Search widget
                    Container(
                      width: 200,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          // Add your search functionality here
                          print('Search button pressed');
                        },
                      ),
                    ),
                    // Text Format widget
                    Container(
                      width: 200,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.text_format_outlined),
                        onPressed: () {
                          // Add your text formatting functionality here
                          print('Text format button pressed');
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



