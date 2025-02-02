import 'package:flutter/material.dart';
import 'game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess the Word Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GuessTheWordGame(),
    );
  }
}
