import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/EmployeeCorner/CircularPDFView.dart'; // PDF Viewer Screen

class SeniorityListScreen extends StatelessWidget {
  final List<Map<String, String>> seniorityLists = [
    {
      "title": "Sanitary Attendants",
      "date": "Updated 29-05-2024",
      "filePath": "assets/SeniorityPdf/Sanitairy1.pdf"
    },
    {
      "title": "Ex-Cadres/Cafe/Telephone Operators",
      "date": "Updated 29-05-2024",
      "filePath": "assets/SeniorityPdf/Sanitairy1.pdf"
    },
    {
      "title": "Technical",
      "date": "Updated 29-05-2024",
      "filePath": "assets/SeniorityPdf/Sanitairy1.pdf"
    },
    {
      "title": "Security",
      "date": "Updated 29-05-2024",
      "filePath": "assets/SeniorityPdf/Sanitairy1.pdf"
    },
    {
      "title": "Qasid/Naib Qasid",
      "date": "Updated 29-05-2024",
      "filePath": "assets/SeniorityPdf/Sanitairy1.pdf"
    },
    // Add other seniority list entries here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Seniority List"),
        backgroundColor: Colors.green,
      ),
      body: _buildBody(context),
    );
  }

  // Build Body
  Widget _buildBody(BuildContext context) {
    return ListView.builder(
      itemCount: seniorityLists.length,
      itemBuilder: (context, index) {
        final seniority = seniorityLists[index];
        return _buildSeniorityCard(context, seniority, index);
      },
    );
  }

  // Build Seniority List Card
  Widget _buildSeniorityCard(BuildContext context, Map<String, String> seniority, int index) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          seniority["title"]!,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(seniority["date"]!),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          _onSeniorityTap(context, seniority);
        },
      ),
    );
  }

  // Handle Seniority List Item Tap
  void _onSeniorityTap(BuildContext context, Map<String, String> seniority) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CircularPDFViewerScreen(
          title: seniority["title"]!,
          filePath: seniority["filePath"]!,
        ),
      ),
    );
  }
}
