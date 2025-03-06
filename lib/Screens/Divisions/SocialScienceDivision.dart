import 'package:flutter/material.dart';

class SocialSciencesDivisionScreen extends StatefulWidget {
  const SocialSciencesDivisionScreen({super.key});

  @override
  State<SocialSciencesDivisionScreen> createState() => _SocialSciencesDivisionScreenState();
}

class _SocialSciencesDivisionScreenState extends State<SocialSciencesDivisionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Sciences Division (SSD)'),
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
      'Research of Social Sciences Division (SSD) is widely regarded as a provider of substantial benefits to society at individual, local, regional, national, and international levels. '
      'Agricultural economists, sociologists, and other social scientists play a vital role in assessing the economic and social impacts of the adoption of new technologies and measuring returns on investment in agricultural R&D. '
      'These assessments provide a better understanding of the changes induced by technical developments, the responses of markets, and participants in the markets to such changes. '
      'The SSD operates through its network of Social Sciences Research Institutes (PARC-SSRIs) at Faisalabad, Tandojam, Tarnab Peshawar, NARC, and AJK.',
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
          title: Text('Assess economic and social impacts of new technologies adoption.'),
          leading: Icon(Icons.eco),
        ),
        ListTile(
          title: Text('Measure returns on investment in agricultural R&D.'),
          leading: Icon(Icons.account_balance_wallet),
        ),
        ListTile(
          title: Text('Provide insights into market responses to technological changes.'),
          leading: Icon(Icons.trending_up),
        ),
        ListTile(
          title: Text('Support decision-making and policy formulation.'),
          leading: Icon(Icons.policy),
        ),
        ListTile(
          title: Text('Conduct research through Social Sciences Research Institutes (PARC-SSRIs).'),
          leading: Icon(Icons.school),
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
