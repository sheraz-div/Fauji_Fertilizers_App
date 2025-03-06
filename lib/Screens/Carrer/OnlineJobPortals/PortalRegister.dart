import 'package:flutter/material.dart';

class PortalRegisterScreen extends StatefulWidget {
  const PortalRegisterScreen({super.key});

  @override
  State<PortalRegisterScreen> createState() => _PortalRegisterScreenState();
}

class _PortalRegisterScreenState extends State<PortalRegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _fatherNameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _cnicController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PARC Registration"),
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
            _buildRegistrationForm(),
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
      child: const Text(
        "Please enter the following information. Once saved, this information cannot be changed.",
        style: TextStyle(fontSize: 14, color: Colors.red),
      ),
    );
  }

  Widget _buildRegistrationForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Enter your information carefully.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent,
            ),
          ),
          const SizedBox(height: 20),
          _buildTextField("Name", _nameController, "Enter your name"),
          const SizedBox(height: 20),
          _buildTextField("Father's Name", _fatherNameController, "Enter your father's name"),
          const SizedBox(height: 20),
          _buildTextField("DOB", _dobController, "Enter your date of birth (mm/dd/yyyy)", isDate: true),
          const SizedBox(height: 20),
          _buildTextField("CNIC", _cnicController, "Enter your CNIC (without dashes)", keyboardType: TextInputType.number),
          const SizedBox(height: 20),
          _buildTextField("Password", _passwordController, "Enter your password", obscureText: true),
          const SizedBox(height: 20),
          _buildTextField("Email", _emailController, "Enter your email", keyboardType: TextInputType.emailAddress),
          const SizedBox(height: 20),
          _buildTextField("Contact No.", _contactNoController, "Enter your contact number (03*********)", keyboardType: TextInputType.phone),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Perform registration action (e.g., save data or navigate)
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Registration Successful')),
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
              child: const Text("Register", style: TextStyle(fontSize: 16)),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigate to login screen
                  Navigator.pop(context); // Go back to login screen
                },
                child: const Text(
                  "Already Registered? Login!",
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(
      String label, TextEditingController controller, String hintText,
      {bool obscureText = false, bool isDate = false, TextInputType keyboardType = TextInputType.text}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: _getPrefixIcon(label),
      ),
      obscureText: obscureText,
      keyboardType: isDate
          ? TextInputType.datetime
          : keyboardType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $label';
        }
        if (label == "CNIC" && (value.length != 13 || !RegExp(r'^[0-9]+$').hasMatch(value))) {
          return 'Please enter a valid 13-digit CNIC';
        }
        if (label == "Contact No." && !RegExp(r'^(03\d{9})$').hasMatch(value)) {
          return 'Please enter a valid contact number';
        }
        if (label == "Email" && !RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$').hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        if (label == "DOB" && !RegExp(r'^\d{2}/\d{2}/\d{4}$').hasMatch(value)) {
          return 'Please enter the date in mm/dd/yyyy format';
        }
        return null;
      },
    );
  }

  Widget _getPrefixIcon(String label) {
    if (label == "CNIC") {
      return const Icon(Icons.credit_card, color: Colors.green);
    }
    if (label == "Password") {
      return const Icon(Icons.lock, color: Colors.green);
    }
    if (label == "Email") {
      return const Icon(Icons.email, color: Colors.green);
    }
    if (label == "Contact No.") {
      return const Icon(Icons.phone, color: Colors.green);
    }
    return const Icon(Icons.person, color: Colors.green); // Default
  }
}
