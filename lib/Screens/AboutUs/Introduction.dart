import 'package:flutter/material.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction'),
        backgroundColor: Colors.greenAccent.shade700,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Goes back to the previous screen
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Company Logo (Optional)
              Image.asset(
                'assets/images/ffclogo.png',  // Add PARC Logo Image
                height: 120,
                fit: BoxFit.contain,color: Colors.green,

              ),
              const SizedBox(height: 20),
              
              // Introduction Text
              Text(
                'Pakistan Fauji Fertilizers Company (FFC) is the apex national organization working in close collaboration with other federal and provincial institutions in the country to provide science-based solutions to agriculture of Pakistan through its statutory functions.',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
