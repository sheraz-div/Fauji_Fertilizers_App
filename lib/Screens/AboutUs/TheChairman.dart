import 'package:flutter/material.dart';

class ChairmanScreen extends StatelessWidget {
  const ChairmanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chairman - PARC"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Chairman's Profile Section
              _buildSectionTitle("Chairman Profile"),
              const SizedBox(height: 10),
              const Text(
                "Chairman PARC is the Chief Executive of the Council. He is responsible for the overall leadership and strategic direction of the Pakistan Agricultural Research Council (PARC).",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              // Chairman's Photo (You can replace the image with actual photo)
              Center(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/ChairmanParc.png', // Replace with real image path
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Chairman's Responsibilities Section
              _buildSectionTitle("Responsibilities of Chairman"),
              const Text(
                "• Provide leadership to the council\n• Oversee strategic initiatives\n• Make decisions regarding policies and priorities\n• Supervise activities and operations of the Council\n• Represent PARC in key forums and government meetings",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              // Key Members assisting the Chairman
              _buildSectionTitle("Assisting Members"),
              _buildMemberList(context, [
                _MemberInfo("Technical Member (Agriculture)", "Assisting the Chairman in Agricultural Research", Icons.agriculture),
                _MemberInfo("Technical Member (Plant Science)", "Assisting the Chairman in Plant Science Research", Icons.grass),
                _MemberInfo("Technical Member (Animal Science)", "Assisting the Chairman in Animal Science Research", Icons.pets),
                _MemberInfo("Technical Member (Natural Resources)", "Assisting the Chairman in Natural Resources Research", Icons.nature),
                _MemberInfo("Member (Finance)", "Responsible for Financial Management", Icons.account_balance),
                _MemberInfo("Member (Coordination)", "Responsible for Coordination of Various Departments", Icons.sync),
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

  Widget _buildMemberList(BuildContext context, List<_MemberInfo> members) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: members.map((member) {
        return _buildMemberTile(context, member);
      }).toList(),
    );
  }

  Widget _buildMemberTile(BuildContext context, _MemberInfo member) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${member.name} tapped')),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 6,
        child: ListTile(
          contentPadding: const EdgeInsets.all(12),
          leading: Icon(
            member.icon,
            size: 40,
            color: Colors.green.shade700,
          ),
          title: Text(
            member.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(member.position),
        ),
      ),
    );
  }
}

class _MemberInfo {
  final String name;
  final String position;
  final IconData icon;

  _MemberInfo(this.name, this.position, this.icon);
}
