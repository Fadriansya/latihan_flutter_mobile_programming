import 'package:flutter/material.dart'; // Import library Flutter buat UI

// Widget SubmitRegistrasi ini tipe StatelessWidget, artinya UI-nya nggak berubah
class SubmitRegistrasi extends StatelessWidget {
  const SubmitRegistrasi({super.key}); // Constructor, bisa dipakai buat key

  @override
  Widget build(BuildContext context) {
    // Build method buat ngerender tampilan widget
    return SizedBox(
      height: 60, // Tinggi tombolnya 60 pixel
      width:
          MediaQuery.of(context).size.width -
          2 * 24, // Lebar tombol dikurangi margin kiri-kanan 24 pixel
      child: ElevatedButton(
        onPressed:
            () {}, // Fungsi yang dijalankan pas tombol ditekan, sekarang masih kosong
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // Warna background tombol jadi hijau
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ), // Sudut tombol dibikin melengkung radius 15
          ),
        ),
        child: Text(
          "Daftar", // Teks yang muncul di tombol
          style: TextStyle(
            fontSize: 20, // Ukuran font teks 20
            fontWeight: FontWeight.w500, // Ketebalan font medium
            color: Colors.white, // Warna teks putih
          ),
        ),
      ),
    );
  }
}
