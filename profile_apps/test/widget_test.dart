import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Pastikan 'profile_apps' adalah nama projek yang anda daftar di pubspec.yaml
import 'package:profile_apps/main.dart'; 

void main() {
  testWidgets('Profile Card UI Test', (WidgetTester tester) async {
    // 1. Bina aplikasi kita dalam persekitaran ujian
    await tester.pumpWidget(const MyProfileApp());

    // 2. Sahkan Nama anda muncul di skrin
    // Pastikan teks ini sama sebiji dengan apa yang ada dalam main.dart
    expect(find.text('NORSARAH AMANI'), findsOneWidget);

    // 3. Sahkan Quote/Bio anda muncul
    expect(find.text('"we can try again."'), findsOneWidget);

    // 4. Sahkan Ikon-ikon hubungan wujud
    expect(find.byIcon(Icons.email), findsOneWidget);
    expect(find.byIcon(Icons.phone), findsOneWidget);
    expect(find.byIcon(Icons.language), findsOneWidget);

    // 5. Sahkan lokasi dipaparkan
    expect(find.textContaining('Perak, Malaysia'), findsOneWidget);
  });
}