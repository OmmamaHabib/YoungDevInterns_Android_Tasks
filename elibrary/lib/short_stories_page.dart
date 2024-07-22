import 'package:flutter/material.dart';

class ShortStoriesPage extends StatelessWidget {
  const ShortStoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Short Stories'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildStoryTile(context, 'The Secret Garden', 'assets/stories/secret_garden.jpg'),
          _buildStoryTile(context, 'The Little Prince', 'assets/stories/little_prince.jpg'),
          _buildStoryTile(context, 'Alice in Wonderland', 'assets/stories/alice_wonderland.jpg'),
          _buildStoryTile(context, 'The Ugly Duckling', 'assets/stories/ugly_duckling.jpg'),
          // Add more short stories as needed
        ],
      ),
    );
  }

  Widget _buildStoryTile(BuildContext context, String title, String imagePath) {
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
