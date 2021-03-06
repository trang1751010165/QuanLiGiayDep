USE [master]
GO
/****** Object:  Database [QL_BanGiayDep]    Script Date: 11/12/2019 3:48:42 PM ******/
CREATE DATABASE [QL_BanGiayDep]
 GO
ALTER DATABASE [QL_BanGiayDep] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_BanGiayDep].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_BanGiayDep] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_BanGiayDep] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_BanGiayDep] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_BanGiayDep] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_BanGiayDep] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_BanGiayDep] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_BanGiayDep] SET  MULTI_USER 
GO
ALTER DATABASE [QL_BanGiayDep] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_BanGiayDep] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_BanGiayDep] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_BanGiayDep] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QL_BanGiayDep] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QL_BanGiayDep]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/12/2019 3:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](30) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 11/12/2019 3:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[MaDonHang] [int] NOT NULL,
	[MaSP] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_ChiTietDH] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/12/2019 3:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayGiao] [datetime] NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGH] [nvarchar](50) NULL,
	[DaThanhToan] [nvarchar](50) NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/12/2019 3:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nchar](10) NULL,
	[DienThoai] [varchar](20) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](30) NULL,
	[Email] [varchar](30) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nhom]    Script Date: 11/12/2019 3:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhom](
	[MaNhom] [nvarchar](10) NOT NULL,
	[TenNhom] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nhom] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/12/2019 3:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [char](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MaNhom] [nvarchar](10) NULL,
	[Size] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPham_1] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([MaKH], [HoTen], [TaiKhoan], [MatKhau]) VALUES (1, N'Ngọc Ty', N'ngocty00', N'123')
SET IDENTITY_INSERT [dbo].[Admin] OFF
INSERT [dbo].[ChiTietDH] ([MaDonHang], [MaSP], [SoLuong], [DonGia]) VALUES (9, N'100       ', 1, 210000)
INSERT [dbo].[ChiTietDH] ([MaDonHang], [MaSP], [SoLuong], [DonGia]) VALUES (9, N'12        ', 1, 200000)
INSERT [dbo].[ChiTietDH] ([MaDonHang], [MaSP], [SoLuong], [DonGia]) VALUES (10, N'12        ', 1, 200000)
INSERT [dbo].[ChiTietDH] ([MaDonHang], [MaSP], [SoLuong], [DonGia]) VALUES (11, N'100       ', 1, 210000)
INSERT [dbo].[ChiTietDH] ([MaDonHang], [MaSP], [SoLuong], [DonGia]) VALUES (12, N'1         ', 1, 300000)
INSERT [dbo].[ChiTietDH] ([MaDonHang], [MaSP], [SoLuong], [DonGia]) VALUES (12, N'13        ', 1, 650000)
INSERT [dbo].[ChiTietDH] ([MaDonHang], [MaSP], [SoLuong], [DonGia]) VALUES (13, N'20        ', 1, 300000)
INSERT [dbo].[ChiTietDH] ([MaDonHang], [MaSP], [SoLuong], [DonGia]) VALUES (14, N'10        ', 1, 500000)
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [NgayGiao], [NgayDat], [TinhTrangGH], [DaThanhToan], [MaKH]) VALUES (1, CAST(N'2019-06-03 00:00:00.000' AS DateTime), CAST(N'2019-06-06 00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[DonHang] ([MaDonHang], [NgayGiao], [NgayDat], [TinhTrangGH], [DaThanhToan], [MaKH]) VALUES (9, CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2019-11-12 15:04:07.183' AS DateTime), NULL, N'Rồi', 4)
INSERT [dbo].[DonHang] ([MaDonHang], [NgayGiao], [NgayDat], [TinhTrangGH], [DaThanhToan], [MaKH]) VALUES (10, CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2019-11-12 15:07:45.047' AS DateTime), NULL, N'Rồi', 4)
INSERT [dbo].[DonHang] ([MaDonHang], [NgayGiao], [NgayDat], [TinhTrangGH], [DaThanhToan], [MaKH]) VALUES (11, CAST(N'2019-08-20 00:00:00.000' AS DateTime), CAST(N'2019-11-12 15:15:30.770' AS DateTime), NULL, N'Rồi', 4)
INSERT [dbo].[DonHang] ([MaDonHang], [NgayGiao], [NgayDat], [TinhTrangGH], [DaThanhToan], [MaKH]) VALUES (12, CAST(N'2010-12-12 00:00:00.000' AS DateTime), CAST(N'2019-11-12 15:21:21.410' AS DateTime), NULL, N'Rồi', 4)
INSERT [dbo].[DonHang] ([MaDonHang], [NgayGiao], [NgayDat], [TinhTrangGH], [DaThanhToan], [MaKH]) VALUES (13, CAST(N'2019-08-20 00:00:00.000' AS DateTime), CAST(N'2019-11-12 15:40:43.693' AS DateTime), NULL, N'Rồi', 6)
INSERT [dbo].[DonHang] ([MaDonHang], [NgayGiao], [NgayDat], [TinhTrangGH], [DaThanhToan], [MaKH]) VALUES (14, CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(N'2019-11-12 15:41:40.670' AS DateTime), NULL, N'Rồi', 6)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (1, N'Quỳnh Như', CAST(N'1999-01-18 00:00:00.000' AS DateTime), N'Nữ        ', N'039547846', N'Nhu', N'123', N'nhu@gmail.com', N'Quận 12')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (2, N'Quỳnh Như', CAST(N'1999-02-11 00:00:00.000' AS DateTime), N'Nữ        ', N'0354914258', N'quynhnhu', N'123', N'dtqnhu112@gmail.com', N'Quảng Trị')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (3, N'Ngọc Ty', CAST(N'1999-11-11 00:00:00.000' AS DateTime), N'Nữ        ', N'0968411231', N'ngocty', N'123', N'ngocty@gmail.com', N'Bình Định')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (4, N'Nhật Hào', CAST(N'1999-01-15 00:00:00.000' AS DateTime), N'Nam       ', N'0955448777', N'nhathao', N'123', N'nhathao@gmail.com', N'Cà Mau')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (5, N'Ngô Hoài', NULL, N'Nam       ', NULL, NULL, N'123', N'hoai@gmail.com', N'Long An')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (6, N'a', NULL, N'Nam       ', N'1547851', N'Anh', N'123', N'a@gmail.com', N'tphcm')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [DienThoai], [TaiKhoan], [MatKhau], [Email], [DiaChi]) VALUES (7, N'Nguyễn Văn Tân', NULL, N'Nam       ', N'0398754584', N'Tân Nguy?n', N'123', N'tannguyen@gmail.com', N'Quận 2')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[Nhom] ([MaNhom], [TenNhom]) VALUES (N'1', N'Giày Nam')
INSERT [dbo].[Nhom] ([MaNhom], [TenNhom]) VALUES (N'2', N'Giày Nữ')
INSERT [dbo].[Nhom] ([MaNhom], [TenNhom]) VALUES (N'3', N'Dép Nam')
INSERT [dbo].[Nhom] ([MaNhom], [TenNhom]) VALUES (N'4', N'Dép Nữ')
INSERT [dbo].[Nhom] ([MaNhom], [TenNhom]) VALUES (N'5', N'Giày Trẻ Em')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'1         ', N'Giày lười BQ923 - GC 3095 - Đen', 300000, N'Giày lười BQ923 - GC 3095 làm từ chất da cao cấp, tạo nên phong cách thời trang năng động, khỏe khoắn và sang trọng cho chàng.', N'GLNAM01.PNG', CAST(N'2018-05-01 00:00:00.000' AS DateTime), 8, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'10        ', N'Giày tây  BQ530 - GT 90686 - Đen', 500000, N'Giày Tây GT 90686 sẽ là sự lựa chọn số một trong trang phục cần đến sự thanh lịch, hiện đại. Với thiết kế da bò cao cấp dập sần, bách ngang đính tua rua trẻ trung giúp các quý ông thêm phần mạnh mẽ trong trang phục của mình', N'GT01.PNG', CAST(N'2019-02-05 00:00:00.000' AS DateTime), 5, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'100       ', N'Dép Kẹp Crocband Flip Flop', 210000, N'Màu Xanh Dương', N'h18_Nam.jpg', CAST(N'2019-05-09 00:00:00.000' AS DateTime), 10, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'101       ', N'Dép Kẹp Chính Hãng', 240000, N'Màu Đen', N'h19_Nam.jpg', CAST(N'2019-08-10 00:00:00.000' AS DateTime), 8, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'11        ', N'Dép Kẹp Crocs BayaBand', 200000, N'Màu Trắng', N'h20_Nam.jpg', CAST(N'2019-08-09 00:00:00.000' AS DateTime), 1, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'12        ', N'Dép Kẹp Crocs BayaBand', 200000, N'Màu Xanh Đen', N'h21_Nam.jpg', CAST(N'2019-08-10 00:00:00.000' AS DateTime), 3, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'13        ', N'Giày lười cao cấp BQ538 - GC02 - Bò', 650000, N'Giày lười BQ538, không chỉ mang đến sự thoải mái cho đôi bàn chân Quý ông ở chốn công sở cũng như các hoạt động ngoài trời. Mà còn là vẻ đẹp tinh tế, thời thượng trong trang phục cho mọi Quý ông', N'GLNAM02.PNG', CAST(N'2019-02-06 00:00:00.000' AS DateTime), 1, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'14        ', N'Giày cỏ BQ533 - GC 180 - Nâu', 450000, N'Trẻ trung và khỏe khoắn cùng thiết kế xỏ trơn và đế thể thao biến tấu lạ mắt, Giày cỏ BQ 533 - GC 180 cho bạn nam thêm năng động và không kém phần thanh lịch.', N'GLNAM03.PNG', CAST(N'2017-02-05 00:00:00.000' AS DateTime), 0, N'1', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'15        ', N'Giay thể thao nữ M01', 300000, N'Giay thể thao nữ ', N'GTTNU01.PNG', CAST(N'2017-06-08 00:00:00.000' AS DateTime), 5, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'16        ', N'Giay thể thao nữ M02', 500000, N'Giay the thao nữ màu trắng ,đang hot nhất hiện nay', N'GTTNU02.PNG', CAST(N'2018-02-05 00:00:00.000' AS DateTime), 9, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'17        ', N'Giay thể thao nữ M03', 600000, N'Giay the thao nữ màu xám, tươi trẻ,năng động, rất chi là đẹp', N'GTTNU03.PNG', CAST(N'2018-11-11 00:00:00.000' AS DateTime), 7, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'18        ', N'Giay cao cot nữ M01', 600000, N'Giay cao gót nữ, màu đen, chiều cao vừa, phụ hợp với những chiếc váy xinh lung linh', N'GCCNU01.PNG', CAST(N'2019-10-05 00:00:00.000' AS DateTime), 1, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'19        ', N'Giay cao cot nữ M02', 250000, N'Giay cao cot nu mã 02', N'GCCNU02.PNG', CAST(N'2018-10-03 00:00:00.000' AS DateTime), 2, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'2         ', N'Giày tây BQ982 - GT 9399 - Nâu bò', 900000, N'Giày tây GT 9399 với họa tiết đục lỗ tinh tế và phom dáng đẹp. Đây là sản phẩm chàng không thể bỏ qua để khiến bộ trang phục của chàng thêm ấn tượng.', N'GT02.PNG', CAST(N'2019-02-03 00:00:00.000' AS DateTime), 4, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'20        ', N'Giay cao cot nữ M03', 300000, N'Giay cao cot nu m03', N'GCCNU03.PNG', CAST(N'2018-05-15 00:00:00.000' AS DateTime), 9, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'21        ', N'Giay búp bê nữ M01', 100000, N'Giay búp bê nữ mã 01', N'GBB01.PNG', CAST(N'2019-03-05 00:00:00.000' AS DateTime), 8, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'22        ', N'Giay búp bê nữ M01', 200000, N'Giay búp bê nữ siêu thoải mái mã 02', N'GBB02.PNG', CAST(N'2019-02-11 00:00:00.000' AS DateTime), 7, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'23        ', N'Giay búp bê nữ M01', 150000, N'Giay búp bê nữ siêu thoải mái mã 03', N'GBB03.PNG', CAST(N'2017-01-02 00:00:00.000' AS DateTime), 4, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'24        ', N'Bốt nữ mã 01', 160000, N'Bốt nữ mã 01, siêu chất, siêu thoải mái', N'BOT01.PNG', CAST(N'2019-01-19 00:00:00.000' AS DateTime), 15, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'25        ', N'Bốt nữ mã 02', 200000, N'Bốt nữ mã 01, siêu chất, siêu thoải mái', N'BOT02.PNG', CAST(N'2018-09-19 00:00:00.000' AS DateTime), 0, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'26        ', N'Bốt nữ mã 03', 300000, N'Bốt nữ mã 01, siêu chất, siêu thoải mái', N'BOT03.PNG', CAST(N'2018-08-08 00:00:00.000' AS DateTime), 1, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'27        ', N'Giày mọi nữ 01', 250000, N'Giày mọi nữ 01', N'GMNU01.PNG', CAST(N'2018-02-05 00:00:00.000' AS DateTime), 1, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'28        ', N'Giày mọi nữ 01', 350000, N'Giày mọi nữ 02, siêu thoải, siêu đẹp', N'GMNU02.PNG', CAST(N'2018-11-11 00:00:00.000' AS DateTime), 9, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'29        ', N'Giày mọi nữ 01', 150000, N'Giày mọi nữ 03, siêu đẹp', N'GMNU03.PNG', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 8, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'3         ', N'Giày tây BQ790 - GT 2928 - Nâu', 750000, N'Đón đầu xu hướng giày tây với họa tiết da dập vân bắt mắt, Giày BQ ra mắt sản phẩm GT 2928 với phom dáng đẹp và thiết kế tinh tế đơn giản và không kém phần sang trọng. Chàng có thể kết hợp với những bộ cánh trang trọng hoặc trang phục công sở lịch sự.', N'GT03.PNG', CAST(N'2019-01-05 00:00:00.000' AS DateTime), 9, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'30        ', N'Dép 2 quai Nam 01', 60000, N'Dép 2 quai Nam 01', N'D2QN01.PNG', CAST(N'2019-12-08 00:00:00.000' AS DateTime), 4, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'31        ', N'Dép 2 quai Nam 01', 80000, N'Dép 2 quai Nam 02', N'D2QN02.PNG', CAST(N'2019-09-09 00:00:00.000' AS DateTime), 10, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'32        ', N'Dép 2 quai Nam 01', 100000, N'Dép 2 quai Nam 03', N'D2QN03.PNG', CAST(N'2016-03-02 00:00:00.000' AS DateTime), 2, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'33        ', N'Dép Thái Nam 01', 60000, N'Dép Thái Nam 01', N'DTN01.PNG', CAST(N'2019-05-07 00:00:00.000' AS DateTime), 0, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'34        ', N'Dép Thái Nam 02', 90000, N'Dép Thái Nam 02', N'DTN02.PNG', CAST(N'2018-08-04 00:00:00.000' AS DateTime), 0, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'35        ', N'Dép Thái Nam 03', 100000, N'Dép Thái Nam 03', N'DTN03.PNG', CAST(N'2019-05-05 00:00:00.000' AS DateTime), 5, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'36        ', N'Sandal Nam 01', 300000, N'Sandal Nam 01', N'SDN01.PNG', CAST(N'2019-07-07 00:00:00.000' AS DateTime), 9, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'37        ', N'Sandal Nam 02', 200000, N'Sandal Nam 02', N'SDN02.PNG', CAST(N'2019-05-25 00:00:00.000' AS DateTime), 17, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'38        ', N'Sandal Nam 03', 250000, N'Sandal Nam 03', N'SDN02.PNG', CAST(N'2018-11-12 00:00:00.000' AS DateTime), 2, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'39        ', N'Dép 2 quai Nữ 01', 50000, N'Dép 2 quai Nữ 01', N'D2QNU01.PNG', CAST(N'2017-01-05 00:00:00.000' AS DateTime), 4, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'4         ', N'Giày thể thao BQ577 - GTT 577-55 - Xám', 650000, N'Thiết kế đế thể thao góc cạnh siêu nhẹ kết hợp cùng họa tiết da bạ nổi đẹp mắt, GTT 577-55 cho bộ trang phục của bạn nữ thêm phần năng động và ấn tượng', N'GTTNAM01.PNG', CAST(N'2018-05-04 00:00:00.000' AS DateTime), 8, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'40        ', N'Dép 2 quai Nữ 02', 60000, N'Dép 2 quai Nữ 02', N'D2QNU02.PNG', CAST(N'2019-02-05 00:00:00.000' AS DateTime), 3, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'41        ', N'Dép 2 quai Nữ 03', 90000, N'Dép 2 quai Nữ 03', N'D2QNU03.PNG', CAST(N'2017-08-04 00:00:00.000' AS DateTime), 9, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'42        ', N'Dép Thái Nữ 01', 150000, N'Dép Thái Nữ 01', N'DTNU01.PNG', CAST(N'2018-11-13 00:00:00.000' AS DateTime), 2, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'43        ', N'Dép Thái Nữ 02', 200000, N'Dép Thái Nữ 02', N'DTNU02.PNG', CAST(N'2016-12-10 00:00:00.000' AS DateTime), 1, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'44        ', N'Dép Thái Nữ 03', 600000, N'Dép Thái Nữ 03', N'DTNU03.PNG', CAST(N'2019-05-06 00:00:00.000' AS DateTime), 3, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'45        ', N'Dép Thái Nữ 04', 65000, N'Dép Thái Nữ 04', N'DTNU04.PNG', CAST(N'2019-06-05 00:00:00.000' AS DateTime), 1, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'46        ', N'Sandal Nữ 01', 200000, N'Sandal Nữ 01', N'SDNU01.PNG', CAST(N'2019-08-07 00:00:00.000' AS DateTime), 0, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'47        ', N'Sandal Nữ 02', 250000, N'Sandal Nữ 02', N'SDNU02.PNG', CAST(N'2019-03-05 00:00:00.000' AS DateTime), 0, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'48        ', N'Sandal Nữ 03', 350000, N'Sandal Nữ 03', N'SDNU03.PNG', CAST(N'2019-05-04 00:00:00.000' AS DateTime), 8, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'49        ', N'Giày Trẻ em nam 01', 250000, N'Giày Trẻ em nam 01, siêu xinh ', N'GTT01.PNG', CAST(N'2018-02-03 00:00:00.000' AS DateTime), 1, N'5', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'5         ', N'Giày thể thao BQ830 - GTT KD006-10055 - Xám', 300000, N'Giày thể thao GTT KD006-10055 giúp đôi chân bạn nữ thêm phần cá tính và đáng yêu từ chất liệu vải thun ôm lấy cổ chân, chất liệu thun dày dặn giúp form giày đẹp và chống nóng hiệu quả, thêm vào đó là chất liệu đế họa tiết 3D siêu nhẹ cho đôi chân khi vận động. .', N'GTTNAM02.PNG', CAST(N'2018-02-09 00:00:00.000' AS DateTime), 7, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'50        ', N'Giày Trẻ em nam 02', 150000, N'Giày Trẻ em nam 02, siêu xinh', N'GTT02.PNG', CAST(N'2019-07-09 00:00:00.000' AS DateTime), 8, N'5', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'51        ', N'Giày Trẻ em nam 03', 100000, N'Giày Trẻ em nam 03, siêu xinh', N'GTT03.PNG', CAST(N'2016-07-07 00:00:00.000' AS DateTime), 6, N'5', N'15-37')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'52        ', N'Giày Trẻ em nam 04', 300000, N'Giày Trẻ em nam 04, siêu xinh', N'GTT04.PNG', CAST(N'2019-11-09 00:00:00.000' AS DateTime), 5, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'53        ', N'Giày Trẻ em nam 05', 120000, N'Giày Trẻ em nam 05, siêu xinh', N'GTT05.PNG', CAST(N'2019-12-02 00:00:00.000' AS DateTime), 1, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'54        ', N'Giày Trẻ em nam 06', 130000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT06.PNG', CAST(N'2017-06-08 00:00:00.000' AS DateTime), 2, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'55        ', N'Giày Trẻ em nam 07', 180000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT07.PNG', CAST(N'2019-02-02 00:00:00.000' AS DateTime), 3, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'56        ', N'Giày Trẻ em nam 08', 240000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT08.PNG', CAST(N'2017-01-09 00:00:00.000' AS DateTime), 6, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'57        ', N'Giày Trẻ em nam 09', 250000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT09.PNG', CAST(N'2016-06-06 00:00:00.000' AS DateTime), 9, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'58        ', N'Giày Trẻ em nam 10', 260000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT10.PNG', CAST(N'2018-08-08 00:00:00.000' AS DateTime), 8, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'59        ', N'Giày Trẻ em nam 11', 280000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT11.PNG', CAST(N'2017-04-05 00:00:00.000' AS DateTime), 7, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'6         ', N'Giày thể thao BQ830 - GTT KD006-10055 - Đen', 350000, N'Giày thể thao GTT KD006-10055 giúp đôi chân bạn nữ thêm phần cá tính và đáng yêu từ chất liệu vải thun ôm lấy cổ chân, chất liệu thun dày dặn giúp form giày đẹp và chống nóng hiệu quả, thêm vào đó là chất liệu đế họa tiết 3D siêu nhẹ cho đôi chân khi vận động', N'GTTNAM03.PNG', CAST(N'2018-05-07 00:00:00.000' AS DateTime), 5, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'60        ', N'Giày Trẻ em nam 12', 140000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT12.PNG', CAST(N'2019-02-08 00:00:00.000' AS DateTime), 6, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'61        ', N'Giày Trẻ em nam 13', 160000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT13.PNG', CAST(N'2016-08-05 00:00:00.000' AS DateTime), 2, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'62        ', N'Giày Trẻ em nam 14', 180000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT14.PNG', CAST(N'2019-08-05 00:00:00.000' AS DateTime), 2, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'63        ', N'Giày Trẻ em nam 15', 360000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT15.PNG', CAST(N'2019-02-02 00:00:00.000' AS DateTime), 8, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'64        ', N'Giày Trẻ em nam 16', 400000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT16.PNG', CAST(N'2019-05-04 00:00:00.000' AS DateTime), 3, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'65        ', N'Giày Trẻ em nam 17', 120000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT17.PNG', CAST(N'2019-02-08 00:00:00.000' AS DateTime), 9, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'66        ', N'Giày Trẻ em nam 18', 180000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT18.PNG', CAST(N'2019-05-08 00:00:00.000' AS DateTime), 8, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'67        ', N'Giày Trẻ em nam 19', 170000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT19.PNG', CAST(N'2019-01-01 00:00:00.000' AS DateTime), 7, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'68        ', N'Giày Trẻ em nam 20', 160000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT20.PNG', CAST(N'2019-05-06 00:00:00.000' AS DateTime), 9, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'69        ', N'Giày Trẻ em nữ 01', 260000, N'Giày Trẻ em nam 01, siêu xinh', N'GTTNU01.PNG', CAST(N'2019-08-05 00:00:00.000' AS DateTime), 6, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'7         ', N'GIÀY THỂ THAO BQ702 - GTT 6232 - NÂU BÒ', 200000, N'Giày thể thao 6232 với phom dáng đẹp và chất liệu vải bố đẹp mắt sẽ khiến bộ trang phục dạo phố hay đi học của bạn nam thêm phần cá tính và ấn tượng', N'B01.PNG', CAST(N'2018-03-05 00:00:00.000' AS DateTime), 15, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'70        ', N'Giày Trẻ em nữ 02', 250000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU02.PNG', CAST(N'2017-05-03 00:00:00.000' AS DateTime), 3, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'71        ', N'Giày Trẻ em nữ 03', 280000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU03.PNG', CAST(N'2018-01-02 00:00:00.000' AS DateTime), 0, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'72        ', N'Giày Trẻ em nữ 04', 360000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU04.PNG', CAST(N'2018-01-06 00:00:00.000' AS DateTime), 12, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'73        ', N'Giày Trẻ em nữ 05', 140000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU05.PNG', CAST(N'2019-07-05 00:00:00.000' AS DateTime), 15, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'74        ', N'Giày Trẻ em nữ 06', 100000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU06.PNG', CAST(N'2019-01-01 00:00:00.000' AS DateTime), 0, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'75        ', N'Giày Trẻ em nữ 07', 120000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU07.PNG', CAST(N'2019-12-05 00:00:00.000' AS DateTime), 2, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'76        ', N'Giày Trẻ em nữ 08', 130000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU08.PNG', CAST(N'2019-06-05 00:00:00.000' AS DateTime), 0, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'77        ', N'Giày Trẻ em nữ 09', 170000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU09.PNG', CAST(N'2019-05-03 00:00:00.000' AS DateTime), 1, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'78        ', N'Giày Trẻ em nữ 10', 190000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU10.PNG', CAST(N'2018-11-11 00:00:00.000' AS DateTime), 8, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'79        ', N'Giày Trẻ em nữ 11', 170000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU11.PNG', CAST(N'2019-12-02 00:00:00.000' AS DateTime), 9, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'8         ', N'Giày thể thao BQ960 - GTT 8803 - Xám', 250000, N'Lạ mắt với chất liệu vải phối thun thoáng mát kết hợp cùng thiết kế slip-on tiện lợi. Giày thể thao GTT 8803 giúp bộ trang phục của chàng sẽ trở nên tươi trẻ và bắt mắt', N'B02.PNG', CAST(N'2017-03-06 00:00:00.000' AS DateTime), 2, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'80        ', N'Giày Trẻ em nữ 12', 300000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU12.PNG', CAST(N'2018-02-03 00:00:00.000' AS DateTime), 7, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'81        ', N'Giày Trẻ em nữ 13', 310000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU13.PNG', CAST(N'2019-03-28 00:00:00.000' AS DateTime), 8, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'82        ', N'Giày Trẻ em nữ 14', 185000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU14.PNG', CAST(N'2019-02-05 00:00:00.000' AS DateTime), 5, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'83        ', N'Duet Sport Clog', 80000, N'Màu Đen-Đỏ', N'h1_Nam.jpg', CAST(N'2019-05-06 00:00:00.000' AS DateTime), 10, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'84        ', N'Crocbands 2.5', 120000, N'Màu Đỏ', N'h2_Nam.jpg', CAST(N'2019-09-09 00:00:00.000' AS DateTime), 15, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'85        ', N'Crocbands 1.0', 85000, N'Màu Xanh Dương Viền Chỉ Đen', N'h3_Nam.jpg', CAST(N'2019-08-08 00:00:00.000' AS DateTime), 30, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'86        ', N'Crocbands 1.0', 90000, N'Màu Nâu Đậm', N'h4_Nam.jpg', CAST(N'2019-08-10 00:00:00.000' AS DateTime), 8, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'87        ', N'Crocbands 1.0', 120000, N'Màu Xanh Đen Viền Trắng', N'h5_Nam.jpg', CAST(N'2019-09-06 00:00:00.000' AS DateTime), 7, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'88        ', N'Crocbands 1.0', 280000, N'Màu Trắng Viền Đen', N'h6_Nam.jpg', CAST(N'2019-10-11 00:00:00.000' AS DateTime), 9, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'89        ', N'Crocbands 1.0', 90000, N'Màu Xám Viền Trắng Chỉ Đen', N'h7_Nam.jpg', CAST(N'2019-06-08 00:00:00.000' AS DateTime), 10, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'9         ', N'Giày thể thao BQ702 - GTT 6232 - Rêu', 250000, N'Lạ mắt với chất liệu vải phối thun thoáng mát kết hợp cùng thiết kế slip-on tiện lợi. Giày thể thao GTT 8803 giúp bộ trang phục của chàng sẽ trở nên tươi trẻ và bắt mắtt .', N'B03.PNG', CAST(N'2017-01-02 00:00:00.000' AS DateTime), 4, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'90        ', N'Crocbands 1.0', 95000, N'Màu Xám Viền Trắng Chỉ Cam', N'h8_Nam.jpg', CAST(N'2019-11-10 00:00:00.000' AS DateTime), 5, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'91        ', N'Crocbands 1.0', 105000, N'Màu Xám Viền Đen', N'h9_Nam.jpg', CAST(N'2019-05-06 00:00:00.000' AS DateTime), 2, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'92        ', N'Crocbands 1.0', 25000, N'Màu Xanh Dương Viền Chỉ Đỏ', N'h10_Nam.jpg', CAST(N'2019-08-09 00:00:00.000' AS DateTime), 1, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'93        ', N'Crocbands 1.0', 260000, N'Màu Cà Phê Nhạt', N'h11_Nam.jpg', CAST(N'2019-03-05 00:00:00.000' AS DateTime), 5, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'94        ', N'Santa Cruz 2', 300000, N'Màu Xanh Đen', N'h12_Nam.jpg', CAST(N'2019-08-09 00:00:00.000' AS DateTime), 6, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'95        ', N'Santa Cruz 2', 270000, N'Màu Xanh Đen / Nâu', N'h13_Nam.jpg', CAST(N'2019-08-02 00:00:00.000' AS DateTime), 5, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'96        ', N'Santa Cruz 2', 250000, N'Màu Bò', N'h14_Nam.jpg', CAST(N'2019-08-10 00:00:00.000' AS DateTime), 7, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'97        ', N'Santa Cruz 2', 190000, N'Màu Xám', N'h15_Nam.jpg', CAST(N'2019-08-12 00:00:00.000' AS DateTime), 4, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'98        ', N'Santa Cruz 2', 200000, N'Màu Nâu', N'h16_Nam.jpg', CAST(N'2019-11-10 00:00:00.000' AS DateTime), 4, N'3', N'15-30')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'99        ', N'Dép Kẹp Crocband Flip Flop', 185000, N'Màu Xanh Đen', N'h17_Nam.jpg', CAST(N'2019-08-05 00:00:00.000' AS DateTime), 2, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP01      ', N'Giày tây  BQ530 - GT 90686 - Đen', 500000, N'Giày Tây GT 90686 sẽ là sự lựa chọn số một trong trang phục cần đến sự thanh lịch, hiện đại. Với thiết kế da bò cao cấp dập sần, bách ngang đính tua rua trẻ trung giúp các quý ông thêm phần mạnh mẽ trong trang phục của mình', N'GT01.PNG', CAST(N'2019-10-12 00:00:00.000' AS DateTime), 5, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP02      ', N'Giày tây BQ982 - GT 9399 - Nâu bò', 900000, N'Giày tây GT 9399 với họa tiết đục lỗ tinh tế và phom dáng đẹp. Đây là sản phẩm chàng không thể bỏ qua để khiến bộ trang phục của chàng thêm ấn tượng.', N'GT02.PNG', CAST(N'2019-02-03 00:00:00.000' AS DateTime), 4, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP03      ', N'Giày tây BQ790 - GT 2928 - Nâu', 750000, N'Đón đầu xu hướng giày tây với họa tiết da dập vân bắt mắt, Giày BQ ra mắt sản phẩm GT 2928 với phom dáng đẹp và thiết kế tinh tế đơn giản và không kém phần sang trọng. Chàng có thể kết hợp với những bộ cánh trang trọng hoặc trang phục công sở lịch sự.', N'GT03.PNG', CAST(N'2019-01-05 00:00:00.000' AS DateTime), 9, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP04      ', N'Giày thể thao BQ577 - GTT 577-55 - Xám', 650000, N'Thiết kế đế thể thao góc cạnh siêu nhẹ kết hợp cùng họa tiết da bạ nổi đẹp mắt, GTT 577-55 cho bộ trang phục của bạn nữ thêm phần năng động và ấn tượng', N'GTTNAM01.PNG', CAST(N'2018-05-04 00:00:00.000' AS DateTime), 8, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP05      ', N'Giày thể thao BQ830 - GTT KD006-10055 - Xám', 300000, N'Giày thể thao GTT KD006-10055 giúp đôi chân bạn nữ thêm phần cá tính và đáng yêu từ chất liệu vải thun ôm lấy cổ chân, chất liệu thun dày dặn giúp form giày đẹp và chống nóng hiệu quả, thêm vào đó là chất liệu đế họa tiết 3D siêu nhẹ cho đôi chân khi vận động. .', N'GTTNAM02.PNG', CAST(N'2018-02-09 00:00:00.000' AS DateTime), 7, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP06      ', N'Giày thể thao BQ830 - GTT KD006-10055 - Đen', 350000, N'Giày thể thao GTT KD006-10055 giúp đôi chân bạn nữ thêm phần cá tính và đáng yêu từ chất liệu vải thun ôm lấy cổ chân, chất liệu thun dày dặn giúp form giày đẹp và chống nóng hiệu quả, thêm vào đó là chất liệu đế họa tiết 3D siêu nhẹ cho đôi chân khi vận động', N'GTTNAM03.PNG', CAST(N'2018-05-07 00:00:00.000' AS DateTime), 5, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP07      ', N'GIÀY THỂ THAO BQ702 - GTT 6232 - NÂU BÒ', 200000, N'Giày thể thao 6232 với phom dáng đẹp và chất liệu vải bố đẹp mắt sẽ khiến bộ trang phục dạo phố hay đi học của bạn nam thêm phần cá tính và ấn tượng', N'B01.PNG', CAST(N'2018-03-05 00:00:00.000' AS DateTime), 15, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP08      ', N'Giày thể thao BQ960 - GTT 8803 - Xám', 250000, N'Lạ mắt với chất liệu vải phối thun thoáng mát kết hợp cùng thiết kế slip-on tiện lợi. Giày thể thao GTT 8803 giúp bộ trang phục của chàng sẽ trở nên tươi trẻ và bắt mắt', N'B02.PNG', CAST(N'2017-03-06 00:00:00.000' AS DateTime), 2, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP09      ', N'Giày thể thao BQ702 - GTT 6232 - Rêu', 250000, N'Lạ mắt với chất liệu vải phối thun thoáng mát kết hợp cùng thiết kế slip-on tiện lợi. Giày thể thao GTT 8803 giúp bộ trang phục của chàng sẽ trở nên tươi trẻ và bắt mắtt .', N'B03.PNG', CAST(N'2017-01-02 00:00:00.000' AS DateTime), 4, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP10      ', N'Giày lười BQ923 - GC 3095 - Đen', 300000, N'Giày lười BQ923 - GC 3095 làm từ chất da cao cấp, tạo nên phong cách thời trang năng động, khỏe khoắn và sang trọng cho chàng.', N'GLNAM01.PNG', CAST(N'2018-05-01 00:00:00.000' AS DateTime), 8, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP100     ', N'Dép Kẹp Crocs BayaBand', 200000, N'Màu Trắng', N'h20_Nam.jpg', NULL, 1, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP101     ', N'Dép Kẹp Crocs BayaBand', 200000, N'Màu Xanh Đen', N'h21_Nam.jpg', NULL, 3, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP11      ', N'Giày lười cao cấp BQ538 - GC02 - Bò', 650000, N'Giày lười BQ538, không chỉ mang đến sự thoải mái cho đôi bàn chân Quý ông ở chốn công sở cũng như các hoạt động ngoài trời. Mà còn là vẻ đẹp tinh tế, thời thượng trong trang phục cho mọi Quý ông', N'GLNAM02.PNG', CAST(N'2019-02-06 00:00:00.000' AS DateTime), 1, N'1', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP12      ', N'Giày cỏ BQ533 - GC 180 - Nâu', 450000, N'Trẻ trung và khỏe khoắn cùng thiết kế xỏ trơn và đế thể thao biến tấu lạ mắt, Giày cỏ BQ 533 - GC 180 cho bạn nam thêm năng động và không kém phần thanh lịch.', N'GLNAM03.PNG', CAST(N'2017-02-05 00:00:00.000' AS DateTime), 0, N'1', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP13      ', N'Giay thể thao nữ M01', 300000, N'Giay thể thao nữ ', N'GTTNU01.PNG', CAST(N'2017-06-08 00:00:00.000' AS DateTime), 5, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP14      ', N'Giay thể thao nữ M02', 500000, N'Giay the thao nữ màu trắng ,đang hot nhất hiện nay', N'GTTNU02.PNG', CAST(N'2018-02-05 00:00:00.000' AS DateTime), 9, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP15      ', N'Giay thể thao nữ M03', 600000, N'Giay the thao nữ màu xám, tươi trẻ,năng động, rất chi là đẹp', N'GTTNU03.PNG', CAST(N'2018-11-11 00:00:00.000' AS DateTime), 7, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP16      ', N'Giay cao cot nữ M01', 600000, N'Giay cao gót nữ, màu đen, chiều cao vừa, phụ hợp với những chiếc váy xinh lung linh', N'GCCNU01.PNG', CAST(N'2019-10-05 00:00:00.000' AS DateTime), 1, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP17      ', N'Giay cao cot nữ M02', 250000, N'Giay cao cot nu mã 02', N'GCCNU02.PNG', CAST(N'2018-10-03 00:00:00.000' AS DateTime), 2, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP18      ', N'Giay cao cot nữ M03', 300000, N'Giay cao cot nu m03', N'GCCNU03.PNG', CAST(N'2018-05-15 00:00:00.000' AS DateTime), 9, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP19      ', N'Giay búp bê nữ M01', 100000, N'Giay búp bê nữ mã 01', N'GBB01.PNG', CAST(N'2019-03-05 00:00:00.000' AS DateTime), 8, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP20      ', N'Giay búp bê nữ M01', 200000, N'Giay búp bê nữ siêu thoải mái mã 02', N'GBB02.PNG', CAST(N'2019-02-11 00:00:00.000' AS DateTime), 7, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP21      ', N'Giay búp bê nữ M01', 150000, N'Giay búp bê nữ siêu thoải mái mã 03', N'GBB03.PNG', CAST(N'2017-01-02 00:00:00.000' AS DateTime), 4, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP22      ', N'Bốt nữ mã 01', 160000, N'Bốt nữ mã 01, siêu chất, siêu thoải mái', N'BOT01.PNG', CAST(N'2019-01-19 00:00:00.000' AS DateTime), 15, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP23      ', N'Bốt nữ mã 02', 200000, N'Bốt nữ mã 01, siêu chất, siêu thoải mái', N'BOT02.PNG', CAST(N'2018-09-19 00:00:00.000' AS DateTime), 0, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP24      ', N'Bốt nữ mã 03', 300000, N'Bốt nữ mã 01, siêu chất, siêu thoải mái', N'BOT03.PNG', CAST(N'2018-08-08 00:00:00.000' AS DateTime), 1, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP25      ', N'Giày mọi nữ 01', 250000, N'Giày mọi nữ 01', N'GMNU01.PNG', CAST(N'2018-02-05 00:00:00.000' AS DateTime), 1, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP26      ', N'Giày mọi nữ 01', 350000, N'Giày mọi nữ 02, siêu thoải, siêu đẹp', N'GMNU02.PNG', CAST(N'2018-11-11 00:00:00.000' AS DateTime), 9, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP27      ', N'Giày mọi nữ 01', 150000, N'Giày mọi nữ 03, siêu đẹp', N'GMNU03.PNG', CAST(N'2018-12-12 00:00:00.000' AS DateTime), 8, N'2', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP28      ', N'Dép 2 quai Nam 01', 60000, N'Dép 2 quai Nam 01', N'D2QN01.PNG', CAST(N'2019-12-08 00:00:00.000' AS DateTime), 4, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP29      ', N'Dép 2 quai Nam 01', 80000, N'Dép 2 quai Nam 02', N'D2QN02.PNG', CAST(N'2019-09-09 00:00:00.000' AS DateTime), 10, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP30      ', N'Dép 2 quai Nam 01', 100000, N'Dép 2 quai Nam 03', N'D2QN03.PNG', CAST(N'2016-03-02 00:00:00.000' AS DateTime), 2, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP31      ', N'Dép Thái Nam 01', 60000, N'Dép Thái Nam 01', N'DTN01.PNG', CAST(N'2019-05-07 00:00:00.000' AS DateTime), 0, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP32      ', N'Dép Thái Nam 02', 90000, N'Dép Thái Nam 02', N'DTN02.PNG', CAST(N'2018-08-04 00:00:00.000' AS DateTime), 0, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP33      ', N'Dép Thái Nam 03', 100000, N'Dép Thái Nam 03', N'DTN03.PNG', CAST(N'2019-05-05 00:00:00.000' AS DateTime), 5, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP34      ', N'Sandal Nam 01', 300000, N'Sandal Nam 01', N'SDN01.PNG', CAST(N'2019-07-07 00:00:00.000' AS DateTime), 9, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP35      ', N'Sandal Nam 02', 200000, N'Sandal Nam 02', N'SDN02.PNG', CAST(N'2019-05-25 00:00:00.000' AS DateTime), 17, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP36      ', N'Sandal Nam 03', 250000, N'Sandal Nam 03', N'SDN02.PNG', CAST(N'2018-11-12 00:00:00.000' AS DateTime), 2, N'3', N'37-48')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP37      ', N'Dép 2 quai Nữ 01', 50000, N'Dép 2 quai Nữ 01', N'D2QNU01.PNG', CAST(N'2017-01-05 00:00:00.000' AS DateTime), 4, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP38      ', N'Dép 2 quai Nữ 02', 60000, N'Dép 2 quai Nữ 02', N'D2QNU02.PNG', CAST(N'2019-02-05 00:00:00.000' AS DateTime), 3, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP39      ', N'Dép 2 quai Nữ 03', 90000, N'Dép 2 quai Nữ 03', N'D2QNU03.PNG', CAST(N'2017-08-04 00:00:00.000' AS DateTime), 9, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP40      ', N'Dép Thái Nữ 01', 150000, N'Dép Thái Nữ 01', N'DTNU01.PNG', CAST(N'2018-11-13 00:00:00.000' AS DateTime), 2, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP41      ', N'Dép Thái Nữ 02', 200000, N'Dép Thái Nữ 02', N'DTNU02.PNG', CAST(N'2016-12-10 00:00:00.000' AS DateTime), 1, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP42      ', N'Dép Thái Nữ 03', 600000, N'Dép Thái Nữ 03', N'DTNU03.PNG', CAST(N'2019-05-06 00:00:00.000' AS DateTime), 3, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP43      ', N'Dép Thái Nữ 04', 65000, N'Dép Thái Nữ 04', N'DTNU04.PNG', CAST(N'2019-06-05 00:00:00.000' AS DateTime), 1, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP44      ', N'Sandal Nữ 01', 200000, N'Sandal Nữ 01', N'SDNU01.PNG', CAST(N'2019-08-07 00:00:00.000' AS DateTime), 0, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP45      ', N'Sandal Nữ 02', 250000, N'Sandal Nữ 02', N'SDNU02.PNG', CAST(N'2019-03-05 00:00:00.000' AS DateTime), 0, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP46      ', N'Sandal Nữ 03', 350000, N'Sandal Nữ 03', N'SDNU03.PNG', CAST(N'2019-05-04 00:00:00.000' AS DateTime), 8, N'4', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP47      ', N'Giày Trẻ em nam 01', 250000, N'Giày Trẻ em nam 01, siêu xinh ', N'GTT01.PNG', CAST(N'2018-02-03 00:00:00.000' AS DateTime), 1, N'5', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP48      ', N'Giày Trẻ em nam 02', 150000, N'Giày Trẻ em nam 02, siêu xinh', N'GTT02.PNG', CAST(N'2019-07-09 00:00:00.000' AS DateTime), 8, N'5', N'34-42')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP49      ', N'Giày Trẻ em nam 03', 100000, N'Giày Trẻ em nam 03, siêu xinh', N'GTT03.PNG', CAST(N'2016-07-07 00:00:00.000' AS DateTime), 6, N'5', N'15-37')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP50      ', N'Giày Trẻ em nam 04', 300000, N'Giày Trẻ em nam 04, siêu xinh', N'GTT04.PNG', CAST(N'2019-11-09 00:00:00.000' AS DateTime), 5, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP51      ', N'Giày Trẻ em nam 05', 120000, N'Giày Trẻ em nam 05, siêu xinh', N'GTT05.PNG', CAST(N'2019-12-02 00:00:00.000' AS DateTime), 1, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP52      ', N'Giày Trẻ em nam 06', 130000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT06.PNG', CAST(N'2017-06-08 00:00:00.000' AS DateTime), 2, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP53      ', N'Giày Trẻ em nam 07', 180000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT07.PNG', CAST(N'2019-02-02 00:00:00.000' AS DateTime), 3, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP54      ', N'Giày Trẻ em nam 08', 240000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT08.PNG', CAST(N'2017-01-09 00:00:00.000' AS DateTime), 6, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP55      ', N'Giày Trẻ em nam 09', 250000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT09.PNG', CAST(N'2016-06-06 00:00:00.000' AS DateTime), 9, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP56      ', N'Giày Trẻ em nam 10', 260000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT10.PNG', CAST(N'2018-08-08 00:00:00.000' AS DateTime), 8, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP57      ', N'Giày Trẻ em nam 11', 280000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT11.PNG', CAST(N'2017-04-05 00:00:00.000' AS DateTime), 7, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP58      ', N'Giày Trẻ em nam 12', 140000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT12.PNG', CAST(N'2019-02-08 00:00:00.000' AS DateTime), 6, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP59      ', N'Giày Trẻ em nam 13', 160000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT13.PNG', CAST(N'2016-08-05 00:00:00.000' AS DateTime), 2, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP60      ', N'Giày Trẻ em nam 14', 180000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT14.PNG', CAST(N'2019-08-05 00:00:00.000' AS DateTime), 2, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP61      ', N'Giày Trẻ em nam 15', 360000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT15.PNG', CAST(N'2019-02-02 00:00:00.000' AS DateTime), 8, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP62      ', N'Giày Trẻ em nam 16', 400000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT16.PNG', CAST(N'2019-05-04 00:00:00.000' AS DateTime), 3, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP63      ', N'Giày Trẻ em nam 17', 120000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT17.PNG', CAST(N'2019-02-08 00:00:00.000' AS DateTime), 9, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP64      ', N'Giày Trẻ em nam 18', 180000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT18.PNG', CAST(N'2019-05-08 00:00:00.000' AS DateTime), 8, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP65      ', N'Giày Trẻ em nam 19', 170000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT19.PNG', CAST(N'2019-01-01 00:00:00.000' AS DateTime), 7, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP66      ', N'Giày Trẻ em nam 20', 160000, N'Giày Trẻ em nam 01, siêu xinh', N'GTT20.PNG', CAST(N'2019-05-06 00:00:00.000' AS DateTime), 9, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP67      ', N'Giày Trẻ em nữ 01', 260000, N'Giày Trẻ em nam 01, siêu xinh', N'GTTNU01.PNG', CAST(N'2019-08-05 00:00:00.000' AS DateTime), 6, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP68      ', N'Giày Trẻ em nữ 02', 250000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU02.PNG', CAST(N'2017-05-03 00:00:00.000' AS DateTime), 3, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP69      ', N'Giày Trẻ em nữ 03', 280000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU03.PNG', CAST(N'2018-01-02 00:00:00.000' AS DateTime), 0, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP70      ', N'Giày Trẻ em nữ 04', 360000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU04.PNG', CAST(N'2018-01-06 00:00:00.000' AS DateTime), 12, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP71      ', N'Giày Trẻ em nữ 05', 140000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU05.PNG', CAST(N'2019-07-05 00:00:00.000' AS DateTime), 15, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP72      ', N'Giày Trẻ em nữ 06', 100000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU06.PNG', CAST(N'2019-01-01 00:00:00.000' AS DateTime), 0, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP73      ', N'Giày Trẻ em nữ 07', 120000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU07.PNG', CAST(N'2019-12-05 00:00:00.000' AS DateTime), 2, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP74      ', N'Giày Trẻ em nữ 08', 130000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU08.PNG', CAST(N'2019-06-05 00:00:00.000' AS DateTime), 0, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP75      ', N'Giày Trẻ em nữ 09', 170000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU09.PNG', CAST(N'2019-05-03 00:00:00.000' AS DateTime), 1, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP76      ', N'Giày Trẻ em nữ 10', 190000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU10.PNG', CAST(N'2018-11-11 00:00:00.000' AS DateTime), 8, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP77      ', N'Giày Trẻ em nữ 11', 170000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU11.PNG', CAST(N'2019-12-02 00:00:00.000' AS DateTime), 9, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP78      ', N'Giày Trẻ em nữ 12', 300000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU12.PNG', CAST(N'2018-02-03 00:00:00.000' AS DateTime), 7, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP79      ', N'Giày Trẻ em nữ 13', 310000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU13.PNG', CAST(N'2019-03-28 00:00:00.000' AS DateTime), 8, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP80      ', N'Giày Trẻ em nữ 14', 185000, N'Giày Trẻ em nữ 01, siêu dễ thương', N'GTTNU14.PNG', CAST(N'2019-02-05 00:00:00.000' AS DateTime), 5, N'5', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP81      ', N'Duet Sport Clog', 80000, N'Màu Đen-Đỏ', N'h1_Nam.jpg', NULL, 10, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP82      ', N'Crocbands 2.5', 120000, N'Màu Đỏ', N'h2_Nam.jpg', NULL, 15, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP83      ', N'Crocbands 1.0', 85000, N'Màu Xanh Dương Viền Chỉ Đen', N'h3_Nam.jpg', NULL, 30, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP84      ', N'Crocbands 1.0', 90000, N'Màu Nâu Đậm', N'h4_Nam.jpg', NULL, 8, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP85      ', N'Crocbands 1.0', 120000, N'Màu Xanh Đen Viền Trắng', N'h5_Nam.jpg', NULL, 7, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP86      ', N'Crocbands 1.0', 280000, N'Màu Trắng Viền Đen', N'h6_Nam.jpg', NULL, 9, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP87      ', N'Crocbands 1.0', 90000, N'Màu Xám Viền Trắng Chỉ Đen', N'h7_Nam.jpg', NULL, 10, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP88      ', N'Crocbands 1.0', 95000, N'Màu Xám Viền Trắng Chỉ Cam', N'h8_Nam.jpg', NULL, 5, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP89      ', N'Crocbands 1.0', 105000, N'Màu Xám Viền Đen', N'h9_Nam.jpg', NULL, 2, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP90      ', N'Crocbands 1.0', 25000, N'Màu Xanh Dương Viền Chỉ Đỏ', N'h10_Nam.jpg', NULL, 1, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP91      ', N'Crocbands 1.0', 260000, N'Màu Cà Phê Nhạt', N'h11_Nam.jpg', NULL, 5, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP92      ', N'Santa Cruz 2', 300000, N'Màu Xanh Đen', N'h12_Nam.jpg', NULL, 6, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP93      ', N'Santa Cruz 2', 270000, N'Màu Xanh Đen / Nâu', N'h13_Nam.jpg', NULL, 5, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP94      ', N'Santa Cruz 2', 250000, N'Màu Bò', N'h14_Nam.jpg', NULL, 7, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP95      ', N'Santa Cruz 2', 190000, N'Màu Xám', N'h15_Nam.jpg', NULL, 4, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP96      ', N'Santa Cruz 2', 200000, N'Màu Nâu', N'h16_Nam.jpg', NULL, 4, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP97      ', N'Dép Kẹp Crocband Flip Flop', 185000, N'Màu Xanh Đen', N'h17_Nam.jpg', NULL, 2, N'3', N'15-30')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP98      ', N'Dép Kẹp Crocband Flip Flop', 210000, N'Màu Xanh Dương', N'h18_Nam.jpg', NULL, 10, N'3', N'15-30')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [HinhAnh], [NgayCapNhat], [SoLuongTon], [MaNhom], [Size]) VALUES (N'SP99      ', N'Dép Kẹp Chính Hãng', 240000, N'Màu Đen', N'h19_Nam.jpg', NULL, 8, N'3', N'15-30')
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_KhachHang]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Nhom] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[Nhom] ([MaNhom])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Nhom]
GO
USE [master]
GO
ALTER DATABASE [QL_BanGiayDep] SET  READ_WRITE 
GO

select * from DonHang