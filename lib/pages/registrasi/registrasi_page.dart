import 'package:flutter/material.dart'; // Import library flutter buat UI
import './submit_registrasi.dart'; // Import file submit_registrasi.dart buat tombol submit

// Widget utama halaman registrasi, pake StatefulWidget biar bisa berubah
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key}); // Constructor, pake key biar unik

  @override
  State<RegisterPage> createState() => _RegisterPageState(); // Bikin state dari RegisterPage
}

// State dari RegisterPage, di sini logika dan UI-nya
class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    // Fungsi build buat nampilin UI
    return Scaffold(
      // Scaffold itu kerangka dasar halaman
      appBar: AppBar(
        // Bagian atas halaman, biasanya judul
        title: Text(
          'Registrasi', // Judul halaman
          style: TextStyle(
            color: Colors.blueAccent, // Warna teks judul
            fontWeight: FontWeight.w500, // Ketebalan font
          ),
        ),
        backgroundColor: Colors.transparent, // Background appbar transparan
        centerTitle: true, // Judul di tengah
      ),
      body: SafeArea(
        // Biar konten ga ketutupan status bar/notch
        bottom: false, // Bagian bawah ga dipake safe area
        child: ListView(
          // ListView biar bisa scroll kalau konten banyak
          padding: EdgeInsets.symmetric(horizontal: 12), // Padding kiri-kanan
          children: [
            Image.asset(
              'assets/img/register-logo.jpg', // Gambar logo registrasi
              height: 300, // Tinggi gambar
              fit: BoxFit.fill, // Gambar diisi penuh
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Nama Lengkap", // Label input nama
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
                ), // Icon di depan input
              ),
            ),
            SizedBox(height: 15), // Jarak antar input
            TextField(
              decoration: InputDecoration(
                labelText: "Email", // Label input email
                prefixIcon: Icon(Icons.email_outlined), // Icon email
              ),
            ),
            SizedBox(height: 15), // Jarak antar input
            TextField(
              decoration: InputDecoration(
                labelText: "No. Hp", // Label input nomor HP
                prefixIcon: Icon(Icons.phone), // Icon telepon
              ),
            ),
            SizedBox(height: 15), // Jarak antar input
            TextField(
              obscureText: true, // Biar password ga keliatan
              decoration: InputDecoration(
                labelText: "Password", // Label input password
                prefixIcon: Icon(Icons.lock_clock_outlined), // Icon kunci
              ),
            ),
            SizedBox(height: 15), // Jarak sebelum tombol submit
            SubmitRegistrasi(), // Widget tombol submit dari file lain
            SizedBox(height: 15), // Jarak bawah biar ga dempet
          ],
        ),
      ),
    );
  }
}
