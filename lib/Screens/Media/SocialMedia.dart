import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/Media/VedioPlayingScreen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SocialMediaScreen extends StatelessWidget {
 final List<Map<String, String>> programs = [
  {
    "title": "PARC Official (Youtube Channel) ",
    "url": "https://www.youtube.com/@OfficialPARC", // Replace with actual URL
  },
  {
    "title": "PARC Archive-I (Youtube Channel) PARC Archive-II(Youtube Channel)",
    "url": "https://www.youtube.com/@parcarchive8142", // Replace with actual URL
  },
  {
    "title": "Wheat Farming / Wheat Cultivation Guide | How to grow Wheat",
    "url": "https://www.youtube.com/watch?v=VJ88G8XP8sM", // Replace with actual URL
  },
  {
    "title": "Wheat Cultivation in Pakistan | Wheat Cultivation Process | How to grow wheat crop | Wheat Crop",
    "url": "https://www.youtube.com/watch?v=Ijl-87NIHaU", // Replace with actual URL
  },
  {
    "title": "NARC Cultivation | Wheat Cultivation Method | Wheat Farming Process | Wheat Farming Guidance",
    "url": "https://www.youtube.com/watch?v=bw8jABS-meo", // Replace with actual URL
  },
  {
    "title": "Wheat Farming in Pakistan | Wheat Farming | Wheat Cultivation",
    "url": "https://www.youtube.com/watch?v=wt31rSL-LLw", // Replace with actual URL
  },
  {
    "title": "Wheat Planted by Placement Drill | Wheat Farming in Pakistan",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Wheat Planted by Broadcasting Method | Wheat Sowing Method",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Message About Rice | Rice Farming From Seed to Harvest | Dr. Ghulam Muhammad Ali, Chairman PARC",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Ridge Planted Wheat",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Wheat Spray Guidance",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Agriculture Engineering Institute, NARC",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Fisheries and Agriculture",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Yogurt Production Process at NARC",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Soya Bean Cultivation in Pakistan",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Goat Farming",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Garlic Cultivation",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Kitchen Gardening",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Animal Feed Technology",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Feed Technology Unit",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Green Super Rice NARC",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Tomato Cultivation",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Olive Plant in Pakistan",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Types of Rice",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Goat Reproduction",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Mombasa Grass Cultivation",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Floriculture",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Oat Crops Production",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Mash Bean Production in Pakistan",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Portable Solar Irrigation System PARC Guide (Urdu) || English",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "First Fruit Germ-plasm Unit in NARC",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Screen Houses for Vegetables Crop Improvement At NARC",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
  },
  {
    "title": "Care of Dairy Animals in Winter",
    "url": "https://www.youtube.com/watch?v=a2wW8lSP_OQ", // Replace with actual URL
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

