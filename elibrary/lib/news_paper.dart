import 'package:flutter/material.dart';

class NewspapersPage extends StatelessWidget {
  const NewspapersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Newspapers'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildNewspaperTile(context, 'The Daily News', 'assets/newspapers/daily_news.jpg'),
          _buildNewspaperTile(context, 'The Morning Times', 'assets/newspapers/morning_times.jpg'),
          _buildNewspaperTile(context, 'Global Daily', 'assets/newspapers/global_daily.jpg'),
          _buildNewspaperTile(context, 'Local Bulletin', 'assets/newspapers/local_bulletin.jpg'),
          // Add more newspapers as needed
        ],
      ),
    );
  }

  Widget _buildNewspaperTile(BuildContext context, String title, String imagePath) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Image.asset(imagePath, width: 60, height: 60, fit: BoxFit.cover),
        title: Text(title),
        onTap: () {
          // Implement navigation or functionality
          // For example, navigate to a detailed view or download
        },
      ),
    );
  }
}
