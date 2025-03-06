// Placeholder for PDF Viewer Screen
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class CircularPDFViewerScreen extends StatefulWidget {
  final String title;
  final String filePath;

  const CircularPDFViewerScreen({required this.title, required this.filePath, Key? key}) : super(key: key);

  @override
  State<CircularPDFViewerScreen> createState() => _CircularPDFViewerScreenState();
}

class _CircularPDFViewerScreenState extends State<CircularPDFViewerScreen> {
  int totalPages = 0;
  int currentPage = 0;
  PDFViewController? pdfController;
  String? localPath;

  @override
  void initState() {
    super.initState();
    _loadPdfFromAssets(widget.filePath);
  }

  Future<void> _loadPdfFromAssets(String assetPath) async {
    try {
      final byteData = await rootBundle.load(assetPath);
      final buffer = byteData.buffer.asUint8List();
      final file = await DefaultCacheManager().putFile(assetPath, buffer);
      setState(() {
        localPath = file.path;
      });
    } catch (e) {
      // Display an error message if the file fails to load
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to load PDF: $e")),
      );
    }
  }

  void _downloadPdf() {
    if (localPath == null) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("PDF is ready and saved at: $localPath")),
    );
    print("PDF downloaded to: $localPath");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: _downloadPdf,
          ),
        ],
      ),
      body: localPath == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                PDFView(
                  filePath: localPath,
                  enableSwipe: true,
                  swipeHorizontal: false,
                  autoSpacing: true,
                  pageFling: false,
                  onRender: (pages) {
                    setState(() {
                      totalPages = pages ?? 0;
                    });
                  },
                  onViewCreated: (controller) {
                    pdfController = controller;
                  },
                  onPageChanged: (page, _) {
                    setState(() {
                      currentPage = page ?? 0;
                    });
                  },
                ),
                if (totalPages > 0)
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
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
              ],
            ),
    );
  }
}
