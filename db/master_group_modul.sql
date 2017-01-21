/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50620
Source Host           : 127.0.0.1:3306
Source Database       : dbsia_aplikasi

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-12-09 20:47:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for master_group_modul
-- ----------------------------
DROP TABLE IF EXISTS `master_group_modul`;
CREATE TABLE `master_group_modul` (
  `id_group` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(64) NOT NULL,
  `id_icon` int(11) NOT NULL,
  `order` int(3) NOT NULL,
  `is_aktif` enum('Ya','Tidak') NOT NULL,
  PRIMARY KEY (`id_group`),
  KEY `group_icon` (`id_icon`),
  CONSTRAINT `group_icon` FOREIGN KEY (`id_icon`) REFERENCES `master_icon` (`id_icon`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_group_modul
-- ----------------------------
INSERT INTO `master_group_modul` VALUES ('1', 'PMB', '56', '1', 'Ya');
INSERT INTO `master_group_modul` VALUES ('2', 'Ketua Admisi', '1', '2', 'Ya');
INSERT INTO `master_group_modul` VALUES ('3', 'System', '102', '200', 'Ya');
INSERT INTO `master_group_modul` VALUES ('4', 'Kurikulum', '63', '3', 'Ya');
INSERT INTO `master_group_modul` VALUES ('5', 'BAA', '1', '10', 'Ya');
INSERT INTO `master_group_modul` VALUES ('6', 'Ka BAA', '1', '11', 'Ya');
INSERT INTO `master_group_modul` VALUES ('7', 'Keuangan', '1', '13', 'Ya');
INSERT INTO `master_group_modul` VALUES ('8', 'Rektorat', '1', '12', 'Ya');
INSERT INTO `master_group_modul` VALUES ('9', 'Dosen', '1', '20', 'Ya');
INSERT INTO `master_group_modul` VALUES ('10', 'Pendaftaran PKKMB', '332', '30', 'Ya');
INSERT INTO `master_group_modul` VALUES ('11', 'Jurusan', '1', '16', 'Ya');
INSERT INTO `master_group_modul` VALUES ('12', 'Klinik', '1', '19', 'Ya');
INSERT INTO `master_group_modul` VALUES ('13', 'Inquiry', '1', '90', 'Ya');
INSERT INTO `master_group_modul` VALUES ('14', 'Presensi', '1', '17', 'Ya');
INSERT INTO `master_group_modul` VALUES ('15', 'KRS', '102', '5', 'Ya');
INSERT INTO `master_group_modul` VALUES ('16', 'Ujian', '64', '9', 'Ya');
INSERT INTO `master_group_modul` VALUES ('17', 'Akademik', '419', '12', 'Ya');
INSERT INTO `master_group_modul` VALUES ('18', 'KHS', '54', '6', 'Ya');
INSERT INTO `master_group_modul` VALUES ('19', 'Tampung', '1', '22', 'Ya');
INSERT INTO `master_group_modul` VALUES ('20', 'Biodata', '331', '999', 'Ya');
INSERT INTO `master_group_modul` VALUES ('21', 'Virtual Class', '1', '70', 'Ya');
INSERT INTO `master_group_modul` VALUES ('22', 'Bimbingan Akademik', '1', '50', 'Ya');
INSERT INTO `master_group_modul` VALUES ('23', 'Transkrip', '46', '7', 'Ya');
INSERT INTO `master_group_modul` VALUES ('24', 'Skripsi', '172', '10', 'Ya');
INSERT INTO `master_group_modul` VALUES ('25', 'Statistik', '26', '18', 'Ya');
INSERT INTO `master_group_modul` VALUES ('26', 'SMS', '105', '19', 'Ya');
INSERT INTO `master_group_modul` VALUES ('27', 'Evaluasi', '242', '15', 'Ya');
INSERT INTO `master_group_modul` VALUES ('28', 'SDM', '1', '80', 'Tidak');
INSERT INTO `master_group_modul` VALUES ('29', 'Perpustakaan', '1', '16', 'Ya');
INSERT INTO `master_group_modul` VALUES ('30', 'Asset', '1', '98', 'Ya');
INSERT INTO `master_group_modul` VALUES ('31', 'Bank', '1', '6', 'Ya');
INSERT INTO `master_group_modul` VALUES ('32', 'Akuntansi', '1', '7', 'Ya');
INSERT INTO `master_group_modul` VALUES ('33', 'FingerPrint', '1', '3', 'Ya');
INSERT INTO `master_group_modul` VALUES ('34', 'Manual', '1', '101', 'Ya');
INSERT INTO `master_group_modul` VALUES ('35', 'Pembelajaran', '59', '8', 'Ya');
INSERT INTO `master_group_modul` VALUES ('36', 'Sarpras', '68', '4', 'Ya');
INSERT INTO `master_group_modul` VALUES ('37', 'Penjaminan Mutu', '242', '102', 'Ya');
INSERT INTO `master_group_modul` VALUES ('38', 'PDDIKTI', '50', '17', 'Ya');
INSERT INTO `master_group_modul` VALUES ('39', 'Wisuda', '172', '11', 'Ya');
INSERT INTO `master_group_modul` VALUES ('40', 'Keuangan', '217', '13', 'Ya');
INSERT INTO `master_group_modul` VALUES ('41', 'Beasiswa', '268', '14', 'Ya');
INSERT INTO `master_group_modul` VALUES ('42', 'Master', '326', '20', 'Ya');
INSERT INTO `master_group_modul` VALUES ('43', 'Admin', '420', '21', 'Ya');
INSERT INTO `master_group_modul` VALUES ('44', 'LPPM', '257', '7', 'Ya');
INSERT INTO `master_group_modul` VALUES ('45', 'e-Learning', '171', '-5', 'Ya');
INSERT INTO `master_group_modul` VALUES ('46', 'Laporan & Saran', '241', '999', 'Ya');
