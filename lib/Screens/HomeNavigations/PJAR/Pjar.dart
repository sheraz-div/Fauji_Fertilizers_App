import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/HomeNavigations/PJAR/PjarOverviewScreen.dart';
import 'package:foujifertilizer/Screens/HomeNavigations/PJAR/PjarResearchScreen.dart';
import 'package:foujifertilizer/Screens/HomeNavigations/PJAR/PjarSupportScreen.dart';
import 'package:foujifertilizer/Screens/HomeNavigations/PJAR/PjarUpdatesScreen.dart';

class PjarScreen extends StatefulWidget {
  const PjarScreen({super.key});

  @override
  State<PjarScreen> createState() => _PjarScreenState();
}

class _PjarScreenState extends State<PjarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PJAR Initiatives'),
        backgroundColor: Colors.green[700],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildTile(
              icon: Icons.info_outline,
              title: 'PJAR Overview',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PjarOverviewScreen()),
                );
              },
            ),
            _buildTile(
              icon: Icons.library_books_outlined,
              title: 'Research Papers & Reports',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PjarResearchScreen()),
                );
              },
            ),
            _buildTile(
              icon: Icons.update_outlined,
              title: 'Project Updates',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PjarUpdatesScreen()),
                );
              },
            ),
            _buildTile(
              icon: Icons.support_agent_outlined,
              title: 'Farmer Support Resources',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PjarSupportScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        leading: Icon(icon, color: Colors.green[700]),
        title: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
