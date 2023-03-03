-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 02 mars 2023 à 16:33
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `spp`
--

-- --------------------------------------------------------

--
-- Structure de la table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
(1, '11 AKP', 'Akomondasi Perhotelan'),
(2, '12 RPL', 'Rekayasan Perangkat Lunak'),
(3, '12 RPL', 'Tenik Kendaran Ringan'),
(5, '10 AKP', 'Akomondasi Perhotelan');

-- --------------------------------------------------------

--
-- Structure de la table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bulan_dibayar` varchar(8) NOT NULL,
  `tahun_dibayar` varchar(8) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_dibayar`, `tahun_dibayar`, `id_spp`, `jumlah_bayar`) VALUES
(1, 1, '1234', '2023-02-22', '', '', 3, 200),
(2, 9, '09867', '2023-02-25', '', '', 3, 200),
(3, 1, '234', '2023-02-24', '', '', 2, 99998),
(4, 1, '234', '2023-02-28', '', '', 2, 2),
(5, 1, '1234', '2023-02-28', '', '', 3, 199),
(6, 1, '0897', '2023-02-28', '', '', 2, 100000),
(7, 1, '12345', '2023-03-04', '', '', 3, 3000000),
(8, 1, '0987', '2023-02-24', '', '', 3, 3000000),
(9, 1, '21543', '2023-02-24', '', '', 3, 3000000),
(10, 8, '27042005', '2023-02-24', '', '', 4, 200000),
(11, 1, '1010', '2023-03-10', '', '', 2, 100000),
(12, 1, '27042005', '2023-03-17', '', '', 4, 1800000);

-- --------------------------------------------------------

--
-- Structure de la table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(1, 'admin', 'admin', 'administrator', 'admin'),
(7, 'admin', 'admin', 'admin', 'admin'),
(8, '1', '1', 'petugas bagas', 'petugas'),
(9, 'petugas', '13', 'petugas', 'petugas');

-- --------------------------------------------------------

--
-- Structure de la table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` char(10) NOT NULL,
  `nis` char(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `id_spp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('0897', '8970', 'cindi fatimah', 0, 'kp.pairnangka', '083829913217', 2),
('0987', '0986', 'putra', 0, 'kp.cibitung', '0989776856', 3),
('1010', '1111', 'cindi fatimah', 1, 'kp.pasirnangka', '08329913217', 2),
('12345', '54321', 'Nadia', 0, 'kp.bojong salam', '083115697124', 3),
('21543', '2456', 'cindi fatimah', 3, 'kp.psirnangka', '083829913217', 3),
('234', '1485', 'rina', 0, 'kp.sodong', '08521422178', 2),
('27042005', '20056', 'indri', 1, 'kp.pasirnangka', '089979967', 4);

-- --------------------------------------------------------

--
-- Structure de la table `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
(2, 2023, 100000),
(3, 2024, 3000000),
(4, 2023, 2000000),
(8, 2025, 300000);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Index pour la table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`,`id_petugas`,`nisn`,`tgl_bayar`,`bulan_dibayar`);

--
-- Index pour la table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Index pour la table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`,`nis`,`nama`);

--
-- Index pour la table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
