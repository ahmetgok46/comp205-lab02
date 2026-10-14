import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COMP 205'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Part 1: Header row
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
          ],
        ),
      ),
    );
  }
}