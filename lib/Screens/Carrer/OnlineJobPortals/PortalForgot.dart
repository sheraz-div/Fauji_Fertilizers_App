import 'package:flutter/material.dart';

class PortalForgotPasswordScreen extends StatefulWidget {
  const PortalForgotPasswordScreen({super.key});

  @override
  State<PortalForgotPasswordScreen> createState() =>
      _PortalForgotPasswordScreenState();
}

class _PortalForgotPasswordScreenState
    extends State<PortalForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _cnicController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
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
            _buildForgotPasswordForm(),
          ],
        ),
      ),
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
      child: const Text(
        "Please enter your registered CNIC and Email.",
        style: TextStyle(fontSize: 14, color: Colors.red),
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

  Widget _buildForgotPasswordForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Forgot Password?",
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
            controller: _emailController,
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: const Icon(Icons.email, color: Colors.green),
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your Email';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _phoneController,
            decoration: InputDecoration(
              labelText: "Phone",
              hintText: "Enter your Phone number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: const Icon(Icons.phone, color: Colors.green),
            ),
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your Phone number';
              }
              if (value.length != 11 || !RegExp(r'^[0-9]+$').hasMatch(value)) {
                return 'Please enter a valid Phone number (11 digits)';
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
                    const SnackBar(content: Text('Resetting password...')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                backgroundColor: Colors.greenAccent.shade700,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text("Reset Password", style: TextStyle(fontSize: 16)),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigate back to the Login screen
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back to Login",
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
