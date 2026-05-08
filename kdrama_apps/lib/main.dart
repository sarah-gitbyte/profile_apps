import 'package:flutter/material.dart';
import 'kdrama.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Favourite K-Dramas', 
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.pinkAccent[700],
          centerTitle: true,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            // Tentukan jumlah lajur (Responsive)
            int columnCount = 2; 
            if (constraints.maxWidth > 900) {
              columnCount = 4;
            } else if (constraints.maxWidth > 600) {
              columnCount = 3;
            }

            return GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columnCount,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.6, // Dikecilkan supaya muat sinopsis di bawah
              ),
              itemCount: Kdrama.senarai.length,
              itemBuilder: (context, index) {
                final drama = Kdrama.senarai[index];
                
                return Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // GAMBAR
                      Expanded(
                        child: Image.asset(
                          drama.gambar,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      
                      // BAHAGIAN TEKS
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // 1. TAJUK (PINK)
                            Text(
                              drama.tajuk,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),

                            const SizedBox(height: 5),

                            // 2. SYNOPSIS
                            Text(
                              drama.caption, // Mengambil data 'caption' dari kdrama.dart
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}