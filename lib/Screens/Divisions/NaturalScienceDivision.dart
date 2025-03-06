import 'package:flutter/material.dart';

class NaturalResourcesDivisionScreen extends StatefulWidget {
  const NaturalResourcesDivisionScreen({super.key});

  @override
  State<NaturalResourcesDivisionScreen> createState() => _NaturalResourcesDivisionScreenState();
}

class _NaturalResourcesDivisionScreenState extends State<NaturalResourcesDivisionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Natural Resources Division (NRD)'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildIntroductionText(),
              SizedBox(height: 20),
              _buildKeyObjectivesTitle(),
              _buildKeyObjectivesList(),
              SizedBox(height: 20),
              _buildHorizontalScrollButtons(),
            ],
          ),
        ),
      ),
    );
  }

  // Introduction text widget function
  Widget _buildIntroductionText() {
    return Text(
      'The natural resources research is oriented towards regeneration of innovative technologies for efficient management of land and water resources and for boosting agricultural productivity under arid and mountainous environmental conditions.',
      style: TextStyle(fontSize: 16),
    );
  }

  // Key Objectives title widget function
  Widget _buildKeyObjectivesTitle() {
    return Text(
      'Key Objectives:',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // List of key objectives widget function
  Widget _buildKeyObjectivesList() {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          title: Text('Efficient Land and Water Resource Management.'),
          leading: Icon(Icons.water_drop),
        ),
        ListTile(
          title: Text('Boosting Agricultural Productivity in Arid and Mountainous Areas.'),
          leading: Icon(Icons.grain),
        ),
        ListTile(
          title: Text('Research on Innovative Technologies for Natural Resources.'),
          leading: Icon(Icons.computer),
        ),
        ListTile(
          title: Text('Sustainable Development and Conservation of Natural Resources.'),
          leading: Icon(Icons.subscript_sharp),
        ),
        ListTile(
          title: Text('Improving Soil Health and Fertility.'),
          leading: Icon(Icons.sip_outlined),
        ),
        ListTile(
          title: Text('Climate Adaptation and Resilience in Agriculture.'),
          leading: Icon(Icons.thermostat),
        ),
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

