Nama                    : Meylani
NIM                     : 2400016012
Semester                : IV
Kelas Praktikum         : C
Mata Kuliah Praktikum   : Teknologi Mobile

# Meylani Pet Care
Meylani Pet Care adalah aplikasi Flutter sederhana yang dibuat untuk memenuhi tugas **Praktikum 2 Teknologi Mobile**. Aplikasi ini menerapkan konsep dasar Flutter, yaitu penggunaan widget, navigasi antar halaman, `StatelessWidget`, `StatefulWidget`, dan `setState()`.

## Deskripsi Aplikasi

Aplikasi ini bertema perawatan hewan peliharaan virtual bernama **Mochi**. Aplikasi memiliki halaman utama sebagai navigasi, serta dua halaman praktikum yaitu **Pet Profile** dan **Happiness Counter**.

Halaman **Pet Profile** digunakan untuk menampilkan data hewan peliharaan secara statis. Halaman **Happiness Counter** digunakan untuk merawat pet secara interaktif dengan mengubah nilai kebahagiaan.

## Halaman Aplikasi

### 1. Halaman Utama / Navigasi

Halaman utama berisi judul aplikasi **Meylani Pet Care** dan dua menu utama, yaitu:

- Pet Profile
- Happiness Counter

Halaman ini digunakan sebagai navigasi untuk berpindah ke halaman Stateless dan Stateful.

### 2. Pet Profile / Stateless Page

Halaman **Pet Profile** dibuat menggunakan `StatelessWidget`. Halaman ini menampilkan informasi hewan peliharaan secara statis, seperti:

- Nama pet
- Jenis pet
- Makanan favorit
- Sifat pet
- Tips merawat pet

Halaman ini tidak menggunakan `setState()` karena data yang ditampilkan tidak berubah saat aplikasi berjalan.

### 3. Happiness Counter / Stateful Page

Halaman **Happiness Counter** dibuat menggunakan `StatefulWidget`. Halaman ini memiliki variabel `happiness` yang nilainya dapat berubah ketika pengguna menekan tombol.

Tombol yang tersedia:

- Beri Makan
- Ajak Main
- Reset Happiness

Perubahan nilai `happiness` dilakukan menggunakan `setState()` agar tampilan aplikasi dapat diperbarui secara langsung.

## Fitur Aplikasi

- Menampilkan halaman utama sebagai navigasi
- Menampilkan halaman Stateless / Pet Profile
- Menampilkan halaman Stateful / Happiness Counter
- Navigasi antar halaman
- Menampilkan data hewan peliharaan virtual
- Mengubah level kebahagiaan pet
- Menggunakan `setState()` pada halaman Stateful
- Menggunakan lebih dari 5 widget berbeda pada setiap halaman

## Struktur Project

```text
lib/
├── main.dart
└── pages/
    ├── stateless_page.dart
    └── stateful_page.dart

## Analisis Widget

### Analisis Widget pada Stateless Page / Pet Profile

| Widget | Analisis |
|---|---|
| `Scaffold` | `Scaffold` digunakan sebagai kerangka utama halaman Pet Profile agar halaman memiliki struktur seperti `AppBar` dan `body`. |
| `AppBar` | `AppBar` digunakan untuk menampilkan judul Pet Profile di bagian atas aplikasi. |
| `SingleChildScrollView` | `SingleChildScrollView` digunakan agar seluruh data pet dan tips merawat tetap bisa dilihat dengan cara digulir. |
| `Padding` | `Padding` digunakan untuk memberi jarak pada isi halaman agar tampilan data pet tidak menempel ke tepi layar. |
| `Column` | `Column` digunakan untuk menyusun bagian profil pet, daftar data pet, tips merawat, dan tombol kembali secara vertikal. |
| `Container` | `Container` digunakan untuk membungkus bagian profil, item data pet, dan tips agar dapat diberi padding, warna latar, border radius, dan bayangan. |
| `BoxDecoration` | `BoxDecoration` digunakan untuk menghias `Container`, seperti memberi warna putih, gradasi, border radius, dan bayangan pada kartu informasi pet. |
| `LinearGradient` | `LinearGradient` digunakan untuk memberi efek gradasi warna pada bagian header Mochi si Pet Virtual. |
| `CircleAvatar` | `CircleAvatar` digunakan untuk menampilkan ikon pet dalam bentuk lingkaran pada bagian profil dan item informasi. |
| `Icon` | `Icon` digunakan untuk menampilkan simbol data pet, seperti ikon nama, jenis, makanan, sifat, dan tanda centang pada tips. |
| `Text` | `Text` digunakan untuk menampilkan data statis seperti Mochi si Pet Virtual, nama pet, jenis pet, makanan favorit, sifat pet, dan tips merawat. |
| `SizedBox` | `SizedBox` digunakan untuk memberi jarak antar elemen, seperti jarak antara ikon, teks, kartu data, dan tombol. |
| `Row` | `Row` digunakan untuk menyusun ikon dan teks data pet secara horizontal dalam satu baris. |
| `Expanded` | `Expanded` digunakan agar teks data pet dan tips dapat menyesuaikan lebar layar tanpa keluar dari tampilan. |
| `ElevatedButton.icon` | `ElevatedButton.icon` digunakan sebagai tombol kembali ke halaman utama dengan ikon panah dan teks. |
| `Border` | `Border` digunakan untuk memberi garis tepi pada kotak tips agar bagian tips terlihat lebih jelas. |

### Analisis Widget pada Stateful Page / Happiness Counter

| Widget | Analisis |
|---|---|
| `Scaffold` | `Scaffold` digunakan sebagai kerangka utama halaman agar halaman memiliki struktur seperti `AppBar` dan `body`. |
| `AppBar` | `AppBar` digunakan untuk menampilkan judul halaman di bagian atas aplikasi. |
| `SingleChildScrollView` | `SingleChildScrollView` digunakan agar halaman dapat digulir ketika isi halaman melebihi ukuran layar. |
| `Padding` | `Padding` digunakan untuk memberikan jarak di sekitar widget agar tampilan tidak terlalu menempel ke tepi layar. |
| `Column` | `Column` digunakan untuk menyusun widget secara vertikal dari atas ke bawah. |
| `Container` | `Container` digunakan untuk membungkus widget lain agar dapat diberikan padding, warna latar, border radius, dan dekorasi lainnya. |
| `BoxDecoration` | `BoxDecoration` digunakan untuk memberikan dekorasi pada `Container`, seperti warna, gradasi, bayangan, dan bentuk lingkaran. |
| `LinearGradient` | `LinearGradient` digunakan untuk memberikan efek warna gradasi pada bagian header halaman. |
| `CircleAvatar` | `CircleAvatar` digunakan untuk menampilkan ikon pet dalam bentuk lingkaran agar tampilan lebih menarik. |
| `Icon` | `Icon` digunakan untuk menampilkan simbol visual seperti ikon pet, makanan, game, reset, dan ekspresi kebahagiaan. |
| `Text` | `Text` digunakan untuk menampilkan tulisan dan angka seperti judul, deskripsi, level kebahagiaan, nilai happiness, dan status pet. |
| `SizedBox` | `SizedBox` digunakan untuk memberikan jarak antar widget agar tampilan tidak terlalu rapat. |
| `Row` | `Row` digunakan untuk menyusun tombol Beri Makan dan Ajak Main secara horizontal. |
| `Expanded` | `Expanded` digunakan agar tombol di dalam `Row` memiliki ukuran yang seimbang dan menyesuaikan lebar layar. |
| `ElevatedButton.icon` | `ElevatedButton.icon` digunakan untuk membuat tombol dengan ikon dan teks, seperti tombol Beri Makan, Ajak Main, dan tombol kembali. |
| `OutlinedButton.icon` | `OutlinedButton.icon` digunakan untuk membuat tombol Reset Happiness dengan tampilan garis tepi agar berbeda dari tombol utama. |
| `Center` | `Center` digunakan untuk menempatkan angka happiness tepat di tengah lingkaran. |
| `Border` | `Border` digunakan untuk memberikan garis tepi pada lingkaran level kebahagiaan agar bentuknya lebih jelas. |

## Perbedaan Stateless Page dan Stateful Page

| Stateless Page | Stateful Page |
|---|---|
| Menampilkan data pet yang tetap | Menampilkan nilai happiness yang berubah |
| Tidak memakai `setState()` | Memakai `setState()` |
| Tidak ada perubahan UI saat tombol ditekan, kecuali kembali halaman | Ada perubahan angka, status, dan ikon ekspresi |
| Fokus pada informasi pet | Fokus pada interaksi merawat pet |