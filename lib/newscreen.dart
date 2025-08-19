import 'package:flutter/material.dart';
import 'package:iti/second.dart';

class FirstNewscreen extends StatelessWidget {
  const FirstNewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(child: Text("click")),
          ),
        ),
      ),
    );
  }
}
