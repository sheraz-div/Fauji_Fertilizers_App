import 'package:flutter/material.dart';

class PlantScienceDivisionScreen extends StatefulWidget {
  const PlantScienceDivisionScreen({super.key});

  @override
  State<PlantScienceDivisionScreen> createState() => _PlantScienceDivisionScreenState();
}

class _PlantScienceDivisionScreenState extends State<PlantScienceDivisionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Sciences Division (PSD)'),
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
      'Plant Sciences has been entrusted the major task of research and development activities related to broader areas of Crop Production, Plant Protection, and Horticulture. The focus of research work in these particular areas was to bring self-sufficiency in the major food commodities; import substitution through enhanced local production, value addition and post-harvest management of international standard and adoption of resource conservation technologies. In order to achieve the above goals, priority research areas were identified including maintenance of genetic diversity and germplasm improvement; variety development; standardization of production technology package for sustainable crop production; integrated pest management; agricultural mechanization; and post harvest management.',
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
          title: Text('Maintenance of Genetic Diversity and Germplasm Improvement.'),
          leading: Icon(Icons.grain),
        ),
        ListTile(
          title: Text('Variety Development for Increased Crop Yield.'),
          leading: Icon(Icons.crop),
        ),
        ListTile(
          title: Text('Sustainable Crop Production Technology Package.'),
          leading: Icon(Icons.eco),
        ),
        ListTile(
          title: Text('Integrated Pest Management Strategies.'),
          leading: Icon(Icons.pest_control),
        ),
        ListTile(
          title: Text('Agricultural Mechanization Research.'),
          leading: Icon(Icons.settings_input_component),
        ),
        ListTile(
          title: Text('Post Harvest Management and Value Addition.'),
          leading: Icon(Icons.restaurant),
        ),
        ListTile(
          title: Text('Research on Emerging Issues in Agriculture.'),
          leading: Icon(Icons.new_releases),
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
