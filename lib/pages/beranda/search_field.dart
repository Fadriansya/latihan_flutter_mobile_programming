import 'package:flutter/material.dart'; // Import library Flutter untuk widget Material Design

// Deklarasi kelas SearchField sebagai StatelessWidget
class SearchField extends StatelessWidget {
  const SearchField({super.key}); // Konstruktor dengan key opsional

  @override
  Widget build(BuildContext context) {
    // Widget utama yang dibangun adalah TextField
    return TextField(
      decoration: InputDecoration(
        hintText: 'Cari Mobil', // Teks petunjuk di dalam kolom input
        prefixIcon: Icon(Icons.search), // Icon search di sebelah kiri kolom
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            3,
          ), // Sudut border agak membulat (radius 3)
          borderSide: BorderSide.none, // Border tidak terlihat (none)
        ),
        contentPadding: EdgeInsets.zero, // Padding isi diatur ke nol (rapat)
        filled: true, // Kolom input diisi warna (aktif)
        fillColor: Colors.white, // Warna latar kolom input jadi putih
      ),
    );
  }
}
