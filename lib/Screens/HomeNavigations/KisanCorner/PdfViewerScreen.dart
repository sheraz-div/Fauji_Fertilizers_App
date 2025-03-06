import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class PDFViewerScreen extends StatefulWidget {
  final String title;
  final String filePath;

  const PDFViewerScreen({required this.title, required this.filePath, super.key});

  @override
  State<PDFViewerScreen> createState() => _PDFViewerScreenState();
}

class _PDFViewerScreenState extends State<PDFViewerScreen> {
  int totalPages = 0;
  int currentPage = 0;
  PDFViewController? pdfController;
  String? localPath; // Made nullable to avoid LateInitializationError

  @override
  void initState() {
    super.initState();
    _loadPdfFromAssets(widget.filePath).then((path) {
      setState(() {
        localPath = path; // Initialize localPath here
      });
    });
  }

  Future<String> _loadPdfFromAssets(String assetPath) async {
    try {
      final byteData = await rootBundle.load(assetPath);
      final buffer = byteData.buffer.asUint8List();
      final file = await DefaultCacheManager().putFile(assetPath, buffer);
      return file.path;
    } catch (e) {
      throw Exception("Error loading PDF from assets: $e");
    }
  }

  void _downloadPdf() async {
    if (localPath == null) return; // Prevent action if file not ready
    final filePath = localPath!;

    // Show confirmation or success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("PDF downloaded to: $filePath")),   
    );
    print("PDF downloaded to: $filePath");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: _downloadPdf,
          ),
        ],
      ),
      body: localPath == null
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                PDFView(
                  filePath: localPath,
                  enableSwipe: true,
                  swipeHorizontal: false, // Set to false for vertical scrolling
                  autoSpacing: true,
                  pageFling: false,
                  onRender: (pages) {
                    setState(() {
                      totalPages = pages!;
                    });
                  },
                  onViewCreated: (controller) {
                    pdfController = controller;
                  },
                  onPageChanged: (page, _) {
                    setState(() {
                      currentPage = page!;
                    });
                  },
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Page ${currentPage + 1} of $totalPages",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
