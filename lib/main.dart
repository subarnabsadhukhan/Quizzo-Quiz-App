import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 71, 0, 145),
                Color.fromARGB(255, 98, 0, 163),
              ],
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/quiz-logo.png'),
                const Text('Learn Flutter the FUN Way!'),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
