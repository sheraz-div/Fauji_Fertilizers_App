import 'package:flutter/material.dart';

class OrganizationalStructureScreen extends StatelessWidget {
  const OrganizationalStructureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Organizational Structure - NARC"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Section
            const Text(
              "The Centre is headed by a Director General who is helped by NARC Management Committee (NMC) in deciding major policy issues. "
              "The research is planned through Technical Working Groups (TWGs) at the institutes’ level and approved by the Research Management Committee (RMC). "
              "The research activities are organized into fourteen institutes grouped under seven sectors.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            // Heading for Sectors
            const Text(
              "Research Institutes under Seven Sectors",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Sector List
            _buildSectorCard("Agricultural Biotechnology"),
            _buildSectorCard("Agricultural Communication"),
            _buildSectorCard("Animal Sciences"),
            _buildSectorCard("Crop Sciences"),
            _buildSectorCard("Farm Mechanization"),
            _buildSectorCard("Natural Resources"),

            const SizedBox(height: 20),

            // Footer
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "For more detailed information, you may contact the respective research institutes or visit the official NARC website.",
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build each sector card
  Widget _buildSectorCard(String sectorName) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          sectorName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          // Placeholder for navigation if needed for each sector
          // You can add additional details or navigate to specific pages
        },
      ),
    );
  }
}
