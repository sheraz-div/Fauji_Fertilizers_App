import 'package:flutter/material.dart';

class PjarOverviewScreen extends StatelessWidget {
  const PjarOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PJAR Overview'),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'About PJAR',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'PJAR (Pakistan-Japan Agricultural Research) focuses on advancing agricultural practices through collaboration between Pakistan and Japan. This initiative aims to improve crop yields, sustainable farming, and introduce advanced farming technologies.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Key Focus Areas:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 10),
              _buildFocusItem('• Crop Improvement'),
              _buildFocusItem('• Sustainable Farming'),
              _buildFocusItem('• Advanced Technologies'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFocusItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
