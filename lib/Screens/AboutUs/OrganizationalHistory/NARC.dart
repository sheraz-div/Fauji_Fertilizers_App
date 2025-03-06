import 'dart:io';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class NARCChartScreen extends StatelessWidget {
  const NARCChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Organizational Chart - NARC"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Organizational Chart - NARC (Download for good quality)",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              
              // Option to display chart as PNG with zoom functionality
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Open the image in zoomable mode on tap
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ZoomableImageScreen(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/NARC_Charrt.png',  // Replace with your actual image path
                    height: 300,
                    width: 300,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              
              // Option to download the chart in PNG format
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () async {
                  await _downloadFile(context, 'assets/images/NARC_Charrt.png');
                },
                icon: const Icon(Icons.download),
                label: const Text('Download Organizational Chart (PNG)'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _downloadFile(BuildContext context, String filePath) async {
    // Get the local directory path
    final directory = await getExternalStorageDirectory();
    final path = directory?.path;
    if (path != null) {
      final file = File('$path/NARC_Charrt.png');
      
      // Read from asset and save it locally
      final byteData = await rootBundle.load(filePath);
      final buffer = byteData.buffer.asUint8List();
      await file.writeAsBytes(buffer);

      // Show message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Downloaded successfully!')),
      );
    }
  }
}

class ZoomableImageScreen extends StatelessWidget {
  const ZoomableImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Organizational Chart'),
        backgroundColor: Colors.green,
      ),
      body: PhotoViewGallery.builder(
        itemCount: 1,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage('assets/images/NARC_Charrt.png'),  // Path to your image
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2,
          );
        },
        scrollPhysics: BouncingScrollPhysics(),
        backgroundDecoration: BoxDecoration(
          color: Colors.black,
        ),
        pageController: PageController(),
      ),
    );
  }
}
