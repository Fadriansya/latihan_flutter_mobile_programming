# README.md — Tugas Latiha Mobile Programming - Aplikasi Sewa Mobil

Aplikasi ini dibuat untuk latihan dan tugas mata kuliah Mobile Programming menggunakan Flutter.

## Ringkasan Singkat

Aplikasi ini adalah aplikasi sewa mobil sederhana untuk latihan.  
**Fitur utama:**

- Halaman Login & Registrasi
- Navigasi ke halaman utama setelah login
- Bottom Navigation (Beranda / Order / Profil)
- Daftar mobil dalam tampilan grid
- Pencarian mobil

Struktur kode diletakkan di `lib/pages/...` dan gambar/asset di `assets/img/`.

---

## Apa itu Dart?

Dart adalah bahasa pemrograman yang dikembangkan oleh Google untuk membuat aplikasi client yang cepat di banyak platform (mobile, web, desktop).

- Modern, strongly typed
- Mendukung null safety
- JIT (development) & AOT (release)
- Cocok untuk UI yang cepat dan responsif  
  [Dokumentasi Dart](https://dart.dev)

---

## Apa itu Flutter?

Flutter adalah UI toolkit cross-platform dari Google untuk membangun antarmuka aplikasi yang konsisten dan cepat dari satu basis kode Dart.

- Mendukung Android, iOS, web, dan desktop
- Merender UI sendiri (mesin grafis Skia)
- Konsisten antar-platform  
  [Dokumentasi Flutter](https://docs.flutter.dev)

---

## Kenapa Memakai Flutter?

- Satu kode untuk banyak platform
- Performa baik (AOT untuk release)
- Hot reload memudahkan iterasi UI
- Ekosistem paket lengkap ([pub.dev](https://pub.dev))

---

## Persyaratan Minimum (Windows)

- Windows 10/11 (64-bit)
- Git
- Android Studio (recommended) — berisi Android SDK & emulator/AVD
- Flutter SDK (stable channel)
- Visual Studio Code (opsional, direkomendasikan) + extension Flutter & Dart  
  [Detail lebih lanjut](https://docs.flutter.dev)

---

## Langkah Install & Konfigurasi (Windows)

### 1. Pasang Git

- Unduh & install: [Git Downloads](https://git-scm.com/downloads)
- Cek di terminal:
  ```
  git --version
  ```

### 2. Pasang Android Studio (termasuk SDK dan AVD)

- Unduh & install Android Studio
- Pastikan Android SDK, Platform, dan Platform-Tools terpasang
- Buka SDK Manager → install Android SDK (minimal API level yang direkomendasikan Flutter) dan Google USB Driver
- Buat AVD (emulator) di AVD Manager  
  [Android Developers](https://developer.android.com/studio)

### 3. Unduh Flutter SDK

- Download dari [Flutter SDK](https://docs.flutter.dev)
- Extract ke folder, misal: `C:\src\flutter` atau `D:\Android\flutter`
- Tambahkan `.../flutter/bin` ke PATH
  - GUI: System → Advanced system settings → Environment Variables → Edit Path → New → masukkan `C:\src\flutter\bin`
  - PowerShell (opsional):
    ```
    setx PATH "%PATH%;C:\src\flutter\bin"
    ```
- Restart terminal/VSCode

### 4. Jalankan flutter doctor

- Di terminal:
  ```
  flutter doctor
  ```
- Ikuti instruksi perbaikan jika ada komponen yang hilang
- Jika ada masalah Android license:  
   `   flutter doctor --android-licenses
`
  Jawab `y` untuk menerima lisensi  
  [Dokumentasi Flutter](https://docs.flutter.dev)

### 5. Install VS Code + Extension Flutter & Dart

- Install VS Code
- Pasang extension Flutter (otomatis menginstall Dart)
- VS Code akan punya perintah Flutter: New Project, debug tools, dan hot reload  
  [Dokumentasi VS Code](https://docs.flutter.dev)

### 6. Menyiapkan HP Android (Device Fisik)

- Aktifkan Developer options: Settings → About phone → ketuk Build number 7 kali
- Aktifkan USB debugging
- Sambungkan HP ke komputer via USB, tekan Allow pada dialog  
  [Android Developers](https://developer.android.com/studio)

### 7. Cek Device Terdeteksi

- Di terminal:
  ```
  flutter devices
  adb devices
  ```
- Jika device tidak muncul:
  - Pastikan platform-tools Android SDK (adb) ada di PATH
  - Install OEM USB driver jika perlu

### 8. Menjalankan Aplikasi

- Dari root project:
  ```
  flutter pub get
  flutter run
  ```
- Jika lebih dari satu device:
  ```
  flutter run -d <deviceId>
  ```
- Di VS Code: pilih device di pojok kanan bawah, tekan F5 atau klik Run

---

## Cara Menambahkan Asset (Gambar)

- Letakkan file gambar di `assets/img/`
- Tambahkan di `pubspec.yaml`:
  ```yaml
  flutter:
    assets:
      - assets/img/
  ```
- Jalankan:
  ```
  flutter pub get
  ```

---

## Struktur Project

- `lib/` — kode utama aplikasi
  - `lib/pages/welcome/` — halaman Welcome
  - `lib/pages/login/` — login screen
  - `lib/pages/registrasi/` — registrasi screen
  - `lib/pages/beranda/` — beranda (grid list mobil, search)
  - `lib/pages/main_page.dart` — bottom navigation & routing
- `assets/img/` — gambar mobil & logo
- `pubspec.yaml` — deklarasi dependency & assets

---

## Fitur Aplikasi

- Login & Registrasi — simple form (tanpa backend)
- Setelah login, diarahkan ke MainPage dengan BottomNavigationBar (Beranda / Order / Profil)
- Halaman Beranda menampilkan daftar mobil dalam GridView (data di `mobil_list.dart`)
- Tombol Pesan di setiap card (placeholder) dan search field di AppBar

---

## Troubleshooting Umum

- **flutter doctor** menunjukkan masalah → jalankan perintah yang direkomendasikan
- **Device tidak terdeteksi** → cek `adb devices`, pastikan USB debugging aktif, kabel data, platform-tools di PATH, install OEM USB driver
- **Build / Gradle error** → coba `flutter clean`, `flutter pub get`, lalu `flutter run`
- **Hot reload tidak bekerja** → pastikan mode debug, tekan `r` di terminal atau klik hot reload di VS Code

---

## Menjalankan di Emulator (AVD)

- Buka Android Studio → AVD Manager → buat & jalankan emulator
- Atau perintah:
  ```
  flutter emulators
  flutter emulators --launch <emulatorId>
  flutter run
  ```

---

## Opsi Sambungan via Wi-Fi (Opsional)

- Setelah device terdeteksi via USB:
  ```
  adb tcpip 5555
  adb connect <device_ip>:5555
  flutter run
  ```
- Catatan: beberapa vendor/jaringan membatasi fitur ini

---

## Perintah Penting

```
flutter doctor
flutter pub get
flutter run
flutter build apk      # buat file .apk release
flutter clean
adb devices
flutter devices
flutter emulators
```

---

## Referensi / Dokumentasi Resmi

- [Dart](https://dart.dev)
- [Flutter](https://docs.flutter.dev)
- [VS Code + Flutter extension](https://docs.flutter.dev)
- [Android Developers](https://developer.android.com/studio)

---

**Dibuat oleh:**  
Nasrullah Akbar, 15230387 — Tugas Mata Kuliah Mobile Programming
