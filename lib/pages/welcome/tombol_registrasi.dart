import 'package:flutter/material.dart'; // Import library flutter buat UI
import 'package:tugas/pages/registrasi/registrasi_page.dart'; // Import halaman registrasi

// Deklarasi class TombolRegistrasi, turunan dari StatelessWidget
class TombolRegistrasi extends StatelessWidget {
  const TombolRegistrasi({
    super.key,
  }); // Constructor, pakai key biar bisa dipakai di widget tree

  @override
  Widget build(BuildContext context) {
    // Build method buat ngerender widget
    return SizedBox(
      height: 60, // Tinggi tombol 60 pixel
      width:
          MediaQuery.of(context).size.width -
          2 * 24, // Lebar tombol, dikurangi margin kiri-kanan 24
      child: ElevatedButton(
        onPressed: () {
          // Fungsi yang dijalankan pas tombol ditekan
          Navigator.push(
            context, // Context dari widget
            MaterialPageRoute(
              builder: (context) => RegisterPage(),
            ), // Pindah ke halaman registrasi
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Warna background tombol biru
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ), // Sudut tombol dibikin melengkung 15 pixel
          ),
        ),
        child: Text(
          "Registrasi", // Teks yang muncul di tombol
          style: TextStyle(
            fontSize: 20, // Ukuran font 20
            fontWeight: FontWeight.w500, // Ketebalan font medium
            color: Colors.white, // Warna font putih
          ),
        ),
      ),
    );
  }
}
