import 'package:flutter/material.dart';

class AgriculturalEngineeringDivisionScreen extends StatefulWidget {
  const AgriculturalEngineeringDivisionScreen({super.key});

  @override
  State<AgriculturalEngineeringDivisionScreen> createState() =>
      _AgriculturalEngineeringDivisionScreenState();
}

class _AgriculturalEngineeringDivisionScreenState
    extends State<AgriculturalEngineeringDivisionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agricultural Engineering Division (AED)'),
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
              _buildToRsTitle(),
              _buildToRsList(),
              SizedBox(height: 20),
              _buildBottomButtons(),
            ],
          ),
        ),
      ),
    );
  }

  // Background text widget function
  Widget _buildBackgroundText() {
    return Text(
      'In pursuance of the decision of PARC Board of Governors taken in its 37th meeting held on 7th August 2014 at PARC Headquarters, the Agricultural Engineering Division (AED) was established to focus on research in the area of agricultural mechanization, post-harvest processing, value addition, food engineering, and renewable energy technologies.',
      style: TextStyle(fontSize: 16),
    );
  }

  // Terms of Reference (ToRs) title widget function
  Widget _buildToRsTitle() {
    return Text(
      'ToRs of Agricultural Engineering Division:',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // List of ToRs widget function
  Widget _buildToRsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• Execution of research programmes and development projects in accordance with PARC Ordinance.'),
        Text('• Coordinate the work of research management as stipulated in office orders.'),
        Text('• Provide leadership for developing research projects/proposals in agricultural engineering.'),
        Text('• Develop projects in agricultural mechanization, renewable energy technologies, post-harvest processing, and food engineering.'),
        Text('• Evaluation and monitoring of research projects in agricultural engineering.'),
        Text('• Coordinate with national and international institutions for research promotion.'),
        Text('• Develop policy interventions and agreements on technical matters for agricultural engineering programmes.'),
        Text('• Develop projects for establishing new research institutes in innovative areas of agricultural engineering.'),
        Text('• Undertake capacity building initiatives for agricultural engineering professionals in cutting-edge R&D.'),
      ],
    );
  }

  // Bottom buttons widget function
  Widget _buildBottomButtons() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCustomButton('Home', () {
              // Navigate to Home screen
            }),
            SizedBox(width: 20),
            _buildCustomButton('Contact Person', () {
              // Navigate to Contact Person screen
            }),
          ],
        ),
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
