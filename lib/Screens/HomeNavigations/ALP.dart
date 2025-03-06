import 'package:flutter/material.dart';

class ALPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agricultural Linkages Program (ALP)"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Agricultural Linkages Program (ALP)",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade800,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "The Agricultural Linkages Program (ALP) is a strategic initiative by the Pakistan Agricultural Research Council (PARC) aimed at boosting agricultural research and development in Pakistan.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Text(
              "Key Objectives of ALP",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
              ),
            ),
            const SizedBox(height: 12),
            _buildObjectiveItem(
              "Research Funding",
              "Providing financial support for research projects addressing critical agricultural challenges.",
            ),
            _buildObjectiveItem(
              "Capacity Building",
              "Enhancing the skills of researchers and farmers through targeted training programs.",
            ),
            _buildObjectiveItem(
              "Technology Transfer",
              "Facilitating the dissemination of innovative agricultural technologies and practices to end-users.",
            ),
            _buildObjectiveItem(
              "Collaboration",
              "Promoting partnerships among research institutions, universities, and the farming community.",
            ),
            const SizedBox(height: 24),
            Text(
              "Impact",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "ALP contributes to agricultural modernization, food security, and economic growth in Pakistan by fostering innovation and sustainable farming practices.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  _launchALPWebsite();
                },
                icon: const Icon(Icons.link),
                label: const Text("Visit ALP Website"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade600,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildObjectiveItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: Colors.green),
          const SizedBox(width: 8),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: "$title: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: description,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _launchALPWebsite() {
    // You can integrate the URL launcher here if needed.
    print("Navigate to ALP Website: https://www.parc.gov.pk/index");
  }
}
