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

## Tugas 9
### 1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
Kita harus membuat model Dart saat mengambil data JSON karena mdoel membertikan struktur data yg jelas dan aman. Jika langsung memetakan pakai Map, tipe data tidak terjamin valid. Tanpa model, tidak ada null-safety sehingga harus mengecek manual. Model juga meningkatkan maintainability karena semua parsing terpusat.

### 2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
- http -> Untuk mengirim/menerima data lewat HTTP (GET/POST) dan bekerja di level transport (stateless, tidak ingat login atau cookie)
- CookieRequest -> wrapper yang sudah otomatis mengelola cookie, session, dan CSRF ke Django yang dipakai untuk login/logout, lalu setiap request berikutnya akan otomatis membawa cookie user yg login, sehingga Django tau penggunanya.

### 3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Perlu agar semua bagian aplikasi menggunakan sesi login yg sama. Ketika user login di satu halaman, halaman lain dapat langsung memakai instance yang sama dengan cookie yg sudah tersimpan. Jika setiap widget punya cookierequest baru, halaman lain akan menganggap user belum login.

### 4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
Agar Flutter dapat terhubung dengan Django, kita perlu mengizinkan akses dari emulator melalui 10.0.2.2 di ALLOWED_HOSTS, mengaktifkan CORS, serta mengonfigurasi cookie/SameSite agar sesi login dapat disimpan dan dikirim bersama request. Selain itu, aplikasi Android juga harus diberi izin internet agar dapat melakukan HTTP request. Jika salah satu pengaturan ini tidak benar, koneksi bisa gagal karena Django menolak host yang tidak terdaftar, CORS memblokir permintaan, cookie sesi tidak terkirim sehingga pengguna selalu dianggap belum login, atau aplikasi Android tidak bisa mengakses jaringan sama sekali.

### 5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Ketika user mengisi form di Flutter, data menjadi JSON dan dikirim ke server melalui HTTP (sering menggunakan CookieRequest agar sesi login ikut terkirim). Django kemudian menerima JSON-nya, mendeserialisasinya menjadi objek Python, memprosesnya ke database, lalu mengembalikan respons dalam bentuk JSON. Flutter menerima respons itu, mendeserialisasi JSON, lalu memetakannya ke model Dart agar data memiliki tipe yang aman. Setelah itu, objek model tersebut digunakan oleh widget untuk merender tampilan UI yang menampilkan data terbaru.

### 6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Pertama user mengisi form login/register Flutter, data dikirim ke endpoint Django melalui CookieRequest, Django memvaidasi data lalu mengembalikan respons dan cookie session yang disimpan oleh CookieRequest. Setiap request Flutter melampirkan Cookie sehingga Django mengenali user untuk semua halaman yag diakses. Ketika logout, Flutter memanggil endpoint logout Django, lalu Django menghapus session dan CookieRequest ikut menghapus cookie lokal sehingga user kembali ke halaman login.

### 7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
- Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
Mengonfigurasi Django dengan menginstal `django-cors-headers` dan mengatur variabel settings.py `CORS_ALLOW_ALL_ORIGINS = True`.
Lalu sevelum menjalankan Flutter, jalankan aplikasi Django secara lokal agar Flutter dapat mengakses endpoint JSON-nya (seperti http://localhost:8000/json/)

- Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
Membuat app authentication di Django dan membuat perubahan di settings.py lalu buat views untuk register dan URL routingnya. Selanjutnya, buat register.dart dan memanggil register di Django dengan `"http://localhost:8000/auth/register/"`

- Membuat halaman login pada proyek tugas Flutter.
Buat views login di authentication Django dan URL routingnya, lalu buat login.dart pada FLutter dan memanggil login di Django dengan `"http://localhost:8000/auth/login/"`

- Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
Integrasi autentikasi Django dilakukan dengan membuat instance `CookieRequest` dari package `pbp_django_auth`. Instance ini dipakai untuk memanggil `request.login(url, data)` untuk mengirimkan kredensial ke endpoint Django, dan setelah itu cookie sesi akan disimpan secara otomatis sehingga status login pengguna tetap terjaga di seluruh bagian aplikasi.

- Membuat model kustom sesuai dengan proyek aplikasi Django.
Model dibuat dengan menyalin JSON produk Django lalu menggunakan Quicktype untuk membuat class Model Dart secara otomatis

- Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
Memanggil fungsi asinkron `fetchProduct` yang melakukan permintaan request.get('.../json/') menggunakan CookieRequest, kemudian data JSON yang diterima di-decode dan dikonversi menjadi daftar objek Model Dart dan ditampilkan ke UI.

- Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
Buat halaman detail baru yang menerima objek Model Dart dari item yang dipilih sebagai argumen wajib. Kemudian, pada halaman daftar item, implementasikan fungsi onTap di setiap kartu yang menggunakan Navigator.push untuk menavigasi sambil mengirimkan objek ProductEntry yang diklik ke halaman detail tersebut.

- Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.
Membuat fungsi views baru pada views.py di main untuk mengambil product yang user sama dengan request.user.
`product_list = Product.objects.filter(user=request.user)` 
Lalu kembalikan data dalam bentuk JSON lalu di Flutter fetchProduct.