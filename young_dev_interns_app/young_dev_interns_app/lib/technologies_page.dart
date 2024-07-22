import 'package:flutter/material.dart';

class TechnologiesPage extends StatelessWidget {
  const TechnologiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Technologies'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFF373754), // #373754
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/pic2.png', // Replace with your image path
                      fit: BoxFit.contain, // Adjust fit as necessary
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'TECHNOLOGIES',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(255, 155, 62, 1), // rgba(255,155,62,255)
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'We are a Fullstack JS and Flutter team!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Elevate your digital presence with our seasoned fullstack team. Expertise in Angular, React, Node.js, Redis, MongoDB, and Flutter for mobile app development.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70, // Slightly transparent white
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('✔ Dynamic Frontend', style: TextStyle(color: Colors.white)),
                      Text('✔ Robust Backend', style: TextStyle(color: Colors.white)),
                      Text('✔ Efficient Caching', style: TextStyle(color: Colors.white)),
                      Text('✔ Advanced Database NoSQL', style: TextStyle(color: Colors.white)),
                      Text('✔ Mobile App Performance', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xFF2C6FEE), // #2c6fee
              padding: const EdgeInsets.all(16.0),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Let\'s Work Together!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'If you have a chatbot or web app idea in mind or you need some advice about product design, feel free to contact us. Currently our time books quickly, so the sooner you write, the better it is for both of us.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70, // Slightly transparent white
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
