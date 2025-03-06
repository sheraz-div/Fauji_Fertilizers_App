import 'package:flutter/material.dart';

class PlanningAndDevelopmentDivisionScreen extends StatefulWidget {
  const PlanningAndDevelopmentDivisionScreen({super.key});

  @override
  State<PlanningAndDevelopmentDivisionScreen> createState() =>
      _PlanningAndDevelopmentDivisionScreenState();
}

class _PlanningAndDevelopmentDivisionScreenState
    extends State<PlanningAndDevelopmentDivisionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planning and Development Division (P&DD)'),
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
      'The Planning & Development Division of PARC is responsible for planning, processing, coordination, monitoring, review & evaluation of agricultural research projects and programs. It plays a key role in the preparation and implementation of agricultural research and development programs of PARC.',
      style: TextStyle(fontSize: 16),
    );
  }

  // Functions title widget function
  Widget _buildFunctionsTitle() {
    return Text(
      'Functions of the Planning & Development Division:',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // List of functions widget function
  Widget _buildFunctionsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• Development of National Agricultural Research Priorities and research projects.'),
        Text('• Examination and appraisal of research projects under PSDP submitted by PARC scientists.'),
        Text('• Participation in review meetings in the Ministry of National Food Security and Research, and Planning Commission.'),
        Text('• Priority setting of competitive grants projects (ALP).'),
        Text('• Execute the Competitive Grants projects under Technical Advisory Committees and Board of Directors.'),
        Text('• Implementation of Mega R&D Projects of PARC.'),
        Text('• Monitoring, evaluation, and impact assessment of agricultural research projects.'),
        Text('• Assist the Ministry in the preparation of agricultural research policies.'),
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

