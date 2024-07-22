import 'package:flutter/material.dart';
import 'our_process_page.dart'; // Import the Our Process page
import 'technologies_page.dart'; // Import the Technologies page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YoungDev App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 40), // Add your logo image
            const SizedBox(width: 10),
            const Text('YOUNGDEV'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(15, 46, 71, 1),
              ),
              child: Center(
                child: Text(
                  'YOUNGDEV',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Our Process'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OurProcessPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Technologies'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TechnologiesPage()),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text('contact@youngdev.mg'),
              onTap: () {
                // Handle mail tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.call),
              title: const Text('+261 34 86 663 50'),
              onTap: () {
                // Handle call tap
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Expert in Chatbot and Cross Platform App Development 🚀',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Chatbot - Mobile - Web - Desktop - IoT',
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Our startup based in Madagascar is dedicated to crafting seamless digital experiences that propel businesses forward. Get ready to elevate your brand\'s interaction game!',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20), // Add some space before the image
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0), // Make the edges round
                child: Image.asset(
                  'assets/picture.png', // Make sure to replace 'your_image.png' with the actual image file name
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
