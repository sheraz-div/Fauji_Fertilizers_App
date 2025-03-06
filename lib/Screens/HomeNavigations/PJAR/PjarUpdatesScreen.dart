import 'package:flutter/material.dart';

class PjarUpdatesScreen extends StatelessWidget {
  const PjarUpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Updates'),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Latest Updates on PJAR Projects',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 20),
              _buildUpdateItem('• New crop varieties are being tested in different regions.'),
              _buildUpdateItem('• Sustainable farming techniques are being promoted in local communities.'),
              // Add more updates as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUpdateItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
