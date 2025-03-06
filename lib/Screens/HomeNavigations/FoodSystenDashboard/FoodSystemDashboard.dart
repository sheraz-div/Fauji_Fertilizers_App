import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/HomeNavigations/FoodSystenDashboard/Details.dart';

class FoodSystemsDashboardScreen extends StatelessWidget {
  const FoodSystemsDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Systems Dashboard'),
        backgroundColor: Colors.greenAccent.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSectionCards(context),
            buildAboutSection(context),
            buildCountryDashboardSection(context),
            buildFooter(),
          ],
        ),
      ),
    );
  }

  // Function for building section cards
  Widget buildSectionCards(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionCard(
          context,
          title: 'Global Data',
          description:
              'View global data for hundreds of indicators spanning every aspect of food systems.',
          imagePath: 'assets/images/global-data.png',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailScreen(title: 'Global Data'),
              ),
            );
          },
        ),
        const SizedBox(height: 20),
        _buildSectionCard(
          context,
          title: 'Country & Territory Data',
          description:
              'Dive into country and territory specific data, including our food systems diagnostics.',
          imagePath: 'assets/images/country-profile.png',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailScreen(title: 'Country & Territory Data'),
              ),
            );
          },
        ),
        const SizedBox(height: 20),
        _buildSectionCard(
          context,
          title: 'Policies and Actions',
          description:
              'Explore evidence-based interventions that can help improve outcomes of food systems.',
          imagePath: 'assets/images/policies-and-actions.png',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailScreen(title: 'Policies and Actions'),
              ),
            );
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  // Function for About Section
  Widget buildAboutSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About the Food Systems Dashboard',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          'The Food Systems Dashboard gives a complete view of food systems by bringing together data from multiple sources. It\'s now possible to compare drivers, components, and outcomes of food systems across countries and regions, gain insights into challenges, and identify actions to improve nutrition, health, and environmental outcomes.',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(title: 'More About the Dashboard'),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent.shade700,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: const Text(
              'More About the Food Systems Dashboard',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  // Function for Country Dashboard Section
  Widget buildCountryDashboardSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Country Dashboards',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _buildCountryList(context),
        const SizedBox(height: 20),
      ],
    );
  }

  // Function for Footer Section
  Widget buildFooter() {
    return const Center(
      child: Text(
        'Questions or comments? Email us at info@foodsystemsdashboard.org',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.blue),
      ),
    );
  }

  // Helper for individual section card
  Widget _buildSectionCard(
  BuildContext context, {
  required String title,
  required String description,
  required String imagePath,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Card(
      elevation: 8,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          // Background Image with Rounded Edges
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imagePath,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Gradient Overlay
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.5), Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          // Text Content
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          // Icon Overlay (Optional)
          Positioned(
            bottom: 75,
            right: 15,
            child: CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.8),
              child: const Icon(Icons.arrow_forward, color: Colors.black),
            ),
          ),
        ],
      ),
    ),
  );
}


  // Helper for Country List
  Widget _buildCountryList(BuildContext context) {
    final countries = [
      'Bangladesh',
      'India (coming soon)',
      'Indonesia',
      'Kenya',
      'Mozambique',
      'Nigeria',
      'Pakistan',
      'Rwanda (coming soon)'
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: countries.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          margin: const EdgeInsets.symmetric(vertical: 5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            title: Text(countries[index]),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailScreen(title: 'Dashboard for ${countries[index]}'),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
