import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/EmployeeCorner/CircularPDFView.dart';

class AnnualReportScreen extends StatelessWidget {
  final List<Map<String, String>> circulars = [
    {
      "title": "Annual Report 2021-22",
      "filePath": "assets/PressClipping/AnnulReport_FINAL.pdf",
    },
    {
      "title": "Annual Report 2020-21",
      "filePath": "assets/PressClipping/Annual_Report_2020_21.pdf",
    },
    {
      "title": "Annual Report 2019-20",
      "filePath": "assets/PressClipping/Annual_Report_2019_20.pdf",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  // Build AppBar
  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Press Clipping"),
      backgroundColor: Colors.green,
    );
  }

  // Build Body
  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCircularList(context),
        ],
      ),
    );
  }

  // Build Circular List
  Widget _buildCircularList(BuildContext context) {
    return circulars.isEmpty
        ? const Center(
            child: Text(
              'No circulars available.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        : Expanded(
            child: ListView.builder(
              itemCount: circulars.length,
              itemBuilder: (context, index) {
                final circular = circulars[index];
                return _buildCircularCard(context, circular);
              },
            ),
          );
  }

  // Build Circular Card
  Widget _buildCircularCard(BuildContext context, Map<String, String> circular) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(Icons.picture_as_pdf, color: Colors.redAccent),
        title: Text(
          circular["title"]!,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          _onCircularTap(context, circular);
        },
      ),
    );
  }

  // Handle Circular Tap
  void _onCircularTap(BuildContext context, Map<String, String> circular) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CircularPDFViewerScreen(
          title: circular["title"]!,
          filePath: circular["filePath"]!,
        ),
      ),
    );
  }
}