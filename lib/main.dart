import 'package:flutter/material.dart';

void main() {
  runApp(screen());
}

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  int count = 0;
  int maxValue = 10;
  int minValue = 0;
  String statusText = "";

  int get available => maxValue - count; // دا الرقم الباقي عشان محدش يتوه 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.info, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.settings, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            count = 0;
                            statusText = "";
                          });
                        },
                        icon: Icon(Icons.refresh, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    '$count',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 200,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (count > minValue) {
                            setState(() {
                              count--;
                              statusText = "";
                              if (count == minValue) {
                                statusText = "Reached Minimum";
                              }
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: count > minValue ? Colors.white70 : Colors.grey,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.remove,
                              color: count > minValue ? Colors.white : Colors.grey,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            '$available', 
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'AVAILABLE',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          if (count < maxValue) {
                            setState(() {
                              count++;
                              statusText = "";
                              if (count == maxValue) {
                                statusText = "Reached Maximum";
                              }
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: count < maxValue ? Colors.white70 : Colors.grey,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add,
                              color: count < maxValue ? Colors.white : Colors.grey,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    statusText,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
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
