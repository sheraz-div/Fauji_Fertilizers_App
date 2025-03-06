import 'package:flutter/material.dart';

class TrainingWorkshopScreen extends StatelessWidget {
   TrainingWorkshopScreen({super.key});

  final List<Map<String, String>> trainingDetails = [
    {
      'date': '20.12.2024',
      'detail': 'Three Days’ Training Course on Certified Seed Potato Production(7-9 January 2025)',
      'advertisement': 'Download',
      'applicationForm': 'Download',
      'remarks': 'Closed',
    },
    {
      'date': '15.02.2025',
      'detail': 'Introduction to Agriculture Technology',
      'advertisement': 'Download',
      'applicationForm': 'Download',
      'remarks': 'Open',
    },
    {
      'date': '01.03.2025',
      'detail': 'Advanced Crop Protection Techniques',
      'advertisement': 'Download',
      'applicationForm': 'Download',
      'remarks': 'Upcoming',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Training/Workshop'),
        backgroundColor: Colors.greenAccent.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildHeader(),
            const SizedBox(height: 20),
            _buildTrainingDetailsTable(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Text(
      'Training / Workshop Details',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.greenAccent.shade700,
      ),
    );
  }

  Widget _buildTrainingDetailsTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          headingRowColor: MaterialStateProperty.all(Colors.teal.shade500),
          border: TableBorder(
            horizontalInside: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
            verticalInside: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
            left: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
            right: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
            top: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
            bottom: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
          columns: [
            DataColumn(
              label: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.teal.shade500,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Date',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            DataColumn(
              label: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.teal.shade500,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Detail',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            DataColumn(
              label: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.teal.shade500,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Advertisement',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            DataColumn(
              label: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.teal.shade500,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Application Form',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            DataColumn(
              label: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.teal.shade500,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Remarks',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
          rows: trainingDetails.map((training) {
            return DataRow(
              cells: [
                DataCell(Text(training['date'] ?? 'N/A', style: TextStyle(fontSize: 14))),
                DataCell(Text(training['detail'] ?? 'N/A', style: TextStyle(fontSize: 14))),
                DataCell(
                  ElevatedButton(
                    onPressed: () {
                      // Handle Advertisement download if available
                    },
                    child: Text('Download'),
                  ),
                ),
                DataCell(
                  ElevatedButton(
                    onPressed: () {
                      // Handle Application Form download if available
                    },
                    child: Text('Download'),
                  ),
                ),
                DataCell(Text(training['remarks'] ?? 'N/A', style: TextStyle(fontSize: 14))),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
