import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class StatusPdfScreen extends StatefulWidget {
  final String title;
  final String filePath;

  const StatusPdfScreen({required this.title, required this.filePath, super.key});

  @override
  State<StatusPdfScreen> createState() => _StatusPdfScreenState();
}

class _StatusPdfScreenState extends State<StatusPdfScreen> {
  int totalPages = 0;
  int currentPage = 0;
  PDFViewController? pdfController;
  String? localPath;

  @override
  void initState() {
    super.initState();
    _loadPdfFromAssets(widget.filePath).then((path) {
      setState(() {
        localPath = path;
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
    if (localPath == null) return;
    final filePath = localPath!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("PDF downloaded to: $filePath")),
    );
    print("PDF downloaded to: $filePath");
  }

  void _goToNextPage() {
    if (currentPage < totalPages - 1) {
      pdfController?.setPage(currentPage + 1);
    }
  }

  void _goToPreviousPage() {
    if (currentPage > 0) {
      pdfController?.setPage(currentPage - 1);
    }
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
                  swipeHorizontal: false,
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
                // Navigation controls
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.navigate_before),
                        onPressed: _goToPreviousPage,
                        color: Colors.black,
                      ),
                      IconButton(
                        icon: const Icon(Icons.navigate_next),
                        onPressed: _goToNextPage,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
