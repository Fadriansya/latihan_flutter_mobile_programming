import 'package:flutter/material.dart'; // Import library Flutter buat UI
import './tombol_pesan.dart'; // Import file tombol_pesan.dart, buat tombol pesan

// Widget MobilCard, ini stateless karena datanya nggak berubah
class MobilCard extends StatelessWidget {
  final String judul; // Variabel buat judul mobil
  final String harga; // Variabel buat harga mobil
  final String foto; // Variabel buat path foto mobil

  // Constructor MobilCard, wajib isi judul, harga, sama foto
  const MobilCard({
    super.key, // Key bawaan Flutter, buat identifikasi widget
    required this.judul, // Judul mobil wajib diisi
    required this.harga, // Harga mobil wajib diisi
    required this.foto, // Foto mobil wajib diisi
  });

  @override
  Widget build(BuildContext context) {
    // Build UI-nya MobilCard
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0), // Biar sudutnya melengkung
        border: Border.all(
          color: Colors.grey.shade200,
        ), // Biar ada border tipis warna abu
      ),
      child: Wrap(
        // Widget buat ngebungkus beberapa widget, bisa ke bawah kalau nggak muat
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0), // Sudut atas kiri melengkung
              topRight: Radius.circular(8.0), // Sudut atas kanan melengkung
            ),
            child: Image.asset(
              foto, // Path foto mobil yang mau ditampilkan
              height: 170, // Tinggi gambar 170 pixel
              width: double.infinity, // Lebar gambar ngikutin parent
              fit: BoxFit.cover, // Gambar di-crop biar nutupin area
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), // Padding 8 pixel di semua sisi
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Isi column rata kiri
              children: [
                Text(
                  judul,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ), // Teks judul mobil, tebal
                Text(
                  harga,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ), // Teks harga mobil, tebal juga
                TombolPesan(), // Widget tombol pesan, buat order mobil
              ],
            ),
          ),
        ],
      ),
    );
  }
}
