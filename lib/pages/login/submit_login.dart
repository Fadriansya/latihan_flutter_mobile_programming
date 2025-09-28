import 'package:flutter/material.dart'; // Import library Flutter buat UI
import 'package:tugas/pages/main_page.dart'; // Import halaman utama setelah login

// Widget SubmitLogin ini stateless, artinya nggak punya state yang berubah-ubah
class SubmitLogin extends StatelessWidget {
  const SubmitLogin({
    super.key,
  }); // Constructor, pakai key biar bisa diidentifikasi widgetnya

  @override
  Widget build(BuildContext context) {
    // Build method buat ngerender UI
    return SizedBox(
      height: 60, // Tinggi tombol login
      width:
          MediaQuery.of(context).size.width -
          2 * 24, // Lebar tombol, dikurangi margin kiri-kanan 24px
      child: ElevatedButton(
        onPressed: () {
          // Fungsi yang dijalankan pas tombol ditekan
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => MainPage(),
            ), // Pindah ke halaman MainPage
            (route) => false, // Semua halaman sebelumnya dihapus dari stack
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[900], // Warna tombol biru tua
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ), // Sudut tombol dibikin melengkung 15px
          ),
        ),
        child: Text(
          "Login", // Teks yang muncul di tombol
          style: TextStyle(
            fontSize: 20, // Ukuran font teks
            fontWeight: FontWeight.w500, // Ketebalan font medium
            color: Colors.white, // Warna teks putih
          ),
        ),
      ),
    );
  }
}
