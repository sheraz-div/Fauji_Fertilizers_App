import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;

  const DetailScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.greenAccent.shade700,
      ),
      body: Center(
        child: Text(
          'Details about $title will go here.',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}