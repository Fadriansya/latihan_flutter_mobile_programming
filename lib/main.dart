// Import package flutter buat bikin aplikasi mobile
import 'package:flutter/material.dart';
// Import halaman WelcomePage yang udah dibuat di folder pages/welcome
import 'pages/welcome/welcome_page.dart';

// Fungsi utama yang pertama kali dijalankan pas aplikasi dibuka
void main() {
  // runApp buat ngejalanin aplikasi Flutter, MyApp jadi root widget-nya
  runApp(const MyApp());
}

// Deklarasi class MyApp, turunan dari StatelessWidget (widget yang nggak berubah)
class MyApp extends StatelessWidget {
  // Constructor MyApp, pake super.key buat ngatur key widget
  const MyApp({super.key});

  // Method build buat ngebuild tampilan aplikasi
  @override
  Widget build(BuildContext context) {
    // MaterialApp itu widget utama buat aplikasi Flutter yang pake material design
    return const MaterialApp(
      // debugShowCheckedModeBanner: false biar banner debug nggak muncul di pojok
      debugShowCheckedModeBanner: false,
      // title aplikasi, biasanya buat identitas di task manager
      title: 'Sewa Mobil',
      // home: WelcomePage() artinya pas aplikasi dibuka, yang muncul pertama WelcomePage
      home: WelcomePage(),
    );
  }
}
