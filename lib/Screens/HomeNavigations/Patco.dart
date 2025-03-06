import 'package:flutter/material.dart';

class PatcoScreen extends StatelessWidget {
  final List<Map<String, String>> patcoFunctions = [
    {
      "title": "Commercialization of Agricultural Products",
      "description":
          "PATCO markets and distributes products such as seeds, fertilizers, and other agricultural inputs developed through PARC's research.",
    },
    {
      "title": "Technology Transfer",
      "description":
          "Facilitates the transfer of innovative agricultural technologies from research labs to farmers and agribusinesses.",
    },
    {
      "title": "Consultancy Services",
      "description":
          "Offers consultancy services in various agricultural domains to guide on best practices and modern farming techniques.",
    },
    {
      "title": "Training and Capacity Building",
      "description":
          "Organizes training programs and workshops to educate farmers and stakeholders on modern technologies and improved methods.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About PATCO"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "PATCO - Agrotech Company",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "PATCO, a subsidiary of PARC, is dedicated to commercializing agricultural technologies and innovations to enhance Pakistan's agricultural sector.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Key Functions:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: patcoFunctions.length,
                itemBuilder: (context, index) {
                  final item = patcoFunctions[index];
                  return Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text(
                        item["title"]!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        item["description"]!,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
