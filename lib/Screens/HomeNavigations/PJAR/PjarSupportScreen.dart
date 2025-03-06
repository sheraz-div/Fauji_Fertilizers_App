import 'package:flutter/material.dart';

class PjarSupportScreen extends StatelessWidget {
  const PjarSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farmer Support Resources'),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Resources for Farmers',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Farmers involved in PJAR projects can access a range of resources, including:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 15),
              _buildResourceItem('• Farming Techniques & Best Practices'),
              _buildResourceItem('• Seed Varieties and Pest Control'),
              _buildResourceItem('• Government Assistance Programs'),
              // Add more resources as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResourceItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
