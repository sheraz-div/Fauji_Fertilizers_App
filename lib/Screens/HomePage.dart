import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foujifertilizer/Screens/AboutUs/Functions.dart';
import 'package:foujifertilizer/Screens/AboutUs/Governance.dart';
import 'package:foujifertilizer/Screens/AboutUs/Introduction.dart';
import 'package:foujifertilizer/Screens/AboutUs/OrganizationalChart.dart';
import 'package:foujifertilizer/Screens/AboutUs/OrganizationalHistory/OrganizationalHistory.dart';
import 'package:foujifertilizer/Screens/AboutUs/Statuses.dart';
import 'package:foujifertilizer/Screens/AboutUs/TheChairman.dart';
import 'package:foujifertilizer/Screens/AboutUs/ececutiveComittee.dart';
import 'package:foujifertilizer/Screens/Divisions/AgriculturalEngineeringDivisionScreen.dart';
import 'package:foujifertilizer/Screens/Divisions/AnimalScienceDivision.dart';
import 'package:foujifertilizer/Screens/Divisions/CoordinationAndMonitoringDivisionScreen.dart';
import 'package:foujifertilizer/Screens/Divisions/FinanceDivisionScreen.dart';
import 'package:foujifertilizer/Screens/Divisions/NaturalScienceDivision.dart';
import 'package:foujifertilizer/Screens/Divisions/PlanningAndDevelopmentDivisionScreen.dart';
import 'package:foujifertilizer/Screens/Divisions/PlantScienceDivision.dart';
import 'package:foujifertilizer/Screens/Divisions/SocialScienceDivision.dart';
import 'package:foujifertilizer/Screens/HomeNavigations/ALP.dart';
import 'package:foujifertilizer/Screens/HomeNavigations/FoodSystenDashboard/FoodSystemDashboard.dart';
import 'package:foujifertilizer/Screens/HomeNavigations/KisanCorner/Investments.dart';
import 'package:foujifertilizer/Screens/HomeNavigations/PJAR/Pjar.dart';
import 'package:foujifertilizer/Screens/HomeNavigations/Paisa/Paisa.dart';
import 'package:foujifertilizer/Screens/HomeNavigations/Patco.dart';
import 'package:foujifertilizer/Screens/Media/AnnualReports.dart';
import 'package:foujifertilizer/Screens/Media/NewsLeters.dart';
import 'package:foujifertilizer/Screens/Media/PressClipping.dart';
import 'package:foujifertilizer/Screens/Media/SocialMedia.dart';
import 'package:foujifertilizer/Screens/Media/TVPrograms.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final List<String> _items = [
  //   'ALP',
  //   'PAISA',
  //   'KISAN CORNER',
  //   'PJAR',
  //   'PATCO',
  //   'FOOD SYSTEM DASHBOARD',
  // ];
  // List<String> _filteredItems = [];
  // String _searchText = "";

  final List<String> _images = [
    'assets/images/Fruits-banner-1.jpg',
    'assets/images/windfarms.jpg',
    'assets/images/architecture-banner.jpg',
  ];

  @override
  void initState() {
    super.initState();
    // _filteredItems = _items; // Initialize with all items
  }

  // void _filterItems(String query) {
  //   setState(() {
  //     _searchText = query.toLowerCase();
  //     _filteredItems = _items
  //         .where((item) => item.toLowerCase().contains(_searchText))
  //         .toList();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      drawer: _buildDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildSearchBar(),
            _buildImageSlider(),
            const SizedBox(height: 20),
            _buildGridButtons(),
            // _buildHeader(),
            // _buildSearchBar(),
            // const SizedBox(height: 10),
            // _filteredItems.isNotEmpty
            //     ? _buildFilteredList()
            //     : _buildImageSlider(),
            // const SizedBox(height: 20),
            // _buildGridButtons(),
          ],
        ),
      ),
    );
  }

Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: TextField(
        // onChanged: _filterItems,
        decoration: InputDecoration(
          hintText: 'Search for sections...',
          filled: true,
          fillColor: Colors.grey[200],
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          prefixIcon: const Icon(Icons.search, color: Colors.green),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  // Widget _buildFilteredList() {
  //   return ListView.builder(
  //     shrinkWrap: true,
  //     physics: const NeverScrollableScrollPhysics(),
  //     itemCount: _filteredItems.length,
  //     itemBuilder: (context, index) {
  //       return Card(
  //         margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //         elevation: 2,
  //         child: ListTile(
  //           title: Text(
  //             _filteredItems[index],
  //             style: const TextStyle(fontSize: 16),
  //           ),
  //           leading: const Icon(Icons.search, color: Colors.green),
  //         ),
  //       );
  //     },
  //   );
  // }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Center(
              child: ClipOval(
                
              ),
            ),
          ),
          _buildExpansionTile('About Us', Icons.info, Colors.green, [
            _buildListTile('Introduction', () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const IntroductionScreen()));
            }),
            _buildListTile('Governance', () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const GovernanceScreen()));
            }),
            _buildListTile('Executive Commitee', () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ExecutiveCommitteeScreen()));
            }),
            _buildListTile('The Chairman', () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ChairmanScreen()));
            }),
            _buildListTile('Functions', () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const FunctionsScreen()));
            }),
            _buildListTile('Organizitional Chart', () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const OrganizationalChartScreen()));
            }),
            _buildListTile('Organizational History', () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const OrganizationHistoryScreen()));
            }),
            _buildListTile('Statuses', () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const StatutesScreen()));
            }),
          ]),
          _buildExpansionTile('Divisions', Icons.diversity_1, Colors.green, [
            _buildListTile('Animal Science Division', () {
               Navigator.push(
                context, MaterialPageRoute(builder: (context) => const AnimalScienceDivisonScreen()));
            }),
            _buildListTile('Plant Science Division', () {
               Navigator.push(
                context, MaterialPageRoute(builder: (context) => const PlantScienceDivisionScreen()));
            }),
            _buildListTile('Natural Resource Division', () {
               Navigator.push(
                context, MaterialPageRoute(builder: (context) => const NaturalResourcesDivisionScreen()));
            }),
            _buildListTile('Social Science Division', () {
               Navigator.push(
                context, MaterialPageRoute(builder: (context) => const SocialSciencesDivisionScreen()));
            }),
            _buildListTile('Finance Division', () {
               Navigator.push(
                context, MaterialPageRoute(builder: (context) => const FinanceDivisionScreen()));
            }),
            _buildListTile('Agriculture Engineering Division', () {
               Navigator.push(
                context, MaterialPageRoute(builder: (context) => const AgriculturalEngineeringDivisionScreen()));
            }),
            _buildListTile('Planning and Development Division', () {
               Navigator.push(
                context, MaterialPageRoute(builder: (context) => const PlanningAndDevelopmentDivisionScreen()));
            }),
            _buildListTile('Coordination and Monitoring Division', () {
               Navigator.push(
                context, MaterialPageRoute(builder: (context) => const CoordinationAndMonitoringDivisionScreen()));
            }),
          ]),
          _buildExpansionTile('Media', Icons.perm_media, Colors.green, [
            _buildListTile('Press Clipping', () {
               Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  PressClippingScreen()));
            }),
            _buildListTile('Annual Reports', () {
               Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  AnnualReportScreen()));
            }),
            _buildListTile('TV Programs', () {
               Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  TvProgramsScreen()));
            }),
            _buildListTile('News letter', () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  NewsLetterScreen()));

            }),
            _buildListTile('Social Media', () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  SocialMediaScreen()));
            }),
          ]),
const Divider(),
        ListTile(
          
          leading: const Icon(Icons.logout, color: Colors.red),
          title: const Text(
            'Logout',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            // Handle logout functionality here
            print('User logged out');
          },
        ),
          //   _buildExpansionTile('Research Establishment', Icons.book, Colors.green, [
          //   _buildListTile('Exams', () {}),
          //   _buildListTile('Competitions', () {}),
          //   _buildListTile('Others', () {}),
          // ]),
          // _buildExpansionTile('Public Notes', Icons.note, Colors.green, [
          //   _buildListTile('Technical Training', () {}),
          //   _buildListTile('Soft Skills Training', () {}),
          //   _buildListTile('Workshops', () {}),
          // ]),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/FFC-logo.png',
            height: 90,
            width: 90,
            color: const Color.fromARGB(255, 44, 170, 6),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'PAKISTAN FAUJI FERTILIZERS LTD',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Ministry of Agriculture & Research',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildSearchBar() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
  //     child: TextField(
  //       decoration: InputDecoration(
  //         contentPadding:
  //             const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
  //         hintText: 'Search...',
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(30),
  //         ),
  //         prefixIcon: const Icon(Icons.search),
  //       ),
  //     ),
  //   );
  // }

  Widget _buildImageSlider() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200.0,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          enlargeCenterPage: true,
          viewportFraction: 0.8,
        ),
        items: _images.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(color: Colors.white),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget _buildGridButtons() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.2,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _buildGridButton('OUR INVESTMENTS', Icons.business, Colors.blue, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  Investments()));
          }),
          _buildGridButton('PAISA', Icons.money, Colors.green, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Paisa()));
          }),
          _buildGridButton('KISAN CORNER', Icons.announcement, Colors.orange, () {
           
          }),
          _buildGridButton('PJAR', FontAwesomeIcons.dice, Colors.purple, () {
             Navigator.push(
                context, MaterialPageRoute(builder: (context) => const PjarScreen()));
          }),
          _buildGridButton('PATCO', Icons.device_unknown, Colors.red, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  PatcoScreen()));
          }),
          _buildGridButton('FOOD SYSTEM DASHBOARD', Icons.dashboard, Colors.teal,
              () {
                Navigator.push(
                context, MaterialPageRoute(builder: (context) => const FoodSystemsDashboardScreen()));
              }),
        ],
      ),
    );
  }

  Widget _buildExpansionTile(
      String title, IconData icon, Color color, List<Widget> children) {
    return ExpansionTile(
      leading: Icon(icon, color: color),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.arrow_drop_down, color: color),
      childrenPadding: const EdgeInsets.all(8.0),
      children: children,
      tilePadding: const EdgeInsets.symmetric(horizontal: 16),
      backgroundColor: Colors.green.withOpacity(0.1),
    );
  }

  Widget _buildListTile(String title, VoidCallback onTap) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 5, // Add shadow for clickable effect
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.greenAccent.withOpacity(0.5),
        highlightColor: Colors.green.withOpacity(0.2),
        child: ListTile(
          contentPadding: const EdgeInsets.all(12),
          leading: const Icon(Icons.arrow_forward, color: Colors.green), // Arrow to show it's clickable
          title: Text(title, style: const TextStyle(fontSize: 16)),
        ),
      ),
    );
  }

  Widget _buildGridButton(
      String title, IconData icon, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}















// import 'package:flutter/material.dart';
// import 'dart:async';
// import "package:font_awesome_flutter/font_awesome_flutter.dart";
// import 'package:foujifertilizer/Screens/HomeNavigations/KisanCorner/KisanCorner.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final List<String> _images = [
//     'assets/images/chairman.png',
//     'assets/images/second.png',
//     'assets/images/third.png',
//   ];

//   int _currentImageIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     // Timer to change the image every 5 seconds
//     Timer.periodic(const Duration(seconds: 5), (Timer timer) {
//       setState(() {
//         _currentImageIndex = (_currentImageIndex + 1) % _images.length;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home Page"),
//       ),
// drawer: Drawer(
//   child: ListView(
//     padding: EdgeInsets.zero,
//     children: [
//       DrawerHeader(
//         decoration: BoxDecoration(
//           color: Colors.green,
//         ),
//        child: Center(
//     child: ClipOval(
//       child: Image.asset(
//         'assets/images/logo.png', 
//         width: 100,  
//         height: 100, 
//         fit: BoxFit.cover, 
//       ),
//     ),
//   ),
//       ),
//       // Jobs with sub-options
//       ExpansionTile(
//         leading: Icon(Icons.info,color: Colors.green),
//         title: Text('About Us'), 
//         children: [
//           ListTile(
//             title: Text('Government Jobs'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const GovernmentJobsScreen()),
//               // );
//             },
//           ),
//           ListTile(
//             title: Text('Private Jobs'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const PrivateJobsScreen()),
//               // );
//             },
//           ),
//           ListTile(
//             title: Text('Part-Time Jobs'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const PartTimeJobsScreen()),
//               // );
//             },
//           ),
//         ],
//       ),
//       // Online Job Portals with sub-options
//       ExpansionTile(
//         leading: Icon(Icons.diversity_1,color: Colors.green),
//         title: Text('Divisions'),
//         children: [
//           ListTile(
//             title: Text('LinkedIn'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const LinkedInScreen()),
//               // );
//             },
//           ),
//           ListTile(
//             title: Text('Indeed'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const IndeedScreen()),
//               // );
//             },
//           ),
//           ListTile(
//             title: Text('Fiverr'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const FiverrScreen()),
//               // );
//             },
//           ),
//         ],
//       ),
//       // Online Results
//       ExpansionTile(
//         leading: Icon(Icons.book,color: Colors.green),
//         title: Text('Research Establishment'),
//         children: [
//           ListTile(
//             title: Text('Exams'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const ExamsResultsScreen()),
//               // );
//             },
//           ),
//           ListTile(
//             title: Text('Competitions'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const CompetitionsResultsScreen()),
//               // );
//             },
//           ),
//           ListTile(
//             title: Text('Others'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const OtherResultsScreen()),
//               // );
//             },
//           ),
//         ],
//       ),

//       // Training/Workshop with sub-options
//       ExpansionTile(
//         leading: Icon(Icons.perm_media,color: Colors.green),
//         title: Text('Media'),
//         children: [
//           ListTile(
//             title: Text('Technical Training'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const TechnicalTrainingScreen()),
//               // );
//             },
//           ),
//           ListTile(
//             title: Text('Soft Skills Training'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const SoftSkillsTrainingScreen()),
//               // );
//             },
//           ),
//           ListTile(
//             title: Text('Workshops'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const WorkshopsScreen()),
//               // );
//             },
//           ),
//         ],
//       ),
//             // Training/Workshop with sub-options
//       ExpansionTile(
//         leading: Icon(Icons.note,color: Colors.green),
//         title: Text('Public Notes'),
//         children: [
//           ListTile(
//             title: Text('Technical Training'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const TechnicalTrainingScreen()),
//               // );
//             },
//           ),
//           ListTile(
//             title: Text('Soft Skills Training'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const SoftSkillsTrainingScreen()),
//               // );
//             },
//           ),
//           ListTile(
//             title: Text('Workshops'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const WorkshopsScreen()),
//               // );
//             },
//           ),
//         ],
//       ),
//     ],
//   ),
// ),
//       body: SingleChildScrollView(
// child: Column(
//   children: [
//     Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Logo image
//           Image.asset(
//             'assets/images/logo.png', // Replace with your logo image path
//             height: 50, // Adjust as needed
//             width: 50,
//           ),
//           const SizedBox(width: 16), // Space between logo and text
//           // Text lines
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text(
//                   'PAKISTAN AGRICULTURAL RESEARCH COUNCIL', // Line 1
//                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
//                 ),
//                 Text(
//                   'Ministry of National Food & Research', // Line 2
//                   style: TextStyle(fontSize: 12, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//     // Search bar displayed separately below
//     Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: TextField(
//         decoration: InputDecoration(
//           contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//           hintText: 'Search...',
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),
//           prefixIcon: const Icon(Icons.search),
//         ),
//       ),
//     ),
//     const SizedBox(height: 20),
//             // Image slider
//             SizedBox(
//               height: 200,
//               child: Image.asset(
//                 _images[_currentImageIndex],
//                 fit: BoxFit.cover,
//                 width: double.infinity,
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Grid buttons
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: GridView.count(
//                 shrinkWrap: true,
//                 crossAxisCount: 2, // Number of columns
//                 crossAxisSpacing: 10, // Space between columns
//                 mainAxisSpacing: 10, // Space between rows
//                 childAspectRatio: 1.2, // Adjusted ratio (higher value = wider, lower = taller)
//                 physics: const NeverScrollableScrollPhysics(),
//                 children: [
//                   _buildGridButton('ALP', Icons.work, Colors.blue, () {
//                     // Navigator.push(
//                     //     context, MaterialPageRoute(builder: (context) => const ALPScreen()));
//                   }),
//                   _buildGridButton('PAISA', Icons.money, Colors.green, () {
//                     // Navigator.push(
//                     //     context, MaterialPageRoute(builder: (context) => const PAISAScreen()));
//                   }),
//                   _buildGridButton('KISAN CORNER', Icons.announcement, Colors.orange, () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => const KisanCorner()));
//                   }),
//                   _buildGridButton('PJAR', FontAwesomeIcons.dice, Colors.purple, () {
//                     // Navigator.push(
//                     //     context, MaterialPageRoute(builder: (context) => const PJARScreen()));
//                   }),
//                   _buildGridButton('PATCO', Icons.device_unknown, Colors.red, () {
//                     // Navigator.push(
//                     //     context, MaterialPageRoute(builder: (context) => const PATCOScreen()));
//                   }),
//                   _buildGridButton('FOOD SYSTEM DASHBOARD', Icons.dashboard, Colors.teal, () {
//                     // Navigator.push(context,
//                     //     MaterialPageRoute(builder: (context) => const FoodSystemDashboardScreen()));
//                   }),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method to create a grid button
//  Widget _buildGridButton(String title, IconData icon, Color color, VoidCallback onPressed) {
//   return ElevatedButton(
//     onPressed: onPressed, // Custom handler for each button
//     style: ElevatedButton.styleFrom(
//       backgroundColor: color,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8), // Reduced padding
//     ),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(icon, size: 40, color: Colors.white), // Reduced icon size
//         const SizedBox(height: 6), // Reduced spacing between icon and text
//         Text(
//           title,
//           style: const TextStyle(fontSize: 20, color: Colors.white), // Smaller text size
//           textAlign: TextAlign.center,
//         ),
//       ],
//     ),
//   );
// }
// }

// // // Dummy screens for navigation
// // class ALPScreen extends StatelessWidget {
// //   const ALPScreen({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text("ALP Screen")),
// //       body: const Center(child: Text("This is the ALP Screen")),
// //     );
// //   }
// // }

// // class PAISAScreen extends StatelessWidget {
// //   const PAISAScreen({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text("PAISA Screen")),
// //       body: const Center(child: Text("This is the PAISA Screen")),
// //     );
// //   }
// // }

// // class KisanCornerScreen extends StatelessWidget {
// //   const KisanCornerScreen({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text("Kisan Corner Screen")),
// //       body: const Center(child: Text("This is the Kisan Corner Screen")),
// //     );
// //   }
// // }

// // class PJARScreen extends StatelessWidget {
// //   const PJARScreen({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text("PJAR Screen")),
// //       body: const Center(child: Text("This is the PJAR Screen")),
// //     );
// //   }
// // }

// // class PATCOScreen extends StatelessWidget {
// //   const PATCOScreen({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text("PATCO Screen")),
// //       body: const Center(child: Text("This is the PATCO Screen")),
// //     );
// //   }
// // }

// // class FoodSystemDashboardScreen extends StatelessWidget {
// //   const FoodSystemDashboardScreen({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text("Food System Dashboard")),
// //       body: const Center(child: Text("This is the Food System Dashboard Screen")),
// //     );
// //   }
// // }
