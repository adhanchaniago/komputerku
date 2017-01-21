/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50620
Source Host           : 127.0.0.1:3306
Source Database       : dbsia_aplikasi

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-12-09 20:47:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for master_modul
-- ----------------------------
DROP TABLE IF EXISTS `master_modul`;
CREATE TABLE `master_modul` (
  `id_modul` int(11) NOT NULL AUTO_INCREMENT,
  `id_group` int(11) NOT NULL,
  `nama` varchar(64) CHARACTER SET latin1 NOT NULL,
  `id_icon` int(11) NOT NULL,
  `script` varchar(64) CHARACTER SET latin1 NOT NULL,
  `order` int(3) NOT NULL,
  `order_dashboard` int(3) DEFAULT '100',
  `is_web` enum('Ya','Tidak') CHARACTER SET latin1 NOT NULL,
  `on_dashboard` enum('Ya','Tidak') NOT NULL,
  `is_aktif` enum('Ya','Tidak') CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_modul`),
  KEY `modul_group` (`id_group`),
  KEY `modul_icon` (`id_icon`),
  CONSTRAINT `modul_group` FOREIGN KEY (`id_group`) REFERENCES `master_group_modul` (`id_group`) ON UPDATE CASCADE,
  CONSTRAINT `modul_icon` FOREIGN KEY (`id_icon`) REFERENCES `master_icon` (`id_icon`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_modul
-- ----------------------------
INSERT INTO `master_modul` VALUES ('1', '3', 'Setup Modul', '32', 'master/modul', '1', '100', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('2', '3', 'Setup Group Modul', '112', 'master/group-modul', '1', '100', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('3', '3', 'Parameter Sistem', '98', 'master/parameter', '900', '100', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('4', '26', 'SMS Inbox', '124', 'sms/inbox', '5', '5', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('5', '26', 'SMS Sentitems', '260', 'sms/sentitems', '6', '6', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('6', '26', 'SMS Kuliah', '404', 'sms/kuliah', '1', '1', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('7', '26', 'SMS Outbox', '330', 'sms/outbox', '6', '6', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('8', '26', 'SMS Mahasiswa', '332', 'sms/mahasiswa', '2', '2', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('9', '26', 'SMS Dosen', '331', 'sms/dosen', '3', '3', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('10', '26', 'SMS Karyawan', '503', 'sms/karyawan', '4', '4', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('11', '26', 'SMS Group', '173', 'sms/group', '5', '5', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('12', '26', 'SMS Orang Tua', '65', 'sms/orang-tua', '4', '4', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('14', '26', 'SMS PMB', '467', 'sms/pmb', '4', '4', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('15', '4', 'Administrasi Mata Kuliah', '63', 'akademik-adm-mk/home', '1', '1', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('16', '4', 'Master Kurikulum', '256', 'kurikulum/master', '100', '100', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('17', '4', 'Master Mata Kuliah', '64', 'mk/master', '90', '90', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('18', '4', 'Master Jenis Mata Kuliah', '422', 'mk/jenis', '100', '100', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('19', '4', 'Master Jenis Kurikulum', '115', 'kurikulum/jenis', '100', '100', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('20', '4', 'Master Konsentrasi Mata Kuliah', '115', 'mk/konsentrasi', '100', '100', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('21', '4', 'Master Nilai Mata Kuliah', '88', 'mk/nilai', '100', '100', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('22', '27', 'Kuesioner LPM', '242', 'evaluasi/kuesioner', '4', '1', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('23', '27', 'Setup Waktu Evaluasi', '314', 'evaluasi/waktu', '1', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('24', '16', 'Cetak Kartu Ujian', '238', 'ujian/cetak-kartu', '3', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('25', '16', 'Cetak Presensi Ujian', '238', 'ujian/cetak-presensi', '4', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('26', '16', 'Cetak Label Map LJU', '238', 'ujian/cetak-label', '5', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('27', '16', 'Jadwal Ujian Fakultas', '73', 'ujian/jadwal-fakultas', '9', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('28', '24', 'Input Pembimbing Skripsi', '206', 'skripsi/pembimbing', '3', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('30', '35', 'Cetak Presensi Kuliah', '238', 'pembelajaran/cetak-presensi', '2', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('31', '24', 'Setup Skripsi', '339', 'skripsi/setup-skripsi', '6', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('33', '35', 'Cetak Presensi Dosen', '238', 'pembelajaran/cetak-dosen', '3', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('34', '35', 'Cetak Sampul Presensi', '238', 'pembelajaran/cetak-sampul', '4', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('35', '24', 'Pembimbing Skripsi', '206', 'skripsi/pembimbing-list', '4', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('36', '35', 'Setup Presensi', '337', 'pembelajaran/setup-presensi', '6', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('37', '35', 'Jadwal Mengajar Dosen', '73', 'pembelajaran-jadwal-dosen/home', '8', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('38', '35', 'Input Nilai', '423', 'pembelajaran-input-nilai/home', '10', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('39', '18', 'Lihat KHS Semester', '2', 'khs/khs-semester', '10', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('40', '18', 'Lihat KHS Total', '2', 'khs/khs-total', '20', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('41', '18', 'Cetak KHS', '238', 'khs/cetak', '30', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('42', '23', 'Lihat Transkrip', '132', 'transkrip-lihat/home', '1', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('43', '23', 'Cetak Transkrip Aktif', '238', 'transkrip-cetak/home', '2', '2', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('44', '23', 'Cetak Transkrip Lulus', '238', 'transkrip-cetak-lulus/home', '3', '3', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('45', '23', 'Cetak Transkrip KRS Aktif', '238', 'transkrip-cetak-krs-aktif/home', '4', '4', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('46', '23', 'Cetak Transkrip KRS Lulus', '238', 'transkrip-cetak-krs-lulus/home', '5', '5', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('47', '23', 'Cetak Ijasah', '172', 'ijasah-cetak/home', '6', '6', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('48', '23', 'Upload Transkrip & Ijasah', '330', 'transkrip-upload-ijasah/home', '7', '7', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('49', '24', 'Yudisium Skripsi', '172', 'skripsi-yudisium/home', '2', '19', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('50', '26', 'Antrian SMS', '245', 'sms/antrian', '0', '0', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('51', '17', 'Reset Password Dosen', '200', 'akademik-password-dosen/home', '1', '0', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('52', '17', 'Setup Kaldik', '73', 'akademik-setup-kaldik/home', '2', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('53', '17', 'Lihat Kaldik', '74', 'akademik-lihat-kaldik/home', '3', '2', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('54', '15', 'Setup KRS', '101', 'krs-setup/setup', '0', '0', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('55', '15', 'Input KRS', '88', 'krs-input/home', '1', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('56', '15', 'Monitor Kelas', '116', 'krs-monitor-kelas/home', '2', '2', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('57', '15', 'MK Paket', '46', 'krs-mk-paket/home', '3', '3', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('58', '15', 'Lihat KRS', '116', 'krs-lihat/home', '4', '4', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('59', '15', 'Lihat KRS Total', '171', 'krs-lihat-total/home', '5', '5', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('60', '15', 'Cetak KRS', '238', 'krs-cetak/home', '6', '6', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('61', '15', 'Cetak KRS Perwalian', '88', 'krs-cetak-wali/home', '7', '7', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('62', '15', 'Catatan Bimbingan', '28', 'krs-catatan-bimbingan/home', '8', '8', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('63', '36', 'Input Gedung', '53', 'sarpras-input-gedung/home', '10', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('64', '36', 'Input Ruang', '68', 'sarpras-input-ruang/home', '20', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('65', '36', 'Daftar Gedung', '68', 'sarpras-daftar-gedung/home', '30', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('66', '36', 'Daftar Ruang', '68', 'sarpras-daftar-ruang/home', '40', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('67', '36', 'Manajemen Ruang', '68', 'sarpras/manajemen-ruang', '50', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('68', '20', 'Lihat Biodata', '206', 'biodata-lihat-biodata/home', '1', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('69', '20', 'Edit Biodata', '119', 'biodata-edit-biodata/home', '2', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('70', '20', 'Upload Foto', '330', 'biodata-upload-foto/home', '3', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('71', '20', 'Preference', '339', 'master/profil', '4', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('72', '20', 'Reset Password Mhsw', '337', 'biodata-reset-password/home', '5', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('73', '20', 'Data Pribadi Mahasiswa', '115', 'biodata-data-pribadi/home', '6', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('74', '20', 'Data Akademik MHS', '115', 'biodata-data-akademik/home', '7', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('75', '20', 'Data Lulusan MHS', '115', 'biodata-data-lulusan/home', '8', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('76', '17', 'Bimbingan Akademik', '104', 'akademik-bimbingan/home', '9', '1', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('77', '17', 'Input Dosen Wali', '503', 'akademik-dosen-wali/home', '7', '5', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('78', '17', 'Daftar Dosen Wali', '196', 'akademik-dosen-wali/daftar', '8', '7', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('79', '1', 'Setup PMB Online', '333', 'admisi-setup-cmhs/home', '10', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('80', '1', 'Setup Potongan SPI', '44', 'admisi-setup-potongan/home', '20', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('81', '1', 'Transfer PMB Online', '39', 'admisi-transfer-pmb/home', '30', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('82', '1', 'Edit Data PMB', '44', 'admisi-edit-pmb/home', '40', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('83', '1', 'Transfer Prog/Prodi PMB', '44', 'admisi-transfer-program/home', '50', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('84', '1', 'Cek Syarat PMB', '44', 'admisi-cek-syarat/home', '60', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('85', '1', 'Upload Dokumen PMB', '44', 'admisi-upload-dokumen/home', '70', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('86', '1', 'Setup Soal Ujian PMB', '44', 'admisi-soal-ujian/home', '80', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('87', '1', 'Setup Ujian PMB', '44', 'admisi-setup-ujian/home', '90', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('88', '1', 'Hasil Ujian PMB', '44', 'admisi-hasil-ujian/home', '100', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('89', '1', 'Setup Rekruitmen PMB', '44', 'admisi-setup-rekrutmen/home', '110', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('90', '1', 'Rekapitulasi Rekrutmen PMB', '44', 'admisi-rekap-rekrutmen/home', '120', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('91', '25', 'Distribusi Nilai Per MK', '26', 'statistik-distribusi-nilai-mk/home', '10', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('92', '25', 'Distribusi Nilai Total', '26', 'statistik-distribusi-nilai-total/home', '20', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('93', '25', 'Distribusi IPK per Angkatan', '26', 'statistik-distribusi-ipk-perangkatan/home', '30', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('94', '25', 'Distribusi IPK per Mahasiswa', '26', 'statistik-distribusi-ipk-permahasiswa/home', '40', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('95', '25', 'Distribusi IPK Lulusan', '26', 'statistik-distribusi-ipk-lulusan/home', '50', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('96', '25', 'Lama Studi', '26', 'statistik-lama-studi/home', '60', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('97', '25', 'Status Awal - Angkatan', '26', 'statistik-status-awal/home', '70', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('98', '25', 'Status Akhir - Angkatan', '26', 'statistik-status-akhir/home', '80', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('99', '25', 'Status per Angkatan', '26', 'statistik-status-perangkatan/home', '90', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('100', '25', 'Status per Tahun AJaran', '26', 'statistik-status-perta/home', '100', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('101', '25', 'Rekap PMB', '26', 'statistik-rekap-pmb/home', '110', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('102', '25', 'Lama Waktu Skripsi', '26', 'statistik-lama-waktu-skripsi/home', '120', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('103', '25', 'Beban Mengajar Dosen', '26', 'statistik-beban-mengajar-dosen/home', '130', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('104', '25', 'Rekap Kehadiran Dosen', '26', 'statistik-rekap-kehadiran-dosen/home', '140', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('105', '29', 'Buku Yang Dipinjam', '63', 'perpus-buku-dipinjam/home', '10', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('106', '29', 'Pencarian Buku', '63', 'perpus-pencarian-buku/home', '20', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('107', '29', 'E-Journal', '64', 'perpus-ejournal/home', '30', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('108', '17', 'Pendaftaran Kegiatan', '434', 'akademik-pendaftaran-kegiatan/home', '5', '9', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('109', '17', 'Monitor Aktivitas Mahasiswa', '116', 'akademik-monitor-aktivitas/home', '19', '10', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('110', '23', 'Lihat Draft Ijasah', '340', 'transkrip-draft-ijasah/home', '7', '7', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('111', '17', 'Konversi Nilai', '126', 'akademik-konversi-nilai/home', '17', '5', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('112', '39', 'Proses Wisuda', '172', 'wisuda/home', '2', '100', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('113', '38', 'Download EPSBED', '118', 'akademik-epsbed/home', '200', '200', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('114', '24', 'Log Book Bimbingan Skripsi', '332', 'skripsi-log-book/home', '1', '0', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('115', '37', 'Standar', '106', 'jm/standar', '10', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('116', '37', 'Komponen', '106', 'jm/komponen', '20', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('117', '37', 'Pertanyaan', '106', 'jm/pertanyaan', '30', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('118', '37', 'Jawaban', '106', 'jm/jawaban', '40', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('119', '37', 'Periode', '106', 'jm/periode', '50', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('120', '37', 'Auditee/Auditor', '331', 'jm/penilai', '60', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('121', '37', 'Tgl Menilai', '106', 'jm/tglmenilai', '70', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('122', '37', 'Penilaian Jaminan Mutu', '106', 'jm/nilaijm', '80', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('123', '37', 'Rekap Prodi', '106', 'jm/rekap', '90', '1', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('124', '37', 'Rekap Universitas', '106', 'jm/rekapuniv', '100', '1', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('125', '37', 'Dokumen', '143', 'jm/dokumen', '41', '41', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('126', '38', 'Proses PDDIKTI', '188', 'akademik-epsbed/home', '1', '1', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('127', '35', 'Setup Jadwal Kuliah', '418', 'pembelajaran/setup-jadwal-kuliah', '1', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('128', '35', 'Jadwal Kuliah Mahasiswa', '498', 'pembelajaran-jadwal-kuliah-mhs/home', '5', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('129', '35', 'Lihat Presensi Kuliah', '1', 'pembelajaran-presensi-kuliah/home', '7', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('130', '35', 'Input Presensi Kuliah', '1', 'input-presensi-dosen/home', '9', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('131', '35', 'Download Form Input Nilai', '1', 'pembelajaran-download-form/home', '11', null, 'Ya', 'Ya', 'Tidak');
INSERT INTO `master_modul` VALUES ('132', '35', 'Rekap Dosen Mengajar', '1', 'pembelajaran-rekap-dosen-mengajar/home', '12', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('133', '17', 'Setup Sebaran KKN', '246', 'akademik-sebaran-kkn/home', '6', '200', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('134', '24', 'Pengumpulan Berkas Skripsi', '46', 'skripsi-pengumpulan-berkas/home', '7', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('135', '16', 'Setup Jadwal Ujian', '44', 'ujian-setup-jadwal-ujian/home', '1', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('136', '16', 'Setup Jadwal Pengawas', '44', 'ujian-setup-pengawas/home', '2', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('137', '16', 'Cetak LJU Dosen', '238', 'ujian-cetak-dosen/home', '6', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('138', '16', 'Cetak Daftar Pengawas', '238', 'ujian-cetak-pengawas/home', '7', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('139', '16', 'Daftar Cekal Ujian', '238', 'ujian-cekal/home', '11', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('140', '16', 'Rekap Pengawas', '238', 'ujian-rekap-pengawas/home', '12', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('141', '17', 'Proses Status Mahasiswa', '435', 'akademik-proses-status/home', '18', '9', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('142', '17', 'Status Akademik', '408', 'akademik-proses-status/home', '4', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('143', '17', 'Pengajuan Pindah Prodi', '369', 'akademik-proses-status/prodi', '10', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('144', '17', 'Pengajuan Pindah kelas', '362', 'akademik-proses-status/kelas', '11', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('145', '17', 'Pengajuan Pindah/Keluar Univ', '364', 'akademik-proses-status/keluar', '12', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('146', '17', 'Proses Pindah prodi', '418', 'akademik-proses-status/prodi', '13', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('147', '17', 'Proses Pindah Kelas', '498', 'akademik-proses-status/kelas', '14', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('148', '17', 'Proses Pindah/Keluar Univ', '362', 'akademik-proses-status/keluar', '15', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('149', '17', 'Histori Pindah', '305', 'akademik-proses-status/histori', '16', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('150', '40', 'Histori Pembayaran Mhs', '217', 'keuangan-history-mhs/home', '1', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('151', '16', 'Jadwal Ujian Mahasiswa', '498', 'ujian/jadwal', '8', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('152', '16', 'Jadwal Ujian Universitas', '1', 'ujian/jadwal-fakultas', '10', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('153', '24', 'Pendaftaran Ujian Skripsi', '364', 'skripsi-pendaftaran-ujian/home', '5', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('154', '24', 'Jadwal Ujian Skripsi', '1', 'skripsi-jadwal-ujian/home', '8', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('155', '24', 'Penilaian Skripsi', '265', 'skripsi-penilaian/home', '10', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('156', '24', 'Hasil Ujian Skripsi', '63', 'skripsi-hasil/home', '11', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('157', '24', 'Riwayat ujian Skripsi', '178', 'skripsi-riwayat/home', '12', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('158', '39', 'Pendaftaran Wisuda', '337', 'wisuda/home', '1', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('159', '28', 'Input Karyawan', '185', 'sdm-input-karyawan/home', '1', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('160', '28', 'Input Dosen', '115', 'sdm-input-dosen/home', '2', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('161', '28', 'Data Dosen', '429', 'sdm-data-dosen/home', '3', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('162', '28', 'Data Karyawa', '186', 'sdm-data-karyawan/home', '4', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('163', '27', 'Copy Eval', '1', 'evaluasi-copy-eval/home', '2', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('164', '27', 'Setup Pertanyaan Eval', '1', 'evaluasi/kuesioner', '3', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('165', '27', 'Hasil Kues', '1', 'evaluasi-rekap-evaluasi/home', '5', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('166', '27', 'Input Eval PBM Mhs', '1', 'evaluasi-mhs/home', '6', null, 'Ya', 'Tidak', 'Tidak');
INSERT INTO `master_modul` VALUES ('167', '27', 'Input Eval PBM Dosen', '1', 'evaluasi-dosen/home', '7', null, 'Ya', 'Tidak', 'Tidak');
INSERT INTO `master_modul` VALUES ('168', '27', 'Rekap Eval Mhs', '1', 'evaluasi-rekap-mhs/home', '8', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('169', '27', 'Rekap Eval Dosen', '1', 'evaluasi-rekap-dosen/home', '9', null, 'Ya', 'Tidak', 'Tidak');
INSERT INTO `master_modul` VALUES ('170', '27', 'Lap Kinerja Dosen', '1', 'evaluasi-kinerja-dosen/home', '10', null, 'Ya', 'Tidak', 'Tidak');
INSERT INTO `master_modul` VALUES ('171', '29', 'Setup Login E-Journal', '63', 'perpustakaan-setup-ejournal/setup', '40', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('172', '10', 'Pendaftaran PKKMB', '332', 'pkkmb/home', '1', '1', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('173', '10', 'Periode PKKMB', '93', 'pkkmb/periode', '2', '2', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('174', '10', 'Minat Peserta PKKMB', '202', 'pkkmb/minat', '3', '3', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('175', '10', 'Ukuran Kaos PKKMB', '267', 'pkkmb/kaos', '4', '4', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('176', '10', 'Panitia PKKMB', '503', 'pkkmb/panitia', '5', '5', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('177', '24', 'Jadwal Ujian Kompre', '44', 'skripsi-jadwal-kompre/home', '9', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('178', '3', 'Setup Aplikasi / Hostname', '429', 'master/hostname', '0', '0', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('179', '41', 'Input Penerima Beasiswa', '172', 'beasiswa-penerima/home', '10', null, 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('180', '41', 'Monitoring Beasiswa', '56', 'beasiswa-monitoring/home', '20', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('181', '41', 'Jenis Beasiswa', '196', 'beasiswa/jenis', '30', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('182', '41', 'Periode Beasiswa', '1', 'beasiswa/periode', '40', null, 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('183', '42', 'Setup Riwayat Pendidikan', '4', 'lppm-master/pendidikan', '1', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('184', '42', 'Setup Skema Penelitian', '245', 'lppm-master/skema-penelitian', '2', '2', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('185', '42', 'Setup Skema Pengabdian', '424', 'lppm-master/skema-pengabdian', '3', '3', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('186', '42', 'Setup Bidang Ilmu', '289', 'lppm-master/bidang-ilmu', '4', '4', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('187', '42', 'Setup Kepakaran', '82', 'lppm-master/kepakaran', '5', '5', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('188', '42', 'Setup Bidang Pengabdian', '290', 'lppm-master/bidang-pengabdian', '6', '6', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('189', '42', 'Setup Dokumen Pendukung', '143', 'lppm-master/dokumen', '7', '7', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('190', '42', 'Setup Jenis Artikel', '64', 'lppm-master/jenis-artikel', '8', '8', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('191', '42', 'Setup Jenis HKI', '66', 'lppm-master/jenis-hki', '9', '9', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('192', '42', 'Setup Sumber Pendanaan', '217', 'lppm-master/sumber-dana', '10', '10', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('193', '42', 'Setup Kegiatan', '472', 'lppm-master/kegiatan', '100', '100', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('194', '44', 'Input Kegiatan Dosen', '503', 'lppm-kegiatan-dosen/home', '7', '7', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('195', '44', 'Verifikasi Kegiatan Dosen', '86', 'lppm-verifikasi-keg-dosen/home', '2', '2', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('196', '27', 'Setup Sesi Kuesioner', '93', 'lppm-kuesioner/sesi', '1', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('197', '27', 'Setup Kategori Kuesioner', '289', 'lppm-kuesioner/kategori', '2', '2', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('198', '27', 'Setup Pertanyaan Kuesioner', '241', 'lppm-kuesioner/pertanyaan', '3', '3', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('199', '37', 'Auditor Ceklist', '107', 'jm/form01', '120', '1', 'Ya', 'Tidak', 'Tidak');
INSERT INTO `master_modul` VALUES ('200', '37', 'Auditor Note General', '108', 'jm/form02', '130', '1', 'Ya', 'Tidak', 'Tidak');
INSERT INTO `master_modul` VALUES ('201', '37', 'PTK', '109', 'jm/form03', '140', '1', 'Ya', 'Tidak', 'Tidak');
INSERT INTO `master_modul` VALUES ('202', '37', 'OAI', '110', 'jm/form04', '150', '1', 'Ya', 'Tidak', 'Tidak');
INSERT INTO `master_modul` VALUES ('203', '37', 'Laporan Audit', '120', 'jm/form05', '160', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('204', '37', 'RTM', '130', 'jm/form06', '170', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('205', '37', 'Audit', '86', 'jm/formgab', '81', '1', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('206', '42', 'Setup Peran Dosen', '331', 'lppm-master/peran', '6', '6', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('207', '42', 'Setup Status HKI', '435', 'lppm-master/hki-status', '9', '7', 'Ya', 'Tidak', 'Ya');
INSERT INTO `master_modul` VALUES ('208', '45', 'Input Rapem/RPKPS', '181', 'elearning-rapem-rpkps/home', '1', '1', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('209', '45', 'Input Materi Kuliah', '46', 'elearning-materi/home', '2', '2', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('210', '45', 'Input Tugas Kuliah', '304', 'elearning-tugas/home', '3', '3', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('211', '45', 'Setup File / Dokumen', '143', 'elearning-files/home', '4', '4', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('212', '46', 'Tiket Laporan', '312', 'tiket/home', '1', '1', 'Ya', 'Ya', 'Ya');
INSERT INTO `master_modul` VALUES ('213', '46', 'Daftar Laporan & Saran', '70', 'tiket/laporan', '1', '1', 'Ya', 'Ya', 'Ya');
