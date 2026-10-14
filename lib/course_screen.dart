import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  
  int count = 0;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COMP 205'),
        actions: [
          
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
        ],
      ),
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  child: Icon(Icons.school),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile Programming',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Text('Fall 2026 · B238'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            Row(
              children: const [
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(height: 4),
                      Text('Mon 10:00'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.computer),
                      SizedBox(height: 4),
                      Text('Wed 10:00'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.groups),
                      SizedBox(height: 4),
                      Text('Fri 15:00'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Build AI-powered mobile apps with Flutter: from widgets to machine learning and LLMs.',
                ),
              ),
            ),
            const SizedBox(height: 16),

            Text('Interested: $count'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text("I'm interested"),
            ),
          ],
        ),
      ),
    );
  }
}