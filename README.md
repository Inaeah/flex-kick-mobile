# flex_kick

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Flex Kick Mobile Vers

## Tugas 7
### 1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Widget tree adalah struktur hierarki yang menggambarkan susunan widget dalam aplikasi. Di dalam tree, satu widget bisa menjadi pareng yg menampung widget lain, widget yg ditampung disebut child. Hubungan parent-child menentukan tata letak antar widget. Parent bisa mengatur posisi atau ukuran child, tapi child tidak bisa mengubah parentnya.

### 2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.

### 3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
Widget materialApp berfungsi sebagai pembungkus yang mengatur hal seperti tema warna, font, judul aplikasi, dan sistem pindah halaman. Widget ini sering digunakan sebagai widget root karena banyak widget lain yang tidak akan berfungsi dengan benar tanpa widget ini, seperti Scaffold dan SnackBar.

### 4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
StatelessWidget immutable (tidak punya state yg bisa berubah setelah dibuat), UI nya hanya dibuat sekali dan tidak bisa diperbarui. StatelessWidget cocok untuk tampilan statis yg tidak akan berubah seperti teks, ikon, dan layout yang tidak berubah.
Sedangkan, statefulWidget punya state yang bisa berubah saat app berjalan (mutable), UI nya dapat diperbarui ketika ada perubahan. StatefulWidget cocok untuk tampilan dinamis seperti animasi, form input, dan perubahan UI setelah klik.

### 5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext adalah objek yang merepresentasikan posisi widget dalam widget tree. Dengan buildcontext, widget bisa menentukan lokasi widget di tree dan mengakses data dari widget di atasnya.

### 6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
hot reload di flutter membuat kita dapat inject perubahan kode langsung ke aplikasi yang sedang berjalan tanpa menghentikannya. Sedangkan, hot restart akan memulai ulang aplikasi dari awal dengan menghapus semua state yang aktif.
