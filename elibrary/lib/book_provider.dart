import 'package:flutter/material.dart';

class Book {
  final String name;
  final String? path;

  Book(this.name, this.path);
}

class BookProvider with ChangeNotifier {
  final List<Book> _books = [];

  List<Book> get books => _books;

  void addBook(String name, String? path) {
    _books.add(Book(name, path));
    notifyListeners();
  }
}
