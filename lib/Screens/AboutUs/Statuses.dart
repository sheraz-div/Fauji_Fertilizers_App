import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/AboutUs/StatusPdf.dart';

class StatutesScreen extends StatefulWidget {
  const StatutesScreen({super.key});

  @override
  State<StatutesScreen> createState() => _StatutesScreenState();
}

class _StatutesScreenState extends State<StatutesScreen> {
  // A list of Statutes with titles and corresponding PDF file paths
  final List<Map<String, String>> statutesList = [
    {"title": "PARC Ordinance, 1981", "file": "assets/pdf/PARC_Ordinance_1981.pdf"},
    {"title": "PARC Rules, 1984", "file": "assets/pdf/PARC_Rules_1984.pdf"},
    {"title": "PARC Employees (Service) Regulations, 1984", "file": "assets/pdf/PARC_Regulations_1984.pdf"},
  ];

  // Function to handle navigation to the PDF Viewer
  void _openPdfViewer(String title, String filePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StatusPdfScreen(
          title: title,
          filePath: filePath,
        ),
      ),
    );
  }

  // Function to create the grid view of statutes
  Widget _buildStatutesGrid() {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: statutesList.length,
      itemBuilder: (context, index) {
        final statute = statutesList[index];
        return GestureDetector(
          onTap: () => _openPdfViewer(statute["title"]!, statute["file"]!), // Open PDF on tap
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    statute["title"]!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Statutes"), // Heading at the top
        backgroundColor: Colors.green,
      ),
body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Statutes heading at the top of the screen
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Statutes", // Heading text
                style: TextStyle(
                  
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: _buildStatutesGrid(), // Call the function to build the grid
          ),
        ],
      ),    
      );
  }
}
