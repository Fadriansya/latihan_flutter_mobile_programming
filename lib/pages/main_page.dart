import 'package:flutter/material.dart'; // Import library flutter buat UI
import '../pages/beranda/beranda_page.dart'; // Import halaman beranda

// Widget utama yang bakal jadi halaman utama aplikasi
class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  }); // Konstruktor, pakai key biar bisa diidentifikasi

  @override
  State<MainPage> createState() => _MainPageState(); // Bikin state dari MainPage
}

// State dari MainPage, di sini logika halaman dan navigasi
class _MainPageState extends State<MainPage> {
  int pageIndex = 0; // Variabel buat nyimpen index halaman yang aktif
  List<Widget> pageList = [
    // List halaman yang bisa ditampilkan
    const BerandaPage(), // Halaman beranda
    Center(
      child: Text("Halaman Order", style: TextStyle(fontSize: 40)),
    ), // Halaman order
    Center(
      child: Text("Halaman Profil", style: TextStyle(fontSize: 40)),
    ), // Halaman profil
  ];

  @override
  Widget build(BuildContext context) {
    // Fungsi build buat nampilin UI
    return Scaffold(
      // Scaffold itu struktur dasar halaman
      body: pageList[pageIndex], // Isi halaman sesuai index yang dipilih
      bottomNavigationBar: BottomNavigationBar(
        // Navigasi di bawah layar
        type:
            BottomNavigationBarType.fixed, // Tipe navigasi, biar itemnya tetap
        onTap: (index) {
          // Fungsi kalau item di-tap
          setState(() {
            // Update state biar UI berubah
            pageIndex = index; // Ganti halaman sesuai index yang dipilih
          });
        },
        currentIndex: pageIndex, // Index yang lagi aktif
        items: [
          // List item navigasi
          barItem(Icons.home, "Beranda"), // Item beranda
          barItem(Icons.wallet, "Order"), // Item order
          barItem(Icons.account_circle_outlined, "Profil"), // Item profil
        ],
      ),
    );
  }

  // Fungsi buat bikin item navigasi bawah
  BottomNavigationBarItem barItem(IconData iconData, String title) {
    return BottomNavigationBarItem(
      icon: Icon(iconData),
      label: title,
    ); // Balikin item dengan icon dan label
  }
}
