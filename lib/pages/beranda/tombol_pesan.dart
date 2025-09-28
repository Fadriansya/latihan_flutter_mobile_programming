import 'package:flutter/material.dart'; // Import library flutter buat UI

// Deklarasi class TombolPesan, turunan dari StatelessWidget
class TombolPesan extends StatelessWidget {
  const TombolPesan({
    super.key,
  }); // Constructor, pakai key biar bisa dipakai di widget tree

  @override
  Widget build(BuildContext context) {
    // Widget build, ini yang bakal dirender di layar
    return SizedBox(
      height: 25, // Tinggi tombolnya 25 pixel
      width:
          MediaQuery.of(context).size.width -
          2 * 24, // Lebar tombol, dikurangi margin kiri-kanan 24px
      child: ElevatedButton(
        onPressed: () {}, // Fungsi kalau tombol ditekan, sekarang masih kosong
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // Warna background tombol jadi putih
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.blue,
              width: 3,
            ), // Border tombol warna biru, tebal 3px
            borderRadius: BorderRadius.circular(
              6,
            ), // Sudut tombol dibikin agak melengkung, radius 6px
          ),
        ),
        child: Text(
          "Pesan", // Teks yang muncul di tombol
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.blue,
          ), // Gaya teks: tebal sedang, warna biru
        ),
      ),
    );
  }
}
