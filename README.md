*MindPeace App: Penjelasan Aplikasi*

MindPeace adalah aplikasi mobile yang dirancang untuk mendukung kesehatan mental pengguna melalui berbagai fitur seperti halaman utama (Home), artikel terkait kesehatan mental (Articles), dan jurnal pribadi (Journal). Aplikasi ini dibangun menggunakan Flutter dan menggunakan state management dengan Provider. Berikut adalah penjelasan lebih detail tentang aplikasi MindPeace:

### Struktur Proyek

1. **main.dart**: File utama aplikasi yang menginisialisasi aplikasi Flutter dan menyediakan state management menggunakan Provider.
2. **home_page.dart**: Menyediakan tampilan untuk halaman utama aplikasi.
3. **articles_page.dart**: Menyediakan tampilan untuk halaman artikel.
4. **journal_page.dart**: Menyediakan tampilan untuk halaman jurnal.
5. **models/journal_entry_model.dart**: Menyediakan model untuk mengelola entri jurnal, memastikan jalur file sudah benar.

### Kode Utama

#### main.dart

- **MyApp**: Kelas ini merupakan root widget dari aplikasi. Menggunakan MultiProvider untuk menyediakan JournalEntryModel sebagai state management di seluruh aplikasi.
- **MaterialApp**: Widget utama yang mengatur tema aplikasi dan menetapkan MyHomePage sebagai halaman awal.
- **ThemeData**: Menetapkan tema aplikasi, termasuk warna utama (teal), warna hint (teal accent), dan tema teks yang menggunakan font Poppins.

#### MyHomePage

- **_MyHomePageState**: Kelas ini mengelola state untuk halaman utama, termasuk navigasi menggunakan BottomNavigationBar.
- **_widgetOptions**: List yang berisi halaman-halaman yang dapat dinavigasi: HomePage, ArticlesPage, dan JournalPage.
- **_onItemTapped**: Metode yang digunakan untuk mengubah halaman yang ditampilkan berdasarkan item yang dipilih di BottomNavigationBar.
- **Scaffold**: Mengatur struktur dasar dari halaman utama, termasuk AppBar, body yang menampilkan halaman yang dipilih, dan BottomNavigationBar.

### Fitur Utama

1. *HomePage*: Halaman utama yang berfungsi sebagai landing page aplikasi.
2. *ArticlesPage*: Halaman yang menampilkan berbagai artikel terkait kesehatan mental. Pengguna dapat membaca artikel-artikel yang berguna untuk meningkatkan kesehatan mental mereka.
3. *JournalPage*: Halaman yang memungkinkan pengguna untuk menulis dan mengelola jurnal pribadi. Pengguna dapat mencatat perasaan, pemikiran, dan pengalaman sehari-hari mereka.

### Manajemen State

Aplikasi ini menggunakan Provider untuk manajemen state. JournalEntryModel disediakan di seluruh aplikasi sehingga setiap perubahan dalam entri jurnal dapat diakses dan diubah dari berbagai bagian aplikasi tanpa perlu meneruskan data melalui widget tree.

### Tema dan Desain

Aplikasi menggunakan tema warna yang konsisten dengan warna utama teal dan font Poppins untuk memberikan tampilan yang bersih dan modern. Tema ini mencakup berbagai elemen seperti ukuran font, gaya teks, dan warna untuk menciptakan pengalaman pengguna yang menyenangkan dan menenangkan.

MindPeace App dirancang dengan fokus pada kesehatan mental, memberikan pengguna akses mudah ke sumber daya kesehatan mental dan alat untuk mendukung kesejahteraan emosional mereka.
