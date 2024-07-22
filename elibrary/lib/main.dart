import 'package:flutter/material.dart';
import 'package:elibrary/home_page.dart';
import 'package:elibrary/upload_page.dart';
import 'package:elibrary/reading_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eLibrary',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // Change to deep purple for your color scheme
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple, // Consistent with primary color
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black54),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.deepPurple,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: const HomePage(),
      routes: {
        '/upload': (context) => const UploadPage(),
        '/reading': (context) => const ReadingPage(filePath: 'example.pdf'), // Adjust as needed
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const HomePage());
      },
    );
  }
}
