import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/EmployeeCorner/CircularPDFView.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PressClippingScreen extends StatelessWidget {
  final List<Map<String, String>> circulars = [
    {
      "title": "All Press Clipping of National Dialogue on Agricultural Research, May 02-04, 2023",
      "filePath": "assets/PressClipping/National_Dialogue_Press_Clippings.pdf",
    },
    {
      "title": "Press Clipping of January 03, 2023",
      "filePath": "assets/PressClipping/Press_Clippings_3rd_January_2023.pdf",
    },
    {
      "title": "Press Clipping of December 2022",
      "filePath": "assets/PressClipping/Press_Clippings_19_December_2022.pdf",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  // Build AppBar
  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Press Clipping"),
      backgroundColor: Colors.green,
    );
  }

  // Build Body
  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCircularList(context),
          SizedBox(height: 20),
          _buildImageScrollSection(context),
        ],
      ),
    );
  }

  // Build Circular List
  Widget _buildCircularList(BuildContext context) {
    return circulars.isEmpty
        ? const Center(
            child: Text(
              'No circulars available.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        : Expanded(
            child: ListView.builder(
              itemCount: circulars.length,
              itemBuilder: (context, index) {
                final circular = circulars[index];
                return _buildCircularCard(context, circular);
              },
            ),
          );
  }

  // Build Circular Card
  Widget _buildCircularCard(BuildContext context, Map<String, String> circular) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(Icons.picture_as_pdf, color: Colors.redAccent),
        title: Text(
          circular["title"]!,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          _onCircularTap(context, circular);
        },
      ),
    );
  }

  // Handle Circular Tap
  void _onCircularTap(BuildContext context, Map<String, String> circular) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CircularPDFViewerScreen(
          title: circular["title"]!,
          filePath: circular["filePath"]!,
        ),
      ),
    );
  }

  // Build Image Scroll Section (Vertical and Zoomable)
  Widget _buildImageScrollSection(BuildContext context) {
    return SizedBox(
      height: 300, // Adjust the height as needed
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _buildImageItem(context, 'assets/PressClipping/1.png'),
            _buildImageItem(context, 'assets/PressClipping/2.png'),
            _buildImageItem(context, 'assets/PressClipping/3.png'),
            _buildImageItem(context, 'assets/PressClipping/4.png'),
            _buildImageItem(context, 'assets/PressClipping/5.png'),
            _buildImageItem(context, 'assets/PressClipping/6.png'),
            _buildImageItem(context, 'assets/PressClipping/7.png'),
            _buildImageItem(context, 'assets/PressClipping/8.png'),
          ],
        ),
      ),
    );
  }

  // Image item widget function (Zoomable)
  Widget _buildImageItem(BuildContext context, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            _showZoomableImage(context, imagePath);
          },
          child: Image.asset(
            imagePath,
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  // Show zoomable image
  void _showZoomableImage(BuildContext context, String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PhotoViewGallery.builder(
          itemCount: 1,
          builder: (context, index) {
            return PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(imagePath),
              minScale: PhotoViewComputedScale.contained,
              maxScale: PhotoViewComputedScale.covered * 2,
            );
          },
          scrollPhysics: BouncingScrollPhysics(),
          backgroundDecoration: BoxDecoration(color: Colors.black),
        ),
      ),
    );
  }
}
