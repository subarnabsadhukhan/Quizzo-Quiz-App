import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({super.key});
  @override
  Widget build(context) {
    return Container(
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
      child: const StartScreen(),
    );
  }
}
