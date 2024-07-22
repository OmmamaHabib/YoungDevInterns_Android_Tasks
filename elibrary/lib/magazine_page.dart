import 'package:flutter/material.dart';

class MagazinesPage extends StatelessWidget {
  const MagazinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magazines'),
      ),
      body: Center(
        child: const Text('Magazines content goes here'),
      ),
    );
  }
}
