import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  String? _selectedCategory;
  PlatformFile? _selectedFile;

  final List<String> _categories = [
    'Books',
    'Newspapers',
    'Magazines',
    'Short Stories',
  ];

  void _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _selectedFile = result.files.first;
      });
    }
  }

  void _uploadContent() {
    if (_selectedCategory != null && _selectedFile != null) {
      // Implement your upload logic here
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Uploading ${_selectedFile!.name} to $_selectedCategory')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a category and a file')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Content'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Select Category',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: _selectedCategory,
              hint: const Text('Select a category'),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCategory = newValue;
                });
              },
              items: _categories.map<DropdownMenuItem<String>>((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickFile,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.deepPurple, // Button text color
              ),
              child: const Text('Pick File'),
            ),
            if (_selectedFile != null) ...[
              const SizedBox(height: 10),
              Text('Selected file: ${_selectedFile!.name}'),
              Text('Size: ${_selectedFile!.size} bytes'),
            ],
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _uploadContent,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.deepPurple, // Button text color
              ),
              child: const Text('Upload'),
            ),
          ],
        ),
      ),
    );
  }
}
