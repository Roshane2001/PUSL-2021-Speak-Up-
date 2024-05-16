import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pusl__2021/gamelevel.dart';

import 'package:pusl__2021/setting.dart';
import 'package:pusl__2021/splash3.dart';

import 'package:pusl__2021/stories.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Aligns children to the left
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 40, left: 10), // Added padding
              child: Row(
                // Using Row instead of IconButton to align to the left
                children: [
                  IconButton(
                    icon: const Icon(Icons.settings, size: 45),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Setting()),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Aligns children to the center horizontally
                children: [
                  SizedBox(
                    width: 318,
                    height: 289,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Stories()),
                        );
                        // Add functionality for button 1
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'stories',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20), // Add spacing between buttons
                  SizedBox(
                    width: 318,
                    height: 289,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => gamelevel()),
                        );
                        // Add functionality for button 2
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Games',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
