# Dokumen Kebutuhan Produk (PRD): IndoChain MSME Identity Hub

## 1. Tinjauan Produk

**Visi Produk:** (proposal.md 1. EXECUTIVE SUMMARY)
Memberdayakan UMKM (MSMEs) melalui identitas digital yang aman dan portabel yang memungkinkan inklusi keuangan, memverifikasi kredensial bisnis, dan memfasilitasi perdagangan lintas batas antara Indonesia dan Cina.

**Target Pengguna:** (proposal.md 4.1 Target Market Segments - Primary MSME Segments)
- **Pengguna Utama:** UMKM (Produsen Pertanian, Pengrajin dan Produsen Kerajinan, Penyedia Ritel dan Jasa Kecil) di Indonesia dan Cina.
- **Pengguna Sekunder:** Institusi Keuangan, Platform E-commerce, Rantai Pasokan Perusahaan yang berinteraksi dengan UMKM ini.

**Tujuan Bisnis:** (proposal.md 1. EXECUTIVE SUMMARY & 2. PROBLEM STATEMENT)
- Mengatasi hambatan signifikan terhadap inklusi keuangan dan akses pasar bagi UMKM.
- Membuka akses ke kredit, pasar, dan layanan untuk jutaan pengusaha.
- Menciptakan nilai bagi lembaga keuangan, platform e-commerce, dan mitra rantai pasokan.
- Mencapai target basis pengguna 1 juta UMKM pada Tahun ke-5.

**Metrik Kesuksesan:** (proposal.md 8.5 Key Performance Indicators - User Metrics & Enterprise Metrics)
- Jumlah UMKM yang bergabung: Target 1 juta pada Tahun ke-5 (2.000 Y1, 15.000 Y2, 50.000 Y3, 200.000 Y4).
- Pengguna aktif bulanan: Target 700.000 pada Tahun ke-5.
- Jumlah mitra institusi keuangan: Target 50 pada Tahun ke-5.
- Jumlah klien perusahaan (rantai pasok/e-commerce): Target 50 pada Tahun ke-5.
- Volume transaksi yang difasilitasi (misal pinjaman): Target $3.5 miliar total dalam 5 tahun.

## 2. Persona Pengguna

### Persona 1: "Petani Jaya - Produsen Pertanian Rural Indonesia"
- **Demografi:** Petani skala kecil di daerah rural Indonesia, usia 35-55 tahun, tingkat kemahiran teknis dasar (pengguna smartphone untuk komunikasi dasar).
- **Tujuan:** (proposal.md 4.1) Mendapatkan akses ke pembiayaan formal untuk modal kerja dan ekspansi, mendapatkan sertifikasi kualitas untuk produknya, terhubung dengan pasar yang lebih luas dan adil.
- **Masalah (Pain Points):** (proposal.md 2.1) Kesulitan membuktikan kelayakan kredit karena kurangnya dokumentasi formal, rentan terhadap tengkulak, kesulitan memverifikasi kualitas produk ke pembeli besar.
- **Perjalanan Pengguna:** Mendaftar di platform IndoChain melalui aplikasi seluler, mengajukan kredensial (misalnya, riwayat transaksi informal, pendaftaran usaha tani), membagikan kredensial terverifikasi kepada bank untuk pengajuan pinjaman, menggunakan identitas digital untuk bertransaksi di platform e-commerce pertanian.

### Persona 2: "Pengrajin Kreatif - Produsen Kerajinan Ekspor Cina"
- **Demografi:** Pengrajin kerajinan tradisional di Cina, mencari pasar ekspor, usia 25-45 tahun, melek digital menengah (aktif di platform e-commerce).
- **Tujuan:** (proposal.md 4.1) Memverifikasi keaslian dan standar etika produk kerajinannya, mendapatkan sertifikat asal untuk ekspor, membangun kepercayaan dengan pembeli internasional.
- **Masalah (Pain Points):** (proposal.md 2.1) Rentan terhadap pemalsuan sertifikat, kesulitan menembus pasar global karena kurangnya kredensial yang diakui secara internasional, proses verifikasi yang rumit dan mahal.
- **Perjalanan Pengguna:** Mendaftar di IndoChain, mengunggah bukti produksi dan sertifikasi lokal, mendapatkan kredensial terverifikasi (misalnya, sertifikat keaslian, verifikasi produksi etis), membagikan kredensial ini kepada platform e-commerce lintas batas atau pembeli langsung.

### Persona 3: "Warung Maju - Penyedia Jasa Ritel Lokal Indonesia/Cina"
- **Demografi:** Pemilik toko kelontong kecil atau penyedia jasa lokal di area perkotaan atau semi-urban, usia 30-50 tahun, familiar dengan pembayaran digital dasar.
- **Tujuan:** (proposal.md 4.1) Menerima pembayaran digital dengan mudah, mendapatkan akses ke pinjaman mikro untuk stok barang, membangun kepercayaan pelanggan melalui identitas bisnis yang terverifikasi.
- **Masalah (Pain Points):** (proposal.md 2.1) Keterbatasan akses ke infrastruktur perbankan formal untuk pinjaman, kesulitan dalam verifikasi identitas untuk aktivasi e-wallet bisnis, risiko penipuan.
- **Perjalanan Pengguna:** Mendaftar di IndoChain, memverifikasi identitas bisnisnya, menggunakan identitas digital untuk mengaktifkan layanan keuangan digital, membagikan QR kredensial kepada pelanggan untuk membangun kepercayaan.

## 3. Kebutuhan Fitur

| Fitur                                  | Deskripsi                                                                 | User Stories                                                                                                                                                                                             | Prioritas | Kriteria Penerimaan                                                                                                                                                                                                                                                                                        | Ketergantungan                                |
|----------------------------------------|---------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
| **Pendaftaran & Manajemen Identitas Digital UMKM** | (proposal.md 3.2 Digital Wallet) Aplikasi seluler untuk UMKM membuat & mengelola identitas digital & kredensial mereka. | Sebagai UMKM, saya ingin mendaftar dengan mudah di platform. Sebagai UMKM, saya ingin menyimpan dan mengelola kredensial bisnis saya secara aman. Sebagai UMKM, saya ingin mengontrol siapa yang dapat melihat data saya. | Wajib     | UMKM dapat membuat akun. UMKM dapat mengunggah dokumen pendukung. UMKM dapat melihat kredensial yang diterbitkan. UMKM dapat memberikan/mencabut izin akses data. Menggunakan protokol Self-Sovereign Identity (SSI) seperti Hyperledger Aries. DIDs sesuai standar W3C.                                            | Infrastruktur Blockchain                      |
| **Penerbitan Kredensial Terverifikasi**  | (proposal.md 3.2 Credential Issuance System) Sistem untuk entitas resmi menerbitkan kredensial ke UMKM. | Sebagai entitas penerbit (mis. pemerintah, asosiasi), saya ingin menerbitkan kredensial digital kepada UMKM.                                                                                                 | Wajib     | Entitas resmi dapat login dan menerbitkan kredensial. Kredensial menggunakan kriptografi kunci publik. Ada template untuk kredensial standar (registrasi bisnis, pajak, sertifikasi kualitas). Mendukung Bahasa Indonesia, Mandarin, Inggris.                                                                 | Pendaftaran UMKM, Skema Kredensial            |
| **Verifikasi Kredensial**              | (proposal.md 3.2 Verification Portal) Portal web & API untuk verifikasi kredensial UMKM.        | Sebagai bank/pembeli, saya ingin memverifikasi kredensial UMKM dengan mudah. Sebagai UMKM, saya ingin membagikan kredensial saya melalui QR code.                                                              | Wajib     | Pihak ketiga dapat memverifikasi kredensial melalui portal atau API. Verifikasi QR code berfungsi. Ada kontrol izin granular untuk pembagian data. Ada jejak audit penerbitan & verifikasi. Menggunakan zero-knowledge proofs untuk privasi jika memungkinkan.                                          | Penerbitan Kredensial                        |
| **Integrasi Sistem Keuangan & E-commerce** | (proposal.md 3.3 Use Cases) Platform dapat berintegrasi dengan bank, e-commerce, dan sistem rantai pasok. | Sebagai UMKM, saya ingin menggunakan identitas digital saya untuk mengajukan pinjaman ke bank. Sebagai platform e-commerce, saya ingin mengintegrasikan IndoChain untuk verifikasi penjual.                | Sebaiknya | API tersedia untuk integrasi. Ada SDK untuk pengembang pihak ketiga. Integrasi mulus dengan QRIS (Indonesia) dan Digital Yuan (Cina).                                                                                                                                                                   | Verifikasi Kredensial, Infrastruktur Blockchain |
| **Dukungan Lintas Batas (Indonesia-Cina)** | (proposal.md 3.5 Competitive Advantages) Kredensial dapat diverifikasi lintas negara.         | Sebagai UMKM Indonesia, saya ingin kredensial saya dapat diverifikasi oleh mitra di Cina, dan sebaliknya.                                                                                                    | Bagus     | Verifikasi kredensial berfungsi di kedua negara. Antarmuka & dukungan multi-bahasa (INA, MAN, ENG). Dibangun di BSN untuk kompatibilitas lintas batas.                                                                                                                                                    | Semua fitur inti                              |

## 4. Alur Pengguna (User Flows)

### Alur 1: Pendaftaran UMKM Baru & Penerbitan Kredensial Awal
1.  UMKM mengunduh aplikasi seluler IndoChain.
2.  UMKM melakukan pendaftaran menggunakan detail dasar.
3.  UMKM mengunggah dokumen identifikasi bisnis (jika ada) atau bukti aktivitas usaha.
4.  Entitas penerbit (misalnya, asosiasi UMKM yang bekerja sama) memverifikasi informasi UMKM.
5.  Entitas penerbit menerbitkan kredensial dasar (misalnya, "Anggota Terverifikasi") ke dompet digital UMKM.
    - *Alur alternatif:* Pendaftaran dibantu oleh agen lapangan untuk UMKM dengan literasi digital rendah.
    - *Kondisi error:* Dokumen tidak valid, proses verifikasi gagal.

### Alur 2: UMKM Mengajukan Pinjaman ke Bank Menggunakan Kredensial
1.  UMKM login ke aplikasi seluler IndoChain.
2.  UMKM memilih opsi "Ajukan Pinjaman" dan memilih bank mitra.
3.  UMKM memberikan izin kepada bank untuk mengakses kredensial tertentu (misalnya, riwayat transaksi terverifikasi, sertifikat usaha).
4.  Bank (melalui Verification Portal atau API) mengakses dan memverifikasi kredensial UMKM.
5.  Bank mengevaluasi kelayakan kredit berdasarkan data terverifikasi.
6.  Bank menyetujui/menolak pinjaman. Smart contract dapat mengotomatisasi pencairan/pembayaran.
    - *Alur alternatif:* UMKM menunjukkan QR code kredensial langsung di kantor cabang bank.
    - *Kondisi error:* Kredensial tidak cukup, bank menolak akses, sistem bank offline.

### Alur 3: Perusahaan Memverifikasi UMKM untuk Rantai Pasok
1.  Perusahaan (pembeli besar) ingin memverifikasi UMKM pemasok.
2.  Perusahaan mengakses Verification Portal IndoChain atau menggunakan API yang terintegrasi.
3.  UMKM memberikan izin kepada perusahaan untuk melihat kredensial relevan (misalnya, sertifikasi kualitas, standar produksi, kepatuhan etis).
4.  Perusahaan melihat kredensial terverifikasi.
5.  Perusahaan membuat keputusan untuk memasukkan UMKM ke dalam rantai pasoknya.
    - *Kondisi error:* UMKM menolak memberikan izin, kredensial kadaluarsa.

## 5. Kebutuhan Non-Fungsional

### Performa
- **Waktu Muat Aplikasi Seluler:** < 3 detik untuk layar utama.
- **Pengguna Bersamaan:** (proposal.md 8.5) Mendukung hingga 700.000 pengguna aktif bulanan (target Y5), dengan puncak transaksi yang sesuai.
- **Waktu Respons Verifikasi Kredensial:** < 5 detik melalui API.

### Keamanan
- **Otentikasi:** (proposal.md 3.4) Protokol SSI (Hyperledger Aries), DIDs standar W3C.
- **Otorisasi:** Kontrol akses granular berbasis izin oleh UMKM.
- **Perlindungan Data:** (proposal.md 3.4) Kriptografi kunci publik, zero-knowledge proofs untuk privasi, tamper-evident credentials. Kepatuhan terhadap data sovereignty Indonesia & Cina.

### Kompatibilitas
- **Perangkat:** Aplikasi seluler untuk Android & iOS (fokus pada Android untuk jangkauan luas UMKM). Portal verifikasi berbasis web.
- **Browser:** Versi terbaru Chrome, Firefox, Safari untuk portal web.
- **Ukuran Layar:** Desain responsif untuk aplikasi seluler di berbagai ukuran layar smartphone umum.

### Aksesibilitas
- **Tingkat Kepatuhan:** (proposal.md 3.5) Antarmuka intuitif untuk pengguna dengan literasi digital rendah. Dukungan offline untuk area konektivitas terbatas.
- **Kebutuhan Spesifik:** Dukungan multi-bahasa (Bahasa Indonesia, Mandarin, Inggris).

## 6. Spesifikasi Teknis (Gambaran Umum)

### Frontend
- **Tumpukan Teknologi (Tech Stack):** Aplikasi seluler (React Native atau Flutter untuk cross-platform). Portal Web (React atau Vue.js).
- **Sistem Desain:** Akan ditentukan, fokus pada kemudahan penggunaan dan aksesibilitas.

### Backend
- **Tumpukan Teknologi (Tech Stack):** Node.js/Python/Java (akan ditentukan berdasarkan skalabilitas dan keahlian tim).
- **Kebutuhan API:** RESTful atau GraphQL API untuk verifikasi dan integrasi.
- **Database:** Kombinasi database SQL (untuk data relasional) dan NoSQL/Ledger (untuk data kredensial/transaksi blockchain).

### Infrastruktur
- **Blockchain:** (proposal.md 3.4) BSN (Blockchain-based Service Network), FISCO BCOS (untuk Cina), Hyperledger Fabric (untuk enterprise security).
- **Hosting:** Solusi cloud (AWS, Azure, atau GCP) dengan pertimbangan data residency.
- **Skalabilitas:** Dirancang untuk menangani 1 juta UMKM dan transaksi terkait.
- **CI/CD:** Proses deployment otomatis akan disiapkan.

## 7. Rencana Rilis

### MVP (v1.0) - (Mengacu proposal.md 6.1 & 6.2, fokus pilot)
- **Fitur:**
    - Pendaftaran UMKM dasar dan pembuatan dompet digital.
    - Penerbitan kredensial tunggal sederhana (misalnya, "UMKM Terdaftar").
    - Verifikasi kredensial dasar melalui QR code dan portal web sederhana.
    - Aplikasi seluler untuk UMKM (Android).
    - Portal penerbitan kredensial untuk 1-2 entitas pilot.
    - Pilot di satu wilayah di Indonesia (Jawa) dan satu di Cina (Zhejiang) untuk sektor pertanian/tekstil.
- **Target Waktu:** Bulan 1-12 (sesuai proposal: Foundation & Pilot Implementation).
- **Kriteria Sukses MVP:** (proposal.md 6.2 & 8.5) 100 UMKM di setiap negara berhasil didaftarkan dan memiliki kredensial. 2-3 institusi keuangan melakukan verifikasi. Feedback positif dari pengguna pilot. Test transaksi di BSN berhasil.

### Rilis Berikutnya
- **v1.1 (Market Entry):** (proposal.md 6.1 Phase 3) Ekspansi ke 10.000+ UMKM, penambahan fitur kredensial lanjutan, API untuk integrasi bank awal.
- **v2.0 (Scaling):** (proposal.md 6.1 Phase 4) Rollout nasional, fungsionalitas lintas batas penuh, integrasi enterprise.

## 8. Pertanyaan Terbuka & Asumsi

- **Pertanyaan 1:** Bagaimana strategi akuisisi UMKM yang paling efektif di area rural dengan literasi digital beragam? (Perlu detail dari "Village-level ambassadors program").
- **Pertanyaan 2:** Detail teknis implementasi zero-knowledge proofs dan dampaknya pada performa?
- **Pertanyaan 3:** Framework legal spesifik untuk validitas kredensial digital lintas batas Indonesia-Cina?
- **Asumsi 1:** UMKM bersedia mengadopsi identitas digital jika manfaatnya (akses keuangan, pasar) jelas.
- **Asumsi 2:** BSN menyediakan interoperabilitas yang cukup untuk kebutuhan platform.
- **Asumsi 3:** Regulasi pemerintah di kedua negara akan terus mendukung digitalisasi UMKM dan identitas digital.

## 9. Lampiran

### Wawasan dari Percakapan dengan AI
- *(Catatan: Bagian ini akan diisi setelah melakukan dialog mendalam dengan AI seperti yang disarankan dalam `panduanprd.md` Tahap 4. Untuk saat ini, ini adalah placeholder).*
- **Percakapan 1:** [Tanggal, Model AI, wawasan utama]
- **Edge Case dari AI:** [Daftar skenario]
- **Saran Perbaikan dari AI:** [Saran]

### Glosarium
- **UMKM:** Usaha Mikro, Kecil, dan Menengah (MSME: Micro, Small, and Medium Enterprises).
- **SSI:** Self-Sovereign Identity (Identitas Kedaulatan Diri).
- **DID:** Decentralized Identifier (Pengenal Terdesentralisasi).
- **BSN:** Blockchain-based Service Network.
- **PRD:** Product Requirements Document (Dokumen Kebutuhan Produk).
- **KPI:** Key Performance Indicator (Indikator Kinerja Utama).
- **MVP:** Minimum Viable Product (Produk Minimum yang Layak).
