-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Nov 2022 pada 22.49
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangowebsiteku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE cp1250_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE cp1250_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE cp1250_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post'),
(29, 'Can add guest', 8, 'add_guest'),
(30, 'Can change guest', 8, 'change_guest'),
(31, 'Can delete guest', 8, 'delete_guest'),
(32, 'Can view guest', 8, 'view_guest'),
(33, 'Can add guests', 10, 'add_guests'),
(34, 'Can change guests', 10, 'change_guests'),
(35, 'Can delete guests', 10, 'delete_guests'),
(36, 'Can view guests', 10, 'view_guests');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE cp1250_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE cp1250_bin NOT NULL,
  `first_name` varchar(30) COLLATE cp1250_bin NOT NULL,
  `last_name` varchar(150) COLLATE cp1250_bin NOT NULL,
  `email` varchar(254) COLLATE cp1250_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$ZdzQe3YzSnrl$m5MkfFIws2VTrbY9rf5WXMsbQJ6FV2y4vAkAGLOKsVo=', '2022-11-15 13:26:06.543388', 1, 'bayufajrin', '', '', 'bayufajrin08022002@gmail.com', 1, 1, '2022-11-14 06:21:45.674692');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_post`
--

CREATE TABLE `buku_post` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) COLLATE cp1250_bin NOT NULL,
  `sinopsis` longtext COLLATE cp1250_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

--
-- Dumping data untuk tabel `buku_post`
--

INSERT INTO `buku_post` (`id`, `judul`, `sinopsis`) VALUES
(2, 'inijugabuku', 'sama ini juga buku'),
(3, 'asdfsadf', 'asdfasdfsadf'),
(4, 'aefdfvfnj', 'fbgdbfxgjgjghjgd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE cp1250_bin DEFAULT NULL,
  `object_repr` varchar(200) COLLATE cp1250_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE cp1250_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

--
-- Dumping data untuk tabel `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-14 07:02:59.502607', '1', 'Post object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-11-14 07:08:29.532069', '2', 'inijugabuku', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-11-14 07:08:36.163614', '3', 'asdfsadf', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-11-14 07:08:48.704055', '4', 'aefdfvfnj', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-11-15 16:50:34.544184', '1', 'ini_buku_Python', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE cp1250_bin NOT NULL,
  `model` varchar(100) COLLATE cp1250_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'buku', 'post'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'tamu', 'guest'),
(9, 'tamu', 'guestt'),
(10, 'tamus', 'guests');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE cp1250_bin NOT NULL,
  `name` varchar(255) COLLATE cp1250_bin NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-14 06:18:16.368353'),
(2, 'auth', '0001_initial', '2022-11-14 06:18:16.680851'),
(3, 'admin', '0001_initial', '2022-11-14 06:18:17.383996'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-14 06:18:17.540248'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-14 06:18:17.571496'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-14 06:18:17.680856'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-14 06:18:17.727730'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-14 06:18:17.758981'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-14 06:18:17.774605'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-14 06:18:17.883983'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-14 06:18:17.883983'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-14 06:18:17.899622'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-14 06:18:17.949299'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-14 06:18:17.996178'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-14 06:18:18.043049'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-14 06:18:18.058694'),
(17, 'sessions', '0001_initial', '2022-11-14 06:18:18.121176'),
(18, 'buku', '0001_initial', '2022-11-14 06:40:32.886311'),
(19, 'tamu', '0001_initial', '2022-11-15 15:29:04.666960'),
(20, 'tamu', '0002_auto_20221115_0755', '2022-11-15 15:56:19.043949'),
(21, 'tamus', '0001_initial', '2022-11-15 18:00:54.510941');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE cp1250_bin NOT NULL,
  `session_data` longtext COLLATE cp1250_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gqtw0o4zwcyg3wmzv1jathemrjf1xx5u', 'NDJjNTJjMjU2NDk4NjI5MzliZmQ1YmQwNmU2MzBlN2U3NGEyYWVkZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5M2RiMzI5ZjljNWY0YWNkYzJhZGJjMTNiMDgzY2I1N2M4MmIzNzkyIn0=', '2022-11-29 13:26:06.551392');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamus_guests`
--

CREATE TABLE `tamus_guests` (
  `id` int(11) NOT NULL,
  `nim` varchar(10) COLLATE cp1250_bin NOT NULL,
  `nama` varchar(50) COLLATE cp1250_bin NOT NULL,
  `kegiatan` longtext COLLATE cp1250_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_bin;

--
-- Dumping data untuk tabel `tamus_guests`
--

INSERT INTO `tamus_guests` (`id`, `nim`, `nama`, `kegiatan`) VALUES
(1, '13123', 'bayubayu ', 'anumanghanuanumanghanuanumanghanu'),
(2, '13123', 'bayubayu ', 'anumanghanuanumanghanuanumanghanu'),
(3, '13123', 'bayubayu ', 'anumanghanuanumanghanuanumanghanu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `buku_post`
--
ALTER TABLE `buku_post`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeks untuk tabel `tamus_guests`
--
ALTER TABLE `tamus_guests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `buku_post`
--
ALTER TABLE `buku_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tamus_guests`
--
ALTER TABLE `tamus_guests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
