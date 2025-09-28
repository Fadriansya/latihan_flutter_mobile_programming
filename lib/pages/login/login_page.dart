import 'package:flutter/material.dart'; // Import library flutter buat UI
import './submit_login.dart'; // Import file submit_login.dart buat tombol submit

// Widget utama halaman login, Stateful karena ada perubahan state
class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  }); // Constructor, super.key buat identifikasi widget

  @override
  State<LoginPage> createState() => _LoginPageState(); // Bikin state dari LoginPage
}

// State dari LoginPage, di sini logika dan UI-nya
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // Fungsi build buat render UI
    return Scaffold(
      // Scaffold itu struktur dasar halaman
      appBar: AppBar(
        // AppBar di atas halaman
        title: Text(
          'Login', // Judul di AppBar
          style: TextStyle(
            color: Colors.blueAccent, // Warna teks judul
            fontWeight: FontWeight.w500, // Ketebalan font
          ),
        ),
        backgroundColor: Colors.transparent, // AppBar transparan
        centerTitle: true, // Judul di tengah
      ),
      body: SafeArea(
        // Biar konten nggak ketabrak status bar
        bottom: false, // Bagian bawah nggak dipakai SafeArea
        child: ListView(
          // ListView biar bisa scroll kalau konten banyak
          padding: EdgeInsets.symmetric(horizontal: 12), // Padding kiri-kanan
          children: [
            Image.asset(
              'assets/img/login-logo.jpg', // Gambar logo login
              height: 300, // Tinggi gambar
              fit: BoxFit.fill, // Gambar diisi penuh
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Email", // Label input email
                prefixIcon: Icon(Icons.email_outlined), // Icon email di depan
              ),
            ),
            SizedBox(height: 15), // Jarak antar widget
            TextField(
              obscureText: true, // Biar password nggak kelihatan
              decoration: InputDecoration(
                labelText: "Password", // Label input password
                prefixIcon: Icon(
                  Icons.lock_clock_outlined,
                ), // Icon kunci di depan
              ),
            ),
            SizedBox(height: 15), // Jarak antar widget
            SubmitLogin(), // Widget tombol submit login
          ],
        ),
      ),
    );
  }
}
