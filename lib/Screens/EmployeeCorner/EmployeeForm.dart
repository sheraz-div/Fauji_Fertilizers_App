import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/EmployeeCorner/CircularPDFView.dart'; // PDF Viewer Screen

class EmployeeFormsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> forms = [
    // Employee Forms
    {
      "category": "Employee Forms",
      "forms": [
        {"title": "PARC Job Application Form (With Challan)", 
        "filePath": "assets/EmployeeForms/Job_Application_Form.pdf"},
        {"title": "PARC Job Application Form", "filePath": "assets/EmployeeForms/Job_Application_Form.pdf"},
        {"title": "PGRI Seed Request Form", "filePath": "assets/EmployeeForms/Job_Application_Form.pdf"},
      ],
    },
    // ACR Forms
    {
      "category": "ACR Forms",
      "forms": [
        {"title": "Scientists", "filePath": "assets/EmployeeForms/Scientist2.pdf"},
        {"title": "Non-Scientists", "filePath": "assets/EmployeeForms/Job_Application_Form.pdf"},
        {"title": "Technical Staff", "filePath": "assets/EmployeeForms/Job_Application_Form.pdf"},
        // Add more ACR forms...
      ],
    },
    // Admin Forms
    {
      "category": "Admin Forms",
      "forms": [
        {"title": "Asset Form", "filePath": "assets/EmployeeForms/Asset_Form.pdf"},
        {"title": "Attrition Proforma", "filePath": "assets/EmployeeForms/Attrition_Proforma.pdf"},
        // Add more Admin forms...
      ],
    },
    // Medical Forms
    {
      "category": "Medical Forms",
      "forms": [
        {"title": "Proforma to Avail Medical Facility", "filePath": "assets/EmployeeForms/Medical_Proforma_Avail.pdf"},
        {"title": "Proforma for Re-issuance of Medical Card", "filePath": "assets/EmployeeForms/Medical_Proforma_Reissue.pdf"},
        // Add more Medical forms...
      ],
    },
    // Estate Forms
    {
      "category": "Estate Forms",
      "forms": [
        {"title": "General Information for House Hiring Facility", "filePath": "assets/EmployeeForms/Estate_General_Info.pdf"},
        {"title": "Application Form for Hiring", "filePath": "assets/EmployeeForms/Estate_Application_Hiring.pdf"},
        // Add more Estate forms...
      ],
    },
    // O&M Forms
    {
      "category": "O&M Forms",
      "forms": [
        {"title": "Educational Stipend Application Welfare Fund", "filePath": "assets/EmployeeForms/OM_Educational_Stipend.pdf"},
        {"title": "Farewell Grant Form", "filePath": "assets/EmployeeForms/OM_Farewell_Grant.pdf"},
        // Add more O&M forms...
      ],
    },
    // Security Forms
    {
      "category": "Security Forms",
      "forms": [
        {"title": "Proforma for PARC Office Card", "filePath": "assets/EmployeeForms/Security_PARCOFFICE.pdf"},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Forms"),
        backgroundColor: Colors.green,
      ),
      body: _buildBody(context),
    );
  }

  // Build Body
  Widget _buildBody(BuildContext context) {
    return ListView.builder(
      itemCount: forms.length,
      itemBuilder: (context, categoryIndex) {
        final category = forms[categoryIndex];
        return _buildCategoryCard(context, category, categoryIndex);
      },
    );
  }

  // Build Category Card
  Widget _buildCategoryCard(BuildContext context, Map<String, dynamic> category, int categoryIndex) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        title: Text(
          category["category"],
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        children: _buildFormList(context, category["forms"]),
      ),
    );
  }

  // Build Form List
  List<Widget> _buildFormList(BuildContext context, List<Map<String, String>> forms) {
    return forms.map((form) {
      return ListTile(
        title: Text(form["title"]!),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          _onFormTap(context, form);
        },
      );
    }).toList();
  }

  // Handle Form Tap
  void _onFormTap(BuildContext context, Map<String, String> form) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CircularPDFViewerScreen(
          title: form["title"]!,
          filePath: form["filePath"]!,
        ),
      ),
    );
  }
}
