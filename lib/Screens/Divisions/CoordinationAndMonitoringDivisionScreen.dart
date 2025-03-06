import 'package:flutter/material.dart';

class CoordinationAndMonitoringDivisionScreen extends StatefulWidget {
  const CoordinationAndMonitoringDivisionScreen({super.key});

  @override
  State<CoordinationAndMonitoringDivisionScreen> createState() =>
      _CoordinationAndMonitoringDivisionScreenState();
}

class _CoordinationAndMonitoringDivisionScreenState
    extends State<CoordinationAndMonitoringDivisionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coordination & Monitoring Division (C&MD)'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBackgroundText(),
              SizedBox(height: 20),
              _buildFunctionsTitle(),
              _buildFunctionsList(),
              SizedBox(height: 20),
              _buildHorizontalScrollButtons(),
            ],
          ),
        ),
      ),
    );
  }

  // Background text widget function
  Widget _buildBackgroundText() {
    return Text(
      'The Coordination & Monitoring Division was established to facilitate coordination between PARC and national and international agricultural research systems. It also focuses on training needs, post-graduate education, and research coordination at the national and regional levels.',
      style: TextStyle(fontSize: 16),
    );
  }

  // Functions title widget function
  Widget _buildFunctionsTitle() {
    return Text(
      'Functions of the Coordination & Monitoring Division:',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // List of functions widget function
  Widget _buildFunctionsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• Coordination between PARC and national agricultural research systems.'),
        Text('• Coordination with international agricultural research agencies (UN/CGIAR/US-based).'),
        Text('• Coordination and facilitation of research at the national level.'),
        Text('• Assessment of training needs for NARS and arrangement of training programs.'),
        Text('• Involvement in post-graduate education through PARC Institute of Advanced Studies (PIASA).'),
        Text('• Regional coordination with agricultural universities and livestock departments.'),
      ],
    );
  }

  // Bottom buttons widget function
  Widget _buildHorizontalScrollButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Horizontal scroll
      child: Row(
        children: [
          _buildCustomButton('Research Establishments', () {
            // Navigate to Research Establishments screen
          }),
          SizedBox(width: 20),
          _buildCustomButton('Contact Person', () {
            // Navigate to Contact Person screen
          }),
        ],
      ),
    );
  }

  // Custom button widget function
  Widget _buildCustomButton(String title, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        elevation: 5,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
