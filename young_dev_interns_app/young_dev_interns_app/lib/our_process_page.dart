import 'package:flutter/material.dart';
import 'dart:math';

class OurProcessPage extends StatelessWidget {
  const OurProcessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Process'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
      ),
      body: Stack(
        children: [
          _buildBackgroundShapes(context), // Add the background shapes
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'How do we work? 🔥',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  _buildProcessStep(
                    color: const Color.fromRGBO(241, 209, 124, 1),
                    icon: Icons.run_circle,
                    title: 'Analysis and Vision',
                    content: 'Understand project scope, user needs, set goals for comprehensive direction.',
                  ),
                  const SizedBox(height: 20),
                  _buildProcessStep(
                    color: const Color.fromRGBO(173, 243, 213, 1),
                    icon: Icons.arrow_forward,
                    title: 'Agile Planning',
                    content: 'Utilize agile methodology to break tasks, prioritize, and plan iterative development.',
                  ),
                  const SizedBox(height: 20),
                  _buildProcessStep(
                    color: const Color.fromRGBO(175, 211, 251, 1),
                    icon: Icons.table_rows,
                    title: 'Fullstack Craftsmanship',
                    content: 'Develop frontend and backend components collaboratively, ensuring seamless integration.',
                  ),
                  const SizedBox(height: 20),
                  _buildProcessStep(
                    color: const Color.fromRGBO(220, 183, 236, 1),
                    icon: Icons.lock,
                    title: 'Rigorous Testing & Deployment',
                    content: 'Thoroughly test, refine, deploy for a polished, production-ready application.',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackgroundShapes(BuildContext context) {
    return Stack(
      children: List.generate(12, (index) { // Increased to 12 shapes
        final random = Random();
        bool isCircle = random.nextBool(); // Randomly choose between circle and triangle
        return Positioned(
          left: random.nextDouble() * MediaQuery.of(context).size.width * 0.85, // Limit width
          top: random.nextDouble() < 0.5 // 50% chance for top or bottom
              ? random.nextDouble() * MediaQuery.of(context).size.height * 0.3 // Top shapes
              : MediaQuery.of(context).size.height * 0.7 + random.nextDouble() * MediaQuery.of(context).size.height * 0.3, // Bottom shapes
          child: isCircle
              ? Container(
                  width: 30, // Circle diameter
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(246, 202, 69, 1), // Circle color
                    shape: BoxShape.circle,
                  ),
                )
              : CustomPaint(
                  size: const Size(30, 30), // Triangle size
                  painter: _TrianglePainter(),
                ),
        );
      }),
    );
  }

  Widget _buildProcessStep({
    required Color color,
    required IconData icon,
    required String title,
    required String content,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: color,
          child: Icon(icon, size: 30, color: Colors.white),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = const Color.fromRGBO(44, 111, 238, 1);
    final path = Path();
    path.moveTo(size.width / 3, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
