import 'package:flutter/material.dart';
import 'package:elibrary/books_page.dart';
import 'package:elibrary/notes_page.dart';
import 'package:elibrary/news_paper.dart';
import 'package:elibrary/short_stories_page.dart';
import 'package:elibrary/upload_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('eLibrary'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'), // Update path to relative
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Welcome to eLibrary!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Make text white for visibility
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  children: <Widget>[
                    _buildHomeButton(
                      context,
                      'Books',
                      Colors.orange,
                      Icons.book,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BooksPage()),
                        );
                      },
                    ),
                    _buildHomeButton(
                      context,
                      'Notebook',
                      Colors.purple,
                      Icons.note,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const NotesPage()),
                        );
                      },
                    ),
                    _buildHomeButton(
                      context,
                      'Magazines',
                      Colors.red,
                      Icons.library_books,
                      () {
                        // Implement navigation to Magazines page
                      },
                    ),
                    _buildHomeButton(
                      context,
                      'Newspapers',
                      Colors.green,
                      Icons.newspaper,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const NewspapersPage()),
                        );
                      },
                    ),
                    _buildHomeButton(
                      context,
                      'Short Stories',
                      Colors.blue,
                      Icons.bookmark,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ShortStoriesPage()),
                        );
                      },
                    ),
                    _buildHomeButton(
                      context,
                      'Upload Content',
                      Colors.teal,
                      Icons.upload_file,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const UploadPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHomeButton(BuildContext context, String title, Color color, IconData icon, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color.withOpacity(0.8), // Make buttons semi-transparent for a better look
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
