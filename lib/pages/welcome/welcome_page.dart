import 'package:flutter/material.dart'; // Import library flutter untuk komponen UI
import './tombol_registrasi.dart'; // Import file tombol registrasi
import './tombol_login.dart'; // Import file tombol login

// Deklarasi kelas WelcomePage sebagai StatelessWidget
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key}); // Constructor dengan key opsional

  @override
  Widget build(BuildContext context) {
    // Method build untuk membangun tampilan
    return Scaffold(
      // Scaffold sebagai struktur dasar halaman
      body: SafeArea(
        // SafeArea supaya konten nggak ketabrak status bar atau notch
        bottom: false, // Bagian bawah nggak ikut safe area
        child: ListView(
          // ListView supaya konten bisa discroll kalau kepanjangan
          padding: EdgeInsets.symmetric(
            horizontal: 12,
          ), // Padding kiri-kanan biar nggak mepet
          children: [
            // List widget yang ditampilkan
            Image.asset(
              // Menampilkan gambar dari asset
              'assets/img/welcome-logo.jpg', // Path gambar
              height: 300, // Tinggi gambar 300 pixel
              fit: BoxFit.fill, // Gambar diisi penuh sesuai ukuran
            ),
            SizedBox(height: 15), // Jarak vertikal 15 pixel
            Text(
              // Widget teks untuk judul
              "Selamat Datang", // Isi teks
              style: TextStyle(
                // Style teks
                fontSize: 36, // Ukuran font 36
                color: Colors.blue, // Warna biru
                fontWeight: FontWeight.w500, // Ketebalan medium
              ),
              textAlign: TextAlign.center, // Teks di tengah
            ),
            SizedBox(height: 15), // Jarak vertikal lagi
            Text(
              // Widget teks untuk deskripsi aplikasi
              "Ini adalah aplikasi sewa mobil dimana kamu dapat menyewa berbagai macam mobil hanya dalam satu aplikasi", // Isi teks
              style: TextStyle(
                // Style teks
                fontSize: 20, // Ukuran font 20
                color: Colors.black87, // Warna hitam agak terang
                fontWeight: FontWeight.w500, // Ketebalan medium
              ),
              textAlign: TextAlign.center, // Teks di tengah
            ),
            SizedBox(height: 51), // Jarak vertikal lebih besar sebelum tombol
            TombolRegistrasi(), // Widget tombol registrasi (import dari file lain)
            SizedBox(height: 15), // Jarak antara tombol
            TombolLogin(), // Widget tombol login (import dari file lain)
          ],
        ),
      ),
    );
  }
}
