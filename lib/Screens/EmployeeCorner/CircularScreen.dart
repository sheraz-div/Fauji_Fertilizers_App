import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/EmployeeCorner/CircularPDFView.dart';
import 'package:foujifertilizer/Screens/EmployeeCorner/EmployeeForm.dart';
import 'package:foujifertilizer/Screens/EmployeeCorner/SenetryList.dart';

class CircularsScreen extends StatelessWidget {
  final List<Map<String, String>> circulars = [
  {
    "title": "Authorization of Vehicles of Closed / Completed Projects",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Reorganization of Costal Agriculture Research Institute (CARI) Lasbella",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Formulation of PSDP 2025-26- Submission of Project Concept Notes (PCNs) 11.11.2024",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Recording, Indexing of Files and Weeding Out of Old Records In Various Ministries/Divisions",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Declaration of Assets Held and Acquired by Government Servants",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Use of Official Media Platform by Government Servants",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Provision of Service Books for Completion of Service Record",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Adoption of Government Servants (Efficiency & Discipline) Rule 2020",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Use of Extraneous Influence by Government Servants",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Pakistan Space Activities Rules-2024",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Guidelines for Attendance of Diplomatic Functions/Receptions",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Government Effectiveness & Efficiency Procedural Guidelines for Prime Minister's Meeting",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Procedure for the Acceptance and Disposal of Gifts 2023",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Sanction for Grant of SRA & ASRA for the Year 2023 to the Scientists",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Circular for Identification of Physical Assets in PARC",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Ban on Use of Red Carpet - Cabinet Division",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Recording and Indexing of Files and Weeding Out of Old Records (Reminder-III)",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Notification (Office Timings)",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Implementation of Procurement Process through E-Pak Acquisition System",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Revision of Deputation/Additional Charge Allowance",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Circular: Permission Before Ministry Visit",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Observance of Budgetary Ceiling under Non-Development Grant of PARC",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Optimal Utilization of Welfare Services",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Protection Against Harassment of Women at Workplace Act, 2010",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Energy Conservation Guidelines",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Upgrade to Computerized Medical Card",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Timely Completion of Performance Evaluation Report (PER) for 2023",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Declaration of Assets Held and Acquired by Government Servants for the Year Ended on 30th June 2022",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Prime Minister's Directives Regarding Prequalification Contractors",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
  },
  {
    "title": "Payment of Benevolent Monthly Grant to the Beneficiaries through Online Credit System",
    "filePath": "assets/CircularPdf/Authorization_of_vehicles.pdf",
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
      title: const Text("Notifications / Circulars / O.M"),
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
          _buildButtons(context),
          const SizedBox(height: 20),
          _buildSearchBar(),
          const SizedBox(height: 20),
          _buildCircularList(context),
        ],
      ),
    );
  }

  // Build Buttons (Employee Form and Seniority List)
 Widget _buildButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      // Employee Form Button
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade600, Colors.blue.shade400],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, // Use transparent so the gradient is visible
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EmployeeFormsScreen()
      ),
    );
            // Navigate to Employee Form Screen
          },
          child: const Text(
            "Employee Form",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      
      // Seniority List Button
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange.shade600, Colors.orange.shade400],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.orange.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, // Use transparent so the gradient is visible
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
                        Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SeniorityListScreen()
      ),
    );
             
            // Navigate to Seniority List Screen
          },
          child: const Text(
            "Seniority List",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ],
  );
}
  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          hintText: 'Search...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          prefixIcon: const Icon(Icons.search),
        ),
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