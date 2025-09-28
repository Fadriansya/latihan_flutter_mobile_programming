import 'package:flutter/material.dart'; // Import library Flutter untuk widget Material Design
import './search_field.dart'; // Import file search_field.dart, buat widget pencarian
import './mobil_list.dart'; // Import file mobil_list.dart, berisi data mobil
import './mobil_card.dart'; // Import file mobil_card.dart, buat tampilan kartu mobil

// Definisi kelas BerandaPage sebagai widget Stateless
class BerandaPage extends StatelessWidget {
  const BerandaPage({
    super.key,
  }); // Konstruktor, pakai key biar bisa identifikasi widget

  @override
  Widget build(BuildContext context) {
    // Build method, di sini kita bikin tampilan halaman
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Warna biru tua buat AppBar
        title: SearchField(), // Widget pencarian di AppBar
      ),
      body: SafeArea(
        // SafeArea biar konten nggak ketutupan status bar atau notch
        child: SingleChildScrollView(
          // ScrollView biar bisa scroll kalau konten banyak
          child: Padding(
            padding: const EdgeInsets.all(
              12.0,
            ), // Padding 12 pixel di semua sisi
            child: GridView.builder(
              physics:
                  const NeverScrollableScrollPhysics(), // GridView nggak bisa di-scroll sendiri
              shrinkWrap: true, // GridView cuma sebesar kontennya
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Jumlah kolom grid = 2
                crossAxisSpacing: 12.0, // Jarak antar kolom = 12 pixel
                mainAxisSpacing: 12.0, // Jarak antar baris = 12 pixel
                mainAxisExtent: 250, // Tinggi tiap item grid = 250 pixel
              ),
              itemCount: mobilList.length, // Jumlah item sesuai data mobilList
              itemBuilder: (_, index) {
                // Fungsi buat bikin tiap item grid
                return MobilCard(
                  judul: mobilList.elementAt(
                    index,
                  )['judul'], // Judul mobil dari data
                  harga: mobilList.elementAt(
                    index,
                  )['harga'], // Harga mobil dari data
                  foto: mobilList.elementAt(
                    index,
                  )['foto'], // Foto mobil dari data
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
