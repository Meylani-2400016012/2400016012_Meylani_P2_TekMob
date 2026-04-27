Nama                    : Meylani  
NIM                     : 2400016012  
Semester                : IV  
Kelas Praktikum         : C  
Mata Kuliah Praktikum   : Teknologi Mobile  

# Meylani Pet Care

**Meylani Pet Care** adalah aplikasi Flutter sederhana yang dibuat untuk memenuhi tugas **Praktikum 2 Teknologi Mobile**. Aplikasi ini menerapkan konsep dasar Flutter, yaitu penggunaan widget, navigasi antar halaman, `StatelessWidget`, `StatefulWidget`, dan `setState()`.

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
```

## Analisis Widget

### Analisis Widget pada Stateless Page / Pet Profile

Berikut adalah beberapa widget yang digunakan pada halaman **Pet Profile**:

| No | Widget | Analisis |
|---|---|---|
| 1 | `Scaffold` | Digunakan sebagai kerangka utama halaman agar memiliki struktur seperti `AppBar` dan `body`. |
| 2 | `AppBar` | Digunakan untuk menampilkan judul halaman Pet Profile di bagian atas aplikasi. |
| 3 | `SingleChildScrollView` | Digunakan agar seluruh isi halaman tetap dapat dilihat dengan cara digulir ketika konten melebihi ukuran layar. |
| 4 | `Padding` | Digunakan untuk memberi jarak pada isi halaman agar tidak menempel ke tepi layar. |
| 5 | `Column` | Digunakan untuk menyusun bagian profil pet, data pet, tips merawat, dan tombol kembali secara vertikal. |
| 6 | `Container` | Digunakan untuk membungkus bagian tertentu seperti profil, data pet, dan tips agar dapat diberi dekorasi. |
| 7 | `BoxDecoration` | Digunakan untuk memberi hiasan pada `Container`, seperti warna latar, gradasi, border radius, dan bayangan. |
| 8 | `LinearGradient` | Digunakan untuk memberikan efek gradasi warna pada bagian header profil pet. |
| 9 | `CircleAvatar` | Digunakan untuk menampilkan ikon pet dalam bentuk lingkaran agar tampilan lebih menarik. |
| 10 | `Icon` | Digunakan untuk menampilkan simbol visual seperti ikon nama, jenis pet, makanan favorit, sifat pet, dan tips. |
| 11 | `Text` | Digunakan untuk menampilkan teks statis seperti nama pet, jenis pet, makanan favorit, sifat, dan tips merawat. |
| 12 | `SizedBox` | Digunakan untuk memberi jarak antar widget agar tampilan tidak terlalu rapat. |
| 13 | `Row` | Digunakan untuk menyusun ikon dan teks data pet secara horizontal dalam satu baris. |
| 14 | `Expanded` | Digunakan agar teks dapat menyesuaikan lebar layar dan tidak keluar dari tampilan. |
| 15 | `ElevatedButton.icon` | Digunakan untuk membuat tombol kembali ke halaman utama yang memiliki ikon dan teks. |
| 16 | `Border` | Digunakan untuk memberi garis tepi pada bagian tips agar terlihat lebih jelas. |

### Analisis Widget pada Stateful Page / Happiness Counter

Berikut adalah beberapa widget yang digunakan pada halaman **Happiness Counter**:

| No | Widget | Analisis |
|---|---|---|
| 1 | `Scaffold` | Digunakan sebagai kerangka utama halaman agar memiliki struktur seperti `AppBar` dan `body`. |
| 2 | `AppBar` | Digunakan untuk menampilkan judul halaman Happiness Counter di bagian atas aplikasi. |
| 3 | `SingleChildScrollView` | Digunakan agar halaman dapat digulir ketika isi halaman melebihi ukuran layar. |
| 4 | `Padding` | Digunakan untuk memberikan jarak di sekitar isi halaman agar tampilan lebih rapi. |
| 5 | `Column` | Digunakan untuk menyusun widget secara vertikal dari atas ke bawah. |
| 6 | `Container` | Digunakan untuk membungkus widget lain agar dapat diberi padding, warna latar, border radius, dan dekorasi. |
| 7 | `BoxDecoration` | Digunakan untuk memberikan dekorasi pada `Container`, seperti warna, gradasi, bayangan, dan bentuk lingkaran. |
| 8 | `LinearGradient` | Digunakan untuk memberikan efek warna gradasi pada bagian header halaman. |
| 9 | `CircleAvatar` | Digunakan untuk menampilkan ikon pet dalam bentuk lingkaran agar tampilan lebih menarik. |
| 10 | `Icon` | Digunakan untuk menampilkan simbol visual seperti ikon pet, makanan, permainan, reset, dan ekspresi kebahagiaan. |
| 11 | `Text` | Digunakan untuk menampilkan judul, deskripsi, level kebahagiaan, nilai happiness, dan status pet. |
| 12 | `SizedBox` | Digunakan untuk memberikan jarak antar widget agar tampilan tidak terlalu rapat. |
| 13 | `Row` | Digunakan untuk menyusun tombol Beri Makan dan Ajak Main secara horizontal. |
| 14 | `Expanded` | Digunakan agar tombol di dalam `Row` memiliki ukuran yang seimbang dan menyesuaikan lebar layar. |
| 15 | `ElevatedButton.icon` | Digunakan untuk membuat tombol dengan ikon dan teks, seperti tombol Beri Makan, Ajak Main, dan kembali. |
| 16 | `OutlinedButton.icon` | Digunakan untuk membuat tombol Reset Happiness dengan tampilan garis tepi agar berbeda dari tombol utama. |
| 17 | `Center` | Digunakan untuk menempatkan angka happiness tepat di tengah lingkaran. |
| 18 | `Border` | Digunakan untuk memberikan garis tepi pada lingkaran level kebahagiaan agar bentuknya lebih jelas. |

## Perbedaan Stateless Page dan Stateful Page

| Stateless Page | Stateful Page |
|---|---|
| Menampilkan data pet yang tetap | Menampilkan nilai happiness yang berubah |
| Tidak memakai `setState()` | Memakai `setState()` |
| Tidak ada perubahan UI saat tombol ditekan, kecuali kembali halaman | Ada perubahan angka, status, dan ikon ekspresi |
| Fokus pada informasi pet | Fokus pada interaksi merawat pet |

## Kesimpulan

Aplikasi **Meylani Pet Care** dibuat untuk memahami penggunaan widget dasar pada Flutter serta perbedaan antara `StatelessWidget` dan `StatefulWidget`.

Halaman **Pet Profile** menggunakan `StatelessWidget` karena data yang ditampilkan bersifat tetap. Sedangkan halaman **Happiness Counter** menggunakan `StatefulWidget` karena terdapat data `happiness` yang dapat berubah ketika pengguna menekan tombol.

Dengan aplikasi ini, konsep navigasi halaman, penggunaan widget, dan perubahan tampilan menggunakan `setState()` dapat dipahami dengan lebih mudah.