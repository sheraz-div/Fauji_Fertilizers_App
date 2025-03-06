import 'package:flutter/material.dart';

class Paisa extends StatefulWidget {
  const Paisa({super.key});

  @override
  State<Paisa> createState() => _PaisaState();
}

class _PaisaState extends State<Paisa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PARC Institute of Advanced Studies in Agriculture (PIASA)'),
        backgroundColor: Colors.greenAccent.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              Text(
                'PARC Institute of Advanced Studies in Agriculture (PIASA)',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent.shade700,
                ),
              ),
              const SizedBox(height: 20),

              // Text content
              Text(
                '''In view to fill ever increasing skills and expertise gap in the advanced agricultural sciences and to capitalize on its rich knowledge base and infrastructure, PARC established PARC Institute of Advanced Studies in Agriculture (PIASA) in 2008, to embark upon a unique postgraduate academic program at the campus of NARC.

PIASA has been affiliated with University of Agriculture Peshawar since 2010 to 2017 and since 2012, with Quaid i Azam University Islamabad. As to ensure excellence in education as well as research in order to actively contribute towards human resource development in fields of agriculture, livestock and other allied disciplines for more than a decade.

PIASA offers a wholesome learning experience through five diverse fields of studies in Agriculture for MPhil and PhD, which are as follows:
- Animal Genomics & Biotechnology (AGB)
- Applied Economics (AE)
- Plant & Environmental Protection (PEP)
- Plant Genomics & Biotechnology (PGB)
- Natural Resource Management (NRM)
- Biotic Resource Science (BRS)
- Energy Management in Agricultural (EMA)
- Soil and Environmental Sciences (SES)
- Water Resource Management (WRM)

Since 2008, PIASA has been affiliated with two top Universities in Pakistan, 
The University of Agriculture Peshawar and Quaid i Azam University. Along with both partnerships, 
PIASA has cultivated many national and international liaisons such as membership in Himalayan 
University Consortium (HUC). PIASA provides a pedestal to young researchers to further polish their 
skills to become experts in their relevant field of study.

We aim to provide a vibrant learning environment, fostering innovation and creativity, informed by practices, 
inspired by research, focusing on the globally relevant areas, in which we excel.

We produce quality research scholars in the emerging fields of agriculture through MPhil and PhD degree programs, 
to strengthen linkages with national as well as international agriculture institutions and Universities for 
collaborative degree programs.''',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
