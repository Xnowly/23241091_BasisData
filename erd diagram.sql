CREATE TABLE `Siswa` (
  `id_siswa` int PRIMARY KEY,
  `nama_depan` varchar(255),
  `nama_tengah` varchar(255),
  `nama_belakang` varchar(255),
  `jalan` varchar(255),
  `kecamatan` varchar(255),
  `kabupaten_kota` varchar(255),
  `sosial_media` varchar(255),
  `nomor_hp` int,
  `asal_sekolah` varchar(255)
);

CREATE TABLE `Pembayaran` (
  `id_pembayaran` int PRIMARY KEY,
  `id_siswa` int,
  `metode_pembayaran` varchar(255),
  `jumlah_pembayaran` int,
  `riwayat_pembayaran` varchar(255)
);

CREATE TABLE `Mata_Pelajaran` (
  `id_mata_pelajaran` int PRIMARY KEY,
  `id_siswa` int,
  `id_guru` int,
  `id_kelas` int,
  `kurikulum` varchar(255),
  `nama_mata_pelajaran` varchar(255)
);

CREATE TABLE `Kelas` (
  `id_kelas` int PRIMARY KEY,
  `id_jadwal_kursus` int,
  `tingkat_kelas` varchar(255),
  `nama_kelas` varchar(255)
);

CREATE TABLE `Jadwal_Kursus` (
  `id_jadwal_kursus` int PRIMARY KEY,
  `jam_masuk` time,
  `jam_keluar` time,
  `durasi` int
);

CREATE TABLE `Guru` (
  `id_guru` int PRIMARY KEY,
  `nama_depan` varchar(255),
  `nama_tengah` varchar(255),
  `nama_belakang` varchar(255),
  `jalan` varchar(255),
  `kecamatan` varchar(255),
  `kabupaten_kota` varchar(255),
  `nomor_hp` int,
  `keahlian` varchar(255)
);

ALTER TABLE `Pembayaran` ADD FOREIGN KEY (`id_siswa`) REFERENCES `Siswa` (`id_siswa`);

ALTER TABLE `Mata_Pelajaran` ADD FOREIGN KEY (`id_siswa`) REFERENCES `Siswa` (`id_siswa`);

ALTER TABLE `Mata_Pelajaran` ADD FOREIGN KEY (`id_guru`) REFERENCES `Guru` (`id_guru`);

ALTER TABLE `Mata_Pelajaran` ADD FOREIGN KEY (`id_kelas`) REFERENCES `Kelas` (`id_kelas`);

ALTER TABLE `Kelas` ADD FOREIGN KEY (`id_jadwal_kursus`) REFERENCES `Jadwal_Kursus` (`id_jadwal_kursus`);
