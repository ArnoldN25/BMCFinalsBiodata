import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BioDataPage(),
    );
  }
}

class BioDataPage extends StatelessWidget {
  const BioDataPage({super.key});

  Widget buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),
          const Text(":"),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 3),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black54,
                  ),
                ),
              ),
              child: Text(
                value,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Container(
              width: screenWidth * 0.95,
              constraints: const BoxConstraints(
                maxWidth: 650,
              ),
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            "BIO DATA",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 120,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black54,
                              width: 1.5,
                            ),
                          ),
                          child: ClipRRect(
                            child: Image.asset(
                              'assets/images/picture.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),

                  buildRow(
                    "Name",
                    "John Arnold N. Cabigas",
                  ),
                  buildRow(
                    "Mobile",
                    "09552948193",
                  ),
                  buildRow(
                    "Email Id",
                    "cabigasjohnarnold05@gmail.com",
                  ),
                  buildRow(
                    "Father's Name",
                    "Roger Cabigas",
                  ),
                  buildRow(
                    "Mother's Name",
                    "Nalcidad Cabigas",
                  ),
                  buildRow(
                    "Gender",
                    "Male",
                  ),
                  buildRow(
                    "Date of Birth",
                    "September 05, 2004",
                  ),
                  buildRow(
                    "Marital Status",
                    "Single",
                  ),
                  buildRow(
                    "Religion",
                    "Catholic",
                  ),
                  buildRow(
                    "Languages Known",
                    "Filipino, English",
                  ),
                  buildRow(
                    "Qualification",
                    "BS Information Technology",
                  ),
                  buildRow(
                    "Experience",
                    "3 Years Learning as Software Developer\n"
                        "6 Months Aircon Technician",
                  ),
                  buildRow(
                    "Address",
                    "Blk 29 Lot 21 Phase 2 Module 3, Dagat-Dagatan, Maypajo, Caloocan City",
                  ),

                  const SizedBox(height: 30),

                  buildRow(
                    "Place",
                    "Maypajo, Caloocan City",
                  ),
                  buildRow(
                    "Date",
                    "September 24, 2026",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}