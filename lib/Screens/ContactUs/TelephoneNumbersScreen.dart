import 'package:flutter/material.dart';

class TelephoneNumbersScreen extends StatelessWidget {
  final String city;
  final List<Map<String, String>> directoryData;

  TelephoneNumbersScreen({required this.city, required this.directoryData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$city Telephone Numbers'),
        backgroundColor: Colors.greenAccent.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // Enable vertical scrolling
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Enable horizontal scrolling
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: DataTable(
                columnSpacing: 16.0,
                border: TableBorder.all(color: Colors.grey.shade300),
                headingRowColor: MaterialStateColor.resolveWith((states) => Colors.greenAccent.shade100),
                dataRowHeight: 50, // Adjust row height for better readability
                headingTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.greenAccent.shade700),
                dataTextStyle: TextStyle(fontSize: 14),
                columns: [
                  DataColumn(
                    label: Text('Sr.#'),
                  ),
                  DataColumn(
                    label: Text('Designation'),
                  ),
                  DataColumn(
                    label: Text('Phone / Ext.#'),
                  ),
                  DataColumn(
                    label: Text('Email Address'),
                  ),
                ],
                rows: directoryData.map((entry) {
                  int index = directoryData.indexOf(entry) + 1; // To show Sr.# dynamically
                  return DataRow(
                    cells: [
                      DataCell(Text(index.toString())),
                      DataCell(Text(entry['designation']!)),
                      DataCell(Text(entry['phone']!)),
                      DataCell(Text(entry['email']!)),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
