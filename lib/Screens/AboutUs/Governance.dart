import 'package:flutter/material.dart';

class GovernanceScreen extends StatelessWidget {
  const GovernanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Governance"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "The overall decision-making body of PARC is its Board of Governors (BOG), responsible for the control, direction, and superintendence of the affairs of PARC. The Board is assisted in its operation by a number of Committees. The Federal Minister for National Food Security & Research is the President of the Board.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              _buildSectionTitle("Official Members"),
              _buildMemberList(context, [
                _MemberInfo("Federal Minister for National Food Security & Research", "President", Icons.account_balance),
                _MemberInfo("Secretary, Ministry of National Food Security & Research", "Member", Icons.security),
                _MemberInfo("Chairman, Pakistan Agricultural Research Council", "Member", Icons.account_circle),
                _MemberInfo("Secretary, Ministry of Finance, GoP or Representative", "Member", Icons.money),
                _MemberInfo("Member (Food Security & Climate Change), Planning Commission, GoP", "Member", Icons.eco),
              ]),
              const SizedBox(height: 20),
              _buildSectionTitle("Whole Time Members of PARC"),
              _buildMemberList(context, [
                _MemberInfo("Member (Plant Sciences)", "Member", Icons.nature),
                _MemberInfo("Member (Natural Resources)", "Member", Icons.terrain),
                _MemberInfo("Member (Animal Sciences)", "Member", Icons.pets),
                _MemberInfo("Member (Social Sciences)", "Member", Icons.people),
                _MemberInfo("Member (Finance)", "Member", Icons.attach_money),
              ]),
              const SizedBox(height: 20),
              _buildSectionTitle("Non - Official Members"),
              _buildMemberList(context, [
                _MemberInfo("Prof Dr. Khalid Mehmood Khan, SI", "President, Pakistan Academy of Science, Islamabad", Icons.school),
                _MemberInfo("Mr. Muhammad Yousaf", "Progressive Farmer, Quetta, Balochistan", Icons.local_florist),
                _MemberInfo("Mr. Arif Niaz", "Progressive Farmer, Taluka Sakrand, District Shaheed Benazirabad, Sindh", Icons.grass),
                _MemberInfo("Mr. Ayaz Khan", "Progressive Grower, Havillian, District Abbottabad, Kyber Pakhtunkhwa", Icons.agriculture),
                _MemberInfo("Mr. Shafiullah", "Ex-DG, Mountain Agriculture Research Center (MARC), Diamer, Gilgit", Icons.nature_people),
              ]),
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
        // Use the context here to show SnackBar or perform navigation
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${member.name} tapped')));
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
