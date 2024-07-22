// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotebookPage extends StatefulWidget {
  const NotebookPage({super.key});

  @override
  _NotebookPageState createState() => _NotebookPageState();
}

class _NotebookPageState extends State<NotebookPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadNote();
  }

  _loadNote() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? note = prefs.getString('note');
    if (note != null) {
      _controller.text = note;
    }
  }

  _saveNote() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('note', _controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notebook'),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveNote,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller,
          maxLines: null,
          decoration: const InputDecoration(
            hintText: 'Write your notes here...',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
