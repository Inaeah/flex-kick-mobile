# flex_kick Mobile Vers

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Tugas 7
### 1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Widget tree adalah struktur hierarki yang menggambarkan susunan widget dalam aplikasi. Di dalam tree, satu widget bisa menjadi pareng yg menampung widget lain, widget yg ditampung disebut child. Hubungan parent-child menentukan tata letak antar widget. Parent bisa mengatur posisi atau ukuran child, tapi child tidak bisa mengubah parentnya.

### 2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
- MaterialApp
Digunakan sebagai root aplikasi untuk menyediakan tema dan struktur dasar UI Material Design.
- Scaffold
Digunakan untuk menyediakan kerangka halaman dengan AppBar dan body
- AppBar
Menampilkan top bar dengan judul aplikasi.
- Padding
Memberikan jarak di sekeliling widget.
- Column 
Menyusun widget secara vertikal.
- Row
Menyusun widget secara horizontal.
- Card 
Digunakan untuk menampilkan elemen card.
- Container
Digunakan sebagai wadah.
- Center
Digunakan untuk menempatkan widget di tengah.
- GridView.count
Digunakan untuk menampilkan daftar menu berbentuk grid.
- Text, Icon, Material
Digunakan untuk menampilkan ikon dan teks.
- Inkwell
Menambahkan efek sentuhan pada widget yg bisa ditekan.
- SnackBar
Digunakan untuk menampilkan notifikasi kecil di bawah.

### 3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
Widget materialApp berfungsi sebagai pembungkus yang mengatur hal seperti tema warna, font, judul aplikasi, dan sistem pindah halaman. Widget ini sering digunakan sebagai widget root karena banyak widget lain yang tidak akan berfungsi dengan benar tanpa widget ini, seperti Scaffold dan SnackBar.

### 4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
StatelessWidget immutable (tidak punya state yg bisa berubah setelah dibuat), UI nya hanya dibuat sekali dan tidak bisa diperbarui. StatelessWidget cocok untuk tampilan statis yg tidak akan berubah seperti teks, ikon, dan layout yang tidak berubah.
Sedangkan, statefulWidget punya state yang bisa berubah saat app berjalan (mutable), UI nya dapat diperbarui ketika ada perubahan. StatefulWidget cocok untuk tampilan dinamis seperti animasi, form input, dan perubahan UI setelah klik.

### 5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext adalah objek yang merepresentasikan posisi widget dalam widget tree. Dengan buildcontext, widget bisa menentukan lokasi widget di tree dan mengakses data dari widget di atasnya.

### 6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
hot reload di flutter membuat kita dapat inject perubahan kode langsung ke aplikasi yang sedang berjalan tanpa menghentikannya. Sedangkan, hot restart akan memulai ulang aplikasi dari awal dengan menghapus semua state yang aktif.

## Tugas 8
### 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
Perbedaan antara Navigator.push() dengan Navigator.pushReplacement() adalah cara mereka menambahkan halaman ke stack. Pada Navigator.push(), ia menambahkan halaman baru di atas halaman sebelumnya, sehingga kita bisa kembali ke halaman sebelumnya dengan tombol back. Sedangkan Navigator.pushReplacement() mengganti halaman sekarang dengan yg baru, halaman sebelumnya dihapus dari stack jadi tidak bisa kembali ke halaman sebelumnya

### 2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
Widget seperti scaffold, appbar, dan drawer digunakan untuk membangun struktur halaman yg konsisten. Scaffold berfungsi sebagai kerangka utama yg menyediakan tempat untuk elemen standar, seperti body, appbar, dan drawer. AppBar menampilkan judul halaman dan tombol navigasi. Drawer digunakan pengguna untuk pindah antarhalaman dengan mudah. Dengan memanfaatkan hierarchy widget ini, tiap halaman punya tata letak dan navigasi yg konsisten.

### 3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
Penggunaan layout widget seperti padding, SingleChildScrollView, dan ListView membuat tampilan form lebih rapih, responsif, dan nyaman digunakan. 
- Padding: Memberi jarak antar elemen agar tidak langsung menempel.
- SingleChildScrollView: Membuat seluruh form dapat discroll saat isinya panjang sehingga pengguna bisa melihat seluruh halaman.
- ListView: Berguna saat form berisi banyak elemen dinamis karena otomatis menyediakan scroll dan mengatur posisi widget secara vertikal.

### 4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
Agar aplikasi memiliki identitas visual yang konsisten dengan brand toko, FlexKick menggunakan warna yang konsisten pada setiap halaman aplikasi agar FlexKick memiliki identitas visual yang kuat.