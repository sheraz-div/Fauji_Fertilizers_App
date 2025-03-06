import 'package:flutter/material.dart';
import 'package:foujifertilizer/Screens/ContactUs/TelephoneNumbersScreen.dart';

class CityDirectoryScreen extends StatelessWidget {
  final Map<String, List<Map<String, String>>> cityDirectories = {
    'PARC HQs. Islamabad': [
      {'sr': '1', 'designation': 'Chairman', 'phone': '051-9076-2504', 'email': 'chairman@parc.gov.pk'},
      {'sr': '2', 'designation': 'PS to Chairman', 'phone': '051-9076-2503', 'email': 'ps2chairman@parc.gov.pk'},
      {'sr': '3', 'designation': 'TSO to Chairman', 'phone': '051-9076-2509', 'email': 'tso@parc.gov.pk'},
      {'sr': '4', 'designation': 'Information Officer', 'phone': '051-9076-2517', 'email': 'informationofficer@parc.gov.pk'},
      {'sr': '5', 'designation': 'Secretary (PARC)', 'phone': '051-9076-2521', 'email': 'secretary@parc.gov.pk'},
      // Add the rest of the entries here
    ],
      'NARC, Islamabad': [
      {'sr': '1', 'designation': 'Chairman', 'phone': '051-9076-2504', 'email': 'chairman@parc.gov.pk'},
      {'sr': '2', 'designation': 'PS to Chairman', 'phone': '051-9076-2503', 'email': 'ps2chairman@parc.gov.pk'},
      {'sr': '3', 'designation': 'TSO to Chairman', 'phone': '051-9076-2509', 'email': 'tso@parc.gov.pk'},
      {'sr': '4', 'designation': 'Information Officer', 'phone': '051-9076-2517', 'email': 'informationofficer@parc.gov.pk'},
      {'sr': '5', 'designation': 'Secretary (PARC)', 'phone': '051-9076-2521', 'email': 'secretary@parc.gov.pk'},
      // Add the rest of the entries here
    ],
    'SARC, Karachi': [
      {'sr': '1', 'designation': 'Chairman', 'phone': '051-9076-2504', 'email': 'chairman@parc.gov.pk'},
      {'sr': '2', 'designation': 'PS to Chairman', 'phone': '051-9076-2503', 'email': 'ps2chairman@parc.gov.pk'},
      {'sr': '3', 'designation': 'TSO to Chairman', 'phone': '051-9076-2509', 'email': 'tso@parc.gov.pk'},
      {'sr': '4', 'designation': 'Information Officer', 'phone': '051-9076-2517', 'email': 'informationofficer@parc.gov.pk'},
      {'sr': '5', 'designation': 'Secretary (PARC)', 'phone': '051-9076-2521', 'email': 'secretary@parc.gov.pk'},    
      ],
    'BARDC, Quetta': [
      {'sr': '1', 'designation': 'Chairman', 'phone': '051-9076-2504', 'email': 'chairman@parc.gov.pk'},
      {'sr': '2', 'designation': 'PS to Chairman', 'phone': '051-9076-2503', 'email': 'ps2chairman@parc.gov.pk'},
      {'sr': '3', 'designation': 'TSO to Chairman', 'phone': '051-9076-2509', 'email': 'tso@parc.gov.pk'},
      {'sr': '4', 'designation': 'Information Officer', 'phone': '051-9076-2517', 'email': 'informationofficer@parc.gov.pk'},
      {'sr': '5', 'designation': 'Secretary (PARC)', 'phone': '051-9076-2521', 'email': 'secretary@parc.gov.pk'},    
      ],
    'NTHRI, Mansehra': [
      {'sr': '1', 'designation': 'Chairman', 'phone': '051-9076-2504', 'email': 'chairman@parc.gov.pk'},
      {'sr': '2', 'designation': 'PS to Chairman', 'phone': '051-9076-2503', 'email': 'ps2chairman@parc.gov.pk'},
      {'sr': '3', 'designation': 'TSO to Chairman', 'phone': '051-9076-2509', 'email': 'tso@parc.gov.pk'},
      {'sr': '4', 'designation': 'Information Officer', 'phone': '051-9076-2517', 'email': 'informationofficer@parc.gov.pk'},
      {'sr': '5', 'designation': 'Secretary (PARC)', 'phone': '051-9076-2521', 'email': 'secretary@parc.gov.pk'},    
      ],
    'AZRC. D.I. Khan': [
      {'sr': '1', 'designation': 'Chairman', 'phone': '051-9076-2504', 'email': 'chairman@parc.gov.pk'},
      {'sr': '2', 'designation': 'PS to Chairman', 'phone': '051-9076-2503', 'email': 'ps2chairman@parc.gov.pk'},
      {'sr': '3', 'designation': 'TSO to Chairman', 'phone': '051-9076-2509', 'email': 'tso@parc.gov.pk'},
      {'sr': '4', 'designation': 'Information Officer', 'phone': '051-9076-2517', 'email': 'informationofficer@parc.gov.pk'},
      {'sr': '5', 'designation': 'Secretary (PARC)', 'phone': '051-9076-2521', 'email': 'secretary@parc.gov.pk'},    
      ],
    'PRTS, Multan': [
      {'sr': '1', 'designation': 'Chairman', 'phone': '051-9076-2504', 'email': 'chairman@parc.gov.pk'},
      {'sr': '2', 'designation': 'PS to Chairman', 'phone': '051-9076-2503', 'email': 'ps2chairman@parc.gov.pk'},
      {'sr': '3', 'designation': 'TSO to Chairman', 'phone': '051-9076-2509', 'email': 'tso@parc.gov.pk'},
      {'sr': '4', 'designation': 'Information Officer', 'phone': '051-9076-2517', 'email': 'informationofficer@parc.gov.pk'},
      {'sr': '5', 'designation': 'Secretary (PARC)', 'phone': '051-9076-2521', 'email': 'secretary@parc.gov.pk'},    
      ],
    'SSRIs': [
      {'sr': '1', 'designation': 'Chairman', 'phone': '051-9076-2504', 'email': 'chairman@parc.gov.pk'},
      {'sr': '2', 'designation': 'PS to Chairman', 'phone': '051-9076-2503', 'email': 'ps2chairman@parc.gov.pk'},
      {'sr': '3', 'designation': 'TSO to Chairman', 'phone': '051-9076-2509', 'email': 'tso@parc.gov.pk'},
      {'sr': '4', 'designation': 'Information Officer', 'phone': '051-9076-2517', 'email': 'informationofficer@parc.gov.pk'},
      {'sr': '5', 'designation': 'Secretary (PARC)', 'phone': '051-9076-2521', 'email': 'secretary@parc.gov.pk'},    
      ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City Directories'),
        backgroundColor: Colors.greenAccent.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: cityDirectories.keys.map((city) {
            return Card(
              elevation: 4.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                title: Text(
                  city,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                leading: Icon(Icons.location_city, color: Colors.greenAccent.shade700),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelephoneNumbersScreen(
                        city: city,
                        directoryData: cityDirectories[city]!,
                      ),
                    ),
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
