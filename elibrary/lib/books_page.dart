import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
      ),
      body: ListView(
        children:  <Widget>[
          ListTile(
            title: const Text('Fiction'),
            onTap: () {
              // Navigate to Fiction books
            },
          ),
          ListTile(
            title: const Text('Non-Fiction'),
            onTap: () {
              // Navigate to Non-Fiction books
            },
          ),
          ListTile(
            title: const Text('Science Fiction'),
            onTap: () {
              // Navigate to Science Fiction books
            },
          ),
          ListTile(
            title: const Text('Biography'),
            onTap: () {
              // Navigate to Biography books
            },
          ),
          // Add more genres as needed
        ],
      ),
    );
  }
}
