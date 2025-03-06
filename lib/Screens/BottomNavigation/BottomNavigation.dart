import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/Carrer/Career.dart';
import 'package:foujifertilizer/Screens/ContactUs/ContactUs.dart';
import 'package:foujifertilizer/Screens/EmployeeCorner/CircularScreen.dart';
import 'package:foujifertilizer/Screens/HomePage.dart';

// A simple bottom navigation with Home, Contact Us, About Us, and Profile screens.

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  // List of pages/screens for the bottom navigation.
  final List<Widget> _pages = [
    const HomeScreen(),
    CareerScreen(),
    CircularsScreen(),
    const ContactUsScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.tealAccent,
        selectedItemColor: const Color.fromARGB(255, 1, 129, 18),
        unselectedItemColor: const Color.fromARGB(255, 20, 206, 14),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Carrier',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Employee Corner',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact Us',
          ),
        ],
      ),
    );
  }
}

