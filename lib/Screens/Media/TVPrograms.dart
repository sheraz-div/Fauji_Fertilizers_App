import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/Media/VedioPlayingScreen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TvProgramsScreen extends StatelessWidget {
  final List<Map<String, String>> programs = [
    {
      "title": "Riyast Aur Awam with Chairman PARC, Dr. Ghulam Muhammad Ali",
      "url": "https://www.youtube.com/watch?v=n51RQe-J6S8",
    },
    {
      "title": "Subha E Pakistan Morning Show Guest Dr. Ghulam M Ali Chairman PARC",
      "url": "https://www.youtube.com/watch?v=DLmQ6HxVSts",
    },
    {
      "title": "PTV Program Sochna Hoga with Chairman PARC, Dr. Ghulam Muhammad Ali",
      "url": "https://www.youtube.com/watch?v=wPC142wyX_4",
    },
    {
      "title": "PTV Program 45 Mint with Naheed Chaudhry Guest Dr. Ghulam Muhammad Ali, Chairman PARC",
      "url": "https://www.youtube.com/watch?v=zBB0ySYa6mA",
    },
    {
      "title": "PTV Program Sochna Hoga with Dr. Sajjad Bhakari Guest Dr. Ghulam Muhammad Ali, Chairman PARC",
      "url": "https://www.youtube.com/watch?v=wPC142wyX_4&t=68s",
    },
    {
      "title": "NARC G1 Garlic Elephant Garlic Cultivation Farming at NARC",
      "url": "https://www.youtube.com/watch?v=dbeVkccxTZo",
    },
    {
      "title": "Geo News Report on Aeroponics System",
      "url": "https://www.youtube.com/watch?v=6vn169XOgJI",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TV Programs"),
        backgroundColor: Colors.green,
      ),
      body: _buildBody(),
    );
  }

  // Build the body with program list
  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: programs.length,
        itemBuilder: (context, index) {
          final program = programs[index];
          return _buildProgramCard(context, program);
        },
      ),
    );
  }

  // Build program card with clickable title
  Widget _buildProgramCard(BuildContext context, Map<String, String> program) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(Icons.video_library, color: Colors.blueAccent),
        title: Text(
          program["title"]!,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          _playVideo(context, program["url"]!);
        },
      ),
    );
  }

  // Play the YouTube video in app
  void _playVideo(BuildContext context, String url) {
    final videoId = YoutubePlayer.convertUrlToId(url);
    if (videoId != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VideoPlayerScreen(videoId: videoId),
        ),
      );
    }
  }
}

