import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/AboutUs/OrganizationalHistory/NARC.dart';
import 'package:foujifertilizer/Screens/AboutUs/OrganizationalHistory/Structure.dart';

class OrganizationHistoryScreen extends StatelessWidget {
  const OrganizationHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("National Agricultural Research Centre (NARC)"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "The agricultural research system in Pakistan was evaluated by a joint Pakistan-American Research Review Team in 1968 and 1973. The recommendations included expanding the Agricultural Research Council (ARC), the successor of Food and Agriculture Committee (FAC) (1948) and Food and Agricultural Council of Pakistan (FACP) (1951), and granting a national coordinating role for basic research. For the purpose, it was decided to establish a national research centre near Islamabad, designated as Pakistan Agricultural Research Centre, later changed to National Agricultural Research Centre (NARC).",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                "Establishment of NARC was initiated in 1975, but its foundation stone was formally laid in March 1980. The Centre was finally inaugurated and charted by the President of Islamic Republic of Pakistan in March 1984.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                "PARC-National Agricultural Research Centre (NARC), Islamabad established in 1984, is the premier research establishment of the Pakistan Agricultural Research Council (PARC) at the federal level. NARC, with a total land area of approximately 1396 acres, is located near Rawal Lake, six kilometers south-east of Islamabad. Physical facilities in term of experimental fields, laboratories, green houses, gene bank, national insect museum, national herbarium, library/documentation, auditorium, machinery & lab equipment repair workshops, stores, hostels, cafeteria, audio visual studios, are also available at NARC.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                "The component divisions of crop, animal, natural resources and social sciences are playing a pivotal role in the national agricultural research system. Experimental farm area of about 1400 acres is being fully utilized to undertake research on more than 120 commodities. 98 laboratories are adequately equipped. Qualified manpower in every sub-sector of agriculture has been trained through local and foreign training programmes. NARC is supporting these activities by providing several important facilities for all the scientists in the country. In particular, it maintains a national gene bank, computer-based data processing facility, a well-maintained national library of agricultural sciences and information centre, training institute and a centralized facility for instrumentation and repair of laboratory equipment.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                "The centre is also a focal point for international and national seminars and conferences on different aspects of agricultural research. In its pursuits for high quality research NARC has linkages with internationally renowned centres/institutions all over the world.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                "The information centre holds up to date data searching as well as online searching of international research journals facility, which are being used by the scientists and university students from all over the country. The Ploy-technique institute organizes frequent training courses for agricultural scientists/extension workers/farmers and housewives in collaboration with national and international institutes/agencies to keep them abreast and impart them the latest knowledge on different aspects of agricultural production.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              // Navigation buttons
              _buildOrganizationalStructureButton(context),
              const SizedBox(height: 10),
              _buildOrganizationalChartButton(context),
              const SizedBox(height: 10),
              _buildResearchInstitutesButton(context),
            ],
          ),
        ),
      ),
    );
  }

  // Functions for buttons
  Widget _buildOrganizationalStructureButton(BuildContext context) {
    return _buildCustomButtonWithSize(
      context,
      "Organizational Structure",
      Icons.account_tree,
      Colors.green,
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const OrganizationalStructureScreen(),
          ),
        );
      },
    );
  }

  Widget _buildOrganizationalChartButton(BuildContext context) {
    return _buildCustomButtonWithSize(
      context,
      "Organizational Chart (NARC)",
      Icons.bar_chart,
      Colors.green,
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NARCChartScreen(),
          ),
        );
      },
    );
  }

  Widget _buildResearchInstitutesButton(BuildContext context) {
    return _buildCustomButtonWithSize(
      context,
      "Research Institutes of NARC",
      Icons.science,
      Colors.green,
      () {
        // Uncomment and implement when ResearchInstitutesScreen is ready
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const ResearchInstitutesScreen(),
        //   ),
        // );
      },
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
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
        ),
      ),
    );
  }
}
