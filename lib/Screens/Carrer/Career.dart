import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/Carrer/OnlineJobPortals/PortalLogin.dart';
import 'package:foujifertilizer/Screens/Carrer/TrainningWorkshop.dart';

class CareerScreen extends StatelessWidget {
  final List<Map<String, String>> jobs = [
    {
      'title': 'Software Developer',
      'startDate': '01-Jan-2024',
      'endDate': '31-Dec-2024',
      'downloadLink': 'https://example.com/software_developer_form'
    },
    {
      'title': 'Frontend Developer',
      'startDate': '15-Feb-2024',
      'endDate': '14-Feb-2025',
      'downloadLink': 'https://example.com/frontend_developer_form'
    },
    {
      'title': 'Backend Engineer',
      'startDate': '01-Mar-2024',
      'endDate': '01-Mar-2025',
      'downloadLink': 'https://example.com/backend_engineer_form'
    },
  ];

  void _handleDownload(String? link) {
    if (link == null || link.isEmpty) {
      print('Invalid link');
      return;
    }
    print('Downloading form from $link');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Careers'),
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
            _buildJobDataTable(),
            const SizedBox(height: 20),
            _buildActionButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Text(
      'Available Jobs',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.greenAccent.shade700,
      ),
    );
  }

  Widget _buildJobDataTable() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        headingRowColor: MaterialStateProperty.all(Colors.teal.shade500), // Header row background color
        border: TableBorder(
          horizontalInside: BorderSide(
            color: Colors.grey.shade300, // Border between rows
            width: 1,
          ),
          verticalInside: BorderSide(
            color: Colors.grey.shade300, // Border between columns
            width: 1,
          ),
          left: BorderSide(
            color: Colors.grey.shade300, // Border on the left of the table
            width: 1,
          ),
          right: BorderSide(
            color: Colors.grey.shade300, // Border on the right of the table
            width: 1,
          ),
          top: BorderSide(
            color: Colors.grey.shade300, // Border at the top of the table
            width: 1,
          ),
          bottom: BorderSide(
            color: Colors.grey.shade300, // Border at the bottom of the table
            width: 1,
          ),
        ),
        columns: [
          DataColumn(
            label: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.teal.shade500, // Accent color for the header
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'SR. No',
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
                color: Colors.teal.shade500, // Accent color for the header
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Title',
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
                color: Colors.teal.shade500, // Accent color for the header
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Start Date',
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
                color: Colors.teal.shade500, // Accent color for the header
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'End Date',
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
                color: Colors.teal.shade500, // Accent color for the header
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Download',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
        rows: jobs.asMap().entries.map((entry) {
          int index = entry.key;
          Map<String, String> job = entry.value;

          return DataRow(
            color: index.isEven
                ? MaterialStateProperty.all(Colors.white) // White rows
                : MaterialStateProperty.all(Colors.grey.shade100), // Light grey rows
            cells: [
              DataCell(Text('${index + 1}', style: TextStyle(fontSize: 14))),
              DataCell(Text(job['title'] ?? 'No Title', style: TextStyle(fontSize: 14))),
              DataCell(Text(job['startDate'] ?? 'No Start Date', style: TextStyle(fontSize: 14))),
              DataCell(Text(job['endDate'] ?? 'No End Date', style: TextStyle(fontSize: 14))),
              DataCell(
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent.shade400, // Button background color
                    foregroundColor: Colors.white, // Button text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Rounded button shape
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    elevation: 5, // Shadow effect for the button
                  ),
                  onPressed: job['downloadLink'] != null
                      ? () => _handleDownload(job['downloadLink'])
                      : null,
                  icon: Icon(Icons.download_rounded, size: 18),
                  label: Text('Download'),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    ),
  );
}

 Widget _buildActionButtons(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      _buildCustomButtonWithSize(
        context,
        'Online Job Portals',
        Icons.web,
        Colors.blueAccent,
        () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PortalLoginScreen()),
        ),
      ),
      const SizedBox(height: 10),
      _buildCustomButtonWithSize(
        context,
        'Online Results',
        Icons.check_circle,
        Colors.greenAccent,
        () {
          // Uncomment and implement when the OnlineResultsScreen is ready
        },
      ),
      const SizedBox(height: 10),
      _buildCustomButtonWithSize(
        context,
        'Test Schedule',
        Icons.schedule,
        Colors.orangeAccent,
        () {
          // Uncomment and implement when the TestScheduleScreen is ready
        },
      ),
      const SizedBox(height: 10),
      _buildCustomButtonWithSize(
        context,
        'Training/Workshop',
        Icons.work,
        Colors.purpleAccent,
        () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TrainingWorkshopScreen()),
          );
        },
      ),
    ],
  );
}

Widget _buildCustomButtonWithSize(
  BuildContext context,
  String title,
  IconData icon,
  Color color,
  VoidCallback onPressed,
) {
  return SizedBox(
    width: 250, // Set a consistent width
    height: 50, // Set a consistent height
    child: ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white),
      label: Text(title),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Adjust border radius if needed
        ),
      ),
    ),
  );
}
}