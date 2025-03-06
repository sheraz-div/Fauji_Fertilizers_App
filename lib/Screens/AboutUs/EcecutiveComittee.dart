import 'package:flutter/material.dart';

class ExecutiveCommitteeScreen extends StatelessWidget {
  const ExecutiveCommitteeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Executive Committee"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "The Executive Committee, comprising Chairman and Members of the Council, is the principal administrative body responsible for executing all policies and discharging the functions of the Council. Matters relating to research planning, coordination, budget, and policy formulation are referred to the Board for seeking its guidance and general direction.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              _buildSectionTitle("Executive Committee Members"),
              _buildMemberList(context, [
                _MemberInfo("Chairman, Pakistan Agricultural Research Council", "Chairman", Icons.account_circle),
                _MemberInfo("Member (Agriculture Sciences)", "Member", Icons.nature),
                _MemberInfo("Member (Plant Science)", "Member", Icons.grass),
                _MemberInfo("Member (Animal Science)", "Member", Icons.pets),
                _MemberInfo("Member (Finance)", "Member", Icons.money),
                _MemberInfo("Member (Research)", "Member", Icons.school),
              ]),
              const SizedBox(height: 20),
              _buildSectionTitle("Responsibilities"),
              const Text(
                "• Execute policies of the Council\n• Manage research planning and coordination\n• Formulate and oversee budget\n• Ensure adherence to administrative processes\n• Make decisions regarding the direction and governance of agricultural research.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green.shade700, Colors.green.shade400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
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
