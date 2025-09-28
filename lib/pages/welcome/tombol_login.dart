import 'package:flutter/material.dart'; // Import library flutter buat UI
import 'package:tugas/pages/login/login_page.dart'; // Import halaman login yang mau dituju

// Deklarasi widget TombolLogin, turunan dari StatelessWidget (nggak punya state)
class TombolLogin extends StatelessWidget {
  const TombolLogin({
    super.key,
  }); // Constructor, pakai key biar bisa diidentifikasi widgetnya

  @override
  Widget build(BuildContext context) {
    // Method build buat ngerender UI
    return SizedBox(
      height: 60, // Tinggi tombolnya 60 pixel
      width:
          MediaQuery.of(context).size.width -
          2 * 24, // Lebar tombol, dikurangi margin kiri-kanan 24 pixel
      child: ElevatedButton(
        onPressed: () {
          // Fungsi yang dijalankan pas tombol diklik
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ), // Pindah ke halaman LoginPage
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // Warna background tombol jadi putih
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.blueAccent,
              width: 3,
            ), // Border tombol warna biru dan tebal 3
            borderRadius: BorderRadius.circular(
              15,
            ), // Sudut tombol dibikin melengkung radius 15
          ),
        ),
        child: Text(
          "Login", // Teks yang muncul di tombol
          style: TextStyle(
            fontSize: 20, // Ukuran font 20
            fontWeight: FontWeight.w500, // Ketebalan font medium
            color: Colors.blueAccent, // Warna font biru
          ),
        ),
      ),
    );
  }
}
