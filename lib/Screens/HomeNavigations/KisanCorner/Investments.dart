import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/HomeNavigations/KisanCorner/PdfViewerScreen.dart';

class Investments extends StatefulWidget {
  const Investments({super.key});

  @override
  State<Investments> createState() => _InvestmentsState();
}

class _InvestmentsState extends State<Investments> {
  // A list of PDF names, their corresponding file paths, and image paths
  final List<Map<String, String>> pdfList = [
    {"title": "Fauji Fresh n Freeze (FFF)",  "image": "assets/images/fffl-thumb.jpg"},
    {"title": "FFCEL, FWEL -I & FWEL -II", "image": "assets/images/ffcel-thumb-4.jpg"},
    {"title": "Pak Maroc Phosphore (PAKMAROC)",  "image": "assets/images/pmp-thumb.jpg"},
    {"title": "Askari Bank Limited (AKBL)",  "image": "assets/images/akbl-thumb.webp"},
    {"title": "Fauji Fertilizer Bin-Qasim Ltd. (FFBL)",  "image": "assets/images/ffbl-thumb.jpg"},
    {"title": "Fauji Cement Comp. Limited (FCCL)", "image":"assets/images/fccl-thumb.jpg"}
    
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Our Investments"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: pdfList.length,
        itemBuilder: (context, index) {
          final pdf = pdfList[index];
          return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                      child: Image.asset(
                        pdf["image"]!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      pdf["title"]!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            
          );
        },
      ),
    );
  }
}

