import 'package:flutter/material.dart';

class FunctionsScreen extends StatelessWidget {
  const FunctionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Statutory Functions"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Introduction Text
              const Text(
                "The statutory functions of the Pakistan Agricultural Research Council (PARC) are vital for the development of agriculture in Pakistan. These functions focus on research, knowledge dissemination, and training.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              // Statutory Functions Title
              _buildSectionTitle("Statutory Functions"),

              // List of Statutory Functions
              _buildFunctionList(context, [
                _FunctionInfo("Undertake, aid, promote and coordinate agricultural research."),
                _FunctionInfo("Expedite utilization of research results."),
                _FunctionInfo("Establish research institutions."),
                _FunctionInfo("Train high level scientific manpower."),
                _FunctionInfo("Generate, acquire and disseminate agricultural information."),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }

  Widget _buildFunctionList(BuildContext context, List<_FunctionInfo> functions) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: functions.map((function) {
        return _buildFunctionTile(function);
      }).toList(),
    );
  }

  Widget _buildFunctionTile(_FunctionInfo function) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 6,
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        title: Text(
          function.function,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          "This function is crucial for the advancement of agricultural research and development.",
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ),
    );
  }
}

class _FunctionInfo {
  final String function;

  _FunctionInfo(this.function);
}
