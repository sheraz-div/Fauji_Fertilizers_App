import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/BottomNavigation/BottomNavigation.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Simulate loading data for 10 seconds and then navigate to the next screen
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavigation()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/images/grassimg.jpg', // Background image path
            fit: BoxFit.cover,
          ),
          // Center content: Logo and text
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Circular logo
              ClipOval(
                child: Image.asset(
                  'assets/images/ffclogo.png', // Replace with your logo path
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                 
                ),
              ),
              const SizedBox(height: 16),
              // App name or description
              const Text(
                'PAKISTAN FAUJIFERTILIZERS LTD',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Ministry of National Agriculture & Research',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Circular loading indicator
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
