import 'package:flutter/material.dart';

class AnimalScienceDivisonScreen extends StatefulWidget {
  const AnimalScienceDivisonScreen({super.key});

  @override
  State<AnimalScienceDivisonScreen> createState() => _AnimalScienceDivisonScreenState();
}

class _AnimalScienceDivisonScreenState extends State<AnimalScienceDivisonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animal Sciences Division (ASD)'),
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
      'Animal Sciences Division (ASD) was established in 1980 under the umbrella of PARC. '
      'The aim of this division is to improve production potential of food animals. '
      'The prime task of ASD is to develop, monitor and evaluate research projects and eventually finding solutions to issues in the livestock sector.',
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
          title: Text('Breed Improvement: Enhance livestock productivity and quality.'),
          leading: Icon(Icons.pets),
        ),
        ListTile(
          title: Text('Nutrition and Feeding: Develop balanced livestock feed.'),
          leading: Icon(Icons.fastfood),
        ),
        ListTile(
          title: Text('Disease Control: Prevent and manage livestock diseases.'),
          leading: Icon(Icons.health_and_safety),
        ),
        ListTile(
          title: Text('Aquaculture and Inland Fisheries: Improve fishery productivity.'),
          leading: Icon(Icons.water),
        ),
        ListTile(
          title: Text('Livestock Extension: Educate farmers and stakeholders.'),
          leading: Icon(Icons.cast_for_education),
        ),
        ListTile(
          title: Text('Conservation: Protect indigenous livestock breeds.'),
          leading: Icon(Icons.leak_add),
        ),
        ListTile(
          title: Text('Environmental Sustainability: Promote sustainable livestock practices.'),
          leading: Icon(Icons.eco),
        ),
        ListTile(
          title: Text('Policy Development: Contribute to policy formulation.'),
          leading: Icon(Icons.policy),
        ),
      ],
    );
  }

  // Scrollable horizontal buttons widget function
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
