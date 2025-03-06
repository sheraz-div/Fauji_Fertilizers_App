import 'package:flutter/material.dart';

class PjarResearchScreen extends StatelessWidget {
  const PjarResearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Research Papers & Reports'),
        backgroundColor: Colors.green[700],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildResearchTile(
              title: 'Crop Improvement Research',
              onTap: () {
                // Navigate to detailed research paper
              },
            ),
            _buildResearchTile(
              title: 'Sustainable Farming Practices',
              onTap: () {
                // Navigate to detailed research paper
              },
            ),
            // Add more ListTiles as needed
          ],
        ),
      ),
    );
  }

  Widget _buildResearchTile({
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
