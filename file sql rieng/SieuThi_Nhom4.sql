CREATE DATABASE SieuThiNho;
USE SieuThiNho;

-- Bảng SanPham
CREATE TABLE SanPham (
    MaSanPham INT PRIMARY KEY,
    TenSanPham VARCHAR(255),
    MoTa TEXT,
    Gia DECIMAL(10, 2),
    SoLuongTonKho INT,
    MaNhaCungCap INT,
    FOREIGN KEY (MaNhaCungCap) REFERENCES NhaCungCap(MaNhaCungCap)
);

-- Bảng KhachHang
CREATE TABLE KhachHang (
    MaKhachHang INT PRIMARY KEY,
    TenKhachHang VARCHAR(255),
    DiaChi TEXT,
    SoDienThoai VARCHAR(15),
    Email VARCHAR(255)
);

-- Bảng GiaoDich
CREATE TABLE GiaoDich (
    MaGiaoDich INT PRIMARY KEY,
    MaKhachHang INT,
    MaSanPham INT,
    MaNhanVien INT,
    SoLuong INT,
    NgayGiaoDich DATETIME,
    TongTien DECIMAL(10, 2),
    FOREIGN KEY (MaKhachHang) REFERENCES KhachHang(MaKhachHang),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham),
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien)
);

-- Bảng NhanVien
CREATE TABLE NhanVien (
    MaNhanVien INT PRIMARY KEY,
    TenNhanVien VARCHAR(255),
    ChucVu VARCHAR(255),
    LichLamViec VARCHAR(255),
    Luong DECIMAL(10, 2)
);

-- Bảng NhaCungCap
CREATE TABLE NhaCungCap (
    MaNhaCungCap INT PRIMARY KEY,
    TenNhaCungCap VARCHAR(255),
    DiaChi TEXT,
    SoDienThoai VARCHAR(15),
    Email VARCHAR(255)
);

-- Thêm dữ liệu vào bảng SanPham
INSERT INTO SanPham (MaSanPham, TenSanPham, MoTa, Gia, SoLuongTonKho, MaNhaCungCap)
VALUES
(1, 'San pham 1', 'Mo ta san pham 1', 100000, 50, 1),
(2, 'San pham 2', 'Mo ta san pham 2', 200000, 30, 2),
(3, 'San pham 3', 'Mo ta san pham 3', 300000, 20, 3),
(4, 'San pham 4', 'Mo ta san pham 4', 400000, 10, 4),
(5, 'San pham 5', 'Mo ta san pham 5', 500000, 5, 5);

-- Thêm dữ liệu vào bảng KhachHang
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChi, SoDienThoai, Email)
VALUES
(1, 'Nguyen Van A', 'TP Ho Chi Minh', '0901234567', 'vana@mail.com'),
(2, 'Tran Thi B', 'TP Ha Noi', '0902345678', 'thib@mail.com'),
(3, 'Le Van C', 'TP Da Nang', '0903456789', 'vanc@mail.com'),
(4, 'Pham Thi D', 'TP Can Tho', '0904567890', 'thid@mail.com'),
(5, 'Vo Van E', 'TP Hai Phong', '0905678901', 'vane@mail.com');

-- Thêm dữ liệu vào bảng GiaoDich
INSERT INTO GiaoDich (MaGiaoDich, MaKhachHang, MaSanPham, MaNhanVien, SoLuong, NgayGiaoDich, TongTien)
VALUES
(1, 1, 1, 1, 2, '2024-12-01 10:00:00', 200000),
(2, 2, 3, 2, 1, '2024-12-05 11:30:00', 300000),
(3, 3, 2, 3, 4, '2024-12-10 14:45:00', 800000),
(4, 4, 5, 4, 3, '2024-12-15 16:20:00', 1500000),
(5, 5, 4, 5, 1, '2024-12-20 17:55:00', 400000);

-- Thêm dữ liệu vào bảng NhanVien
INSERT INTO NhanVien (MaNhanVien, TenNhanVien, ChucVu, LichLamViec, Luong)
VALUES
(1, 'Nguyen Van F', 'Quan ly', 'Ca sang', 12000000),
(2, 'Tran Thi G', 'Thu ngan', 'Ca chieu', 8000000),
(3, 'Le Van H', 'Bao ve', 'Ca dem', 6000000),
(4, 'Pham Thi I', 'Nhan vien ban hang', 'Ca sang', 7000000),
(5, 'Vo Van J', 'Quan ly kho', 'Ca chieu', 9000000);

-- Thêm dữ liệu vào bảng NhaCungCap
INSERT INTO NhaCungCap (MaNhaCungCap, TenNhaCungCap, DiaChi, SoDienThoai, Email)
VALUES
(1, 'Cong ty A', 'Dia chi 1, TP Ho Chi Minh', '0901111111', 'cta@mail.com'),
(2, 'Cong ty B', 'Dia chi 2, TP Ha Noi', '0902222222', 'ctb@mail.com'),
(3, 'Cong ty C', 'Dia chi 3, TP Da Nang', '0903333333', 'ctc@mail.com'),
(4, 'Cong ty D', 'Dia chi 4, TP Hai Phong', '0904444444', 'ctd@mail.com'),
(5, 'Cong ty E', 'Dia chi 5, TP Can Tho', '0905555555', 'cte@mail.com');
