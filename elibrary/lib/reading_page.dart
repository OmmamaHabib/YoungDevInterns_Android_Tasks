import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class ReadingPage extends StatelessWidget {
  final String filePath;

  const ReadingPage({super.key, required this.filePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read Book'),
      ),
      body: FutureBuilder<File>(
        future: _loadFile(filePath),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return PDFView(
                filePath: snapshot.data!.path,
              );
            } else {
              return const Text('Error loading file');
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<File> _loadFile(String fileName) async {
    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}/$fileName';
    return File(path);
  }
}
