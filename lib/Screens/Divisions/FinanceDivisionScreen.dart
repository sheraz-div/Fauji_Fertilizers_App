import 'package:flutter/material.dart';

class FinanceDivisionScreen extends StatefulWidget {
  const FinanceDivisionScreen({super.key});

  @override
  State<FinanceDivisionScreen> createState() => _FinanceDivisionScreenState();
}

class _FinanceDivisionScreenState extends State<FinanceDivisionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finance Division - PARC'),
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
              _buildCurrentStatusTitle(),
              _buildCurrentStatusList(),
              SizedBox(height: 20),
              _buildMissionTitle(),
              _buildMissionText(),
              SizedBox(height: 20),
              _buildGoalsTitle(),
              _buildGoalsText(),
              SizedBox(height: 20),
              _buildObjectivesTitle(),
              _buildObjectivesList(),
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
      'Finance Division, PARC was established since the establishment of PARC in 1981. '
      'Since its inception, it has been performing its functions efficiently and providing financial services and assistance to carry out Agricultural Research and Development activities for the improvement and sustainability of food in the country.',
      style: TextStyle(fontSize: 16),
    );
  }

  // Current Status title widget function
  Widget _buildCurrentStatusTitle() {
    return Text(
      'Current Status:',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // Current Status list widget function
  Widget _buildCurrentStatusList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• Directorate of Finance, PARC'),
        Text('• Directorate of Accounts, PARC'),
        Text('• Directorate of RF&P, PARC'),
        Text('• Directorate of Internal Audit, PARC'),
        Text('• Directorate of Finance & Accounts, NARC'),
      ],
    );
  }

  // Mission title widget function
  Widget _buildMissionTitle() {
    return Text(
      'Mission:',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // Mission text widget function
  Widget _buildMissionText() {
    return Text(
      'To support the Agricultural R&D activities by providing efficient/effective and timely financial services to the Scientists of PARC.',
      style: TextStyle(fontSize: 16),
    );
  }

  // Goals title widget function
  Widget _buildGoalsTitle() {
    return Text(
      'Goals:',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // Goals text widget function
  Widget _buildGoalsText() {
    return Text(
      '• To get maximum funds from GoP for smooth running of Agricultural R&D activities for food security in the country.',
      style: TextStyle(fontSize: 16),
    );
  }

  // Objectives title widget function
  Widget _buildObjectivesTitle() {
    return Text(
      'Objectives:',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // Objectives list widget function
  Widget _buildObjectivesList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• To get finances from GoP and its efficient and effective utilization over Agricultural R&D activities.'),
      ],
    );
  }

  // Functions title widget function
  Widget _buildFunctionsTitle() {
    return Text(
      'Functions:',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // Functions list widget function
  Widget _buildFunctionsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• Preparation of Budget estimates.'),
        Text('• Submission of Regular Budget to the Finance Division, GoP.'),
        Text('• Preparation and submission of Cases for Additional Budget Grant through Supplementary Grants/ Technical Supplementary Grants.'),
        Text('• Preparation of Financial Agenda for seeking approval of BOG.'),
        Text('• Responding to queries raised by the Finance Division, GoP during Budget allocation process.'),
        Text('• Allocation of Budget by the GoP, and further distribution and authorization to Research Centres/ Institutes of PARC.'),
        Text('• Maintenance of all kinds of Financial records.'),
        Text('• Periodical pre and post approval financial reviews and monitoring/analysis of various Development Projects.'),
        Text('• Disbursement of funds in line with GoP rules for financial transparency.'),
        Text('• Disbursement of salaries and maintenance of deductions made out of employees’ salaries.'),
        Text('• Pay fixations of the employees and tax deductions from employees’ salaries and vendors/contractors payments.'),
        Text('• Regular internal auditing of all establishments of PARC and its projects.'),
        Text('• Coordination with the Directorate General of Federal Audit regarding regular external audits of PARC.'),
        Text('• Regular pre-audit of all payment/receipt vouchers.'),
        Text('• Conducting statutory audits of the accounts of the Council by chartered accountants firm.'),
        Text('• Preparation & maintenance of books of accounts of various welfare funds and group insurance accounts.'),
        Text('• Coordination with national and international agencies regarding finances of PSDP projects and MoU projects.'),
        Text('• Preparation of replies for the honorable courts in various cases and implementation of the direction.'),
        Text('• Personal appearance in the honorable High Courts and Wafaqi Mohtasib regarding legal matters of the Council.'),
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
