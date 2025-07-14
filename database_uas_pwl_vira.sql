
-- Database: uas_pwl_vira

CREATE DATABASE IF NOT EXISTS uas_pwl_vira;
USE uas_pwl_vira;

-- Tabel users
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Tabel mahasiswa
CREATE TABLE IF NOT EXISTS mahasiswa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    nim VARCHAR(20) NOT NULL UNIQUE,
    prodi VARCHAR(100) NOT NULL
);

-- Dummy data users
INSERT INTO users (username, password) VALUES
('admin', MD5('admin123')),
('vira', MD5('vira2025'));

-- Dummy data mahasiswa
INSERT INTO mahasiswa (nama, nim, prodi) VALUES
('Andi Saputra', '22200001', 'Bisnis Digital'),
('Siti Aisyah', '22200002', 'Teknik Informatika'),
('Vira Andriani', '22200023', 'Bisnis Digital');
