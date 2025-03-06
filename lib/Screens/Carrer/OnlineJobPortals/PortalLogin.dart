import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/Carrer/OnlineJobPortals/PortalForgot.dart';
import 'package:foujifertilizer/Screens/Carrer/OnlineJobPortals/PortalRegister.dart';

class PortalLoginScreen extends StatefulWidget {
  const PortalLoginScreen({super.key});

  @override
  State<PortalLoginScreen> createState() => _PortalLoginScreenState();
}

class _PortalLoginScreenState extends State<PortalLoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _cnicController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PARC Login"),
        backgroundColor: Colors.greenAccent.shade700,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildLogoSection(),
            const SizedBox(height: 20),
            _buildInfoSection(),
            const SizedBox(height: 20),
            _buildLoginForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoSection() {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo.png', // Replace with your logo's path
          height: 80,
          width: 80,
        ),
        const SizedBox(height: 10),
        const Text(
          "PARC",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.greenAccent),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _InfoBullet(
            text: "For queries, please call on 051-90762280 / 051-90762220 / 051-90762224 "
                "from Monday to Friday during 09:00 am to 03:00 pm or email at HRPIS@PARC.GOV.PK.",
          ),
          _InfoBullet(
            text: "The last date for applying on the posts advertised by the Council is 23-10-2024 "
                "(Wednesday) for BARDC-Quetta and 24-10-2024 (Thursday) for SARC-Karachi.",
          ),
          _InfoBullet(
            text: "The candidates are advised to apply using Laptops or Desktop Computers for better experience.",
          ),
        ],
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Login to Your Account",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent,
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _cnicController,
            decoration: InputDecoration(
              labelText: "CNIC",
              hintText: "Enter your CNIC",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: const Icon(Icons.credit_card, color: Colors.green),
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your CNIC';
              }
              if (value.length != 13 || !RegExp(r'^[0-9]+$').hasMatch(value)) {
                return 'Please enter a valid 13-digit CNIC';
               }
              return null;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: const Icon(Icons.lock, color: Colors.green),
            ),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
               onPressed: () {
                if (_formKey.currentState!.validate()) {
                 ScaffoldMessenger.of(context).showSnackBar(
                 const SnackBar(content: Text('Logging in...')),
                );
                  // Navigate to the next screen (replace current screen)
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => NextScreen()), // Replace NextScreen() with the screen you want to navigate to
                  // );
               }
              },
               style: ElevatedButton.styleFrom(
               padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
               backgroundColor: Colors.greenAccent.shade700,
               shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20),
             ),
            ),
             child: const Text("Login", style: TextStyle(fontSize: 16)),
             ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PortalRegisterScreen()),
                  );
                },
                child: const Text(
                  "New User? Register Here !",
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PortalForgotPasswordScreen()),
                  );
                },
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoBullet extends StatelessWidget {
  final String text;

  const _InfoBullet({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.circle,
            size: 8,
            color: Colors.red,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
