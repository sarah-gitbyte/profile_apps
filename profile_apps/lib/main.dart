import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Sarah',
      theme: ThemeData(useMaterial3: true),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menggunakan Container dengan Gradient untuk background yang cantik
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFece9e6), Color(0xFFffffff)],
          ),
        ),
        child: const Center(
          child: ProfileCard(),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. Gambar Profil dengan Border
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
          const SizedBox(height: 20),

          // 2. Nama (Gunakan FontWeight.w900 untuk impak visual)
          const Text(
            'NORSARAH AMANI BINTI SHAMSUL KAMAL',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color(0xFF2C3E50),
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 8),

          // 3. Lokasi & Tarikh
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.location_on, size: 16, color: Colors.redAccent),
              SizedBox(width: 4),
              Text(
                'Perak, Malaysia • 20 June 04',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Divider(thickness: 0.5),
          ),

          // 4. Bio Quote
          const Text(
            '"we can try again."',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Colors.blueGrey,
            ),
          ),
          const SizedBox(height: 25),

          // 5. Ikon Hubungan menggunakan Wrap
          Wrap(
            spacing: 20,
            children: [
              _buildSocialIcon(Icons.email, 'sarahamani0620@gmail.com'),
              _buildSocialIcon(Icons.phone, '01120800353'),
              _buildSocialIcon(Icons.language, 'sarah.dev'),
            ],
          ),
        ],
      ),
    );
  }

  // Widget bantuan untuk bina butang ikon yang konsisten
  Widget _buildSocialIcon(IconData icon, String detail) {
    return Tooltip(
      message: detail,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFF2C3E50),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(icon, color: Colors.white, size: 22),
      ),
    );
  }
}