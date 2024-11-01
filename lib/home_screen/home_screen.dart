import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore';
import '../common/henshin_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<String> categories = [
    'Kerja Rumah',
    'Menjahit',
    'Kerja Manual',
    'Sokongan Teknikal',
  ];

  static const List<IconData> categoryIcons = [
    Icons.home_repair_service,
    Icons.design_services,
    Icons.construction,
    Icons.computer,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF4A90E2).withOpacity(0.5),
              const Color(0xFF50E3C2).withOpacity(0.5),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Search Bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0), // More rounded corners
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Cari pekerjaan...',
                      hintStyle: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[600],
                        size: 20,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 12, // Adjusted vertical padding
                        horizontal: 8, // Reduced horizontal padding
                      ),
                    ),
                  ),
                ),
              ),
              
              // White Container for rest of content
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        // Gigs Near You Header
                        Text(
                          'Pekerjaan Terdekat',
                          style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16), // Spacing between header and grid
                        
                        // Grid of Services
                        GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 0.7, // Increased from 0.8 to give more vertical space
                            crossAxisSpacing: 10, // Reduced spacing slightly
                            mainAxisSpacing: 10,
                          ),
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min, // Added this to minimize height
                              children: [
                                Container(
                                  padding: EdgeInsets.all(12), // Reduced padding slightly
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF4A90E2).withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(
                                    categoryIcons[index],
                                    color: const Color(0xFF4A90E2),
                                    size: 32,
                                  ),
                                ),
                                SizedBox(height: 4), // Reduced spacing
                                Flexible( // Wrapped in Flexible
                                  child: Text(
                                    categories[index],
                                    style: TextStyle(
                                      fontSize: 12, // Slightly reduced font size
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        
                        const SizedBox(height: 24), // Spacing before Featured section
                        
                        // Featured Gigs Header
                        Text(
                          'Cadangan Pekerjaan',
                          style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        
                        // Featured Gigs List
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: EdgeInsets.only(bottom: 16),
                              color: const Color(0xFF4A90E2).withOpacity(0.7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: ListTile(
                                leading: const Icon(
                                  Icons.work_outline,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'Tajuk Pekerjaan ${index + 1}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                subtitle: const Text(
                                  'Dimohon Oleh: Nama Perusahaan',
                                  style: TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
