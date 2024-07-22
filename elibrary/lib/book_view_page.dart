// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:elibrary/book_provider.dart';

class BookViewPage extends StatelessWidget {
  final Book book;

  const BookViewPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.name),
      ),
      body: book.path != null
          ? PDFView(
              filePath: book.path!,
            )
          : const Center(child: Text('No file selected')),
    );
  }
}
