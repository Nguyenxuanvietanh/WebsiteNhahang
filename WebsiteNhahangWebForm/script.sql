USE [master]
GO
/****** Object:  Database [WebsiteNhaHang]    Script Date: 11/28/2017 10:01:27 AM ******/
CREATE DATABASE [WebsiteNhaHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebsiteNhaHang', FILENAME = N'D:\LTWeb\Hoclai\WebsiteNhahangWebForm\WebsiteNhaHang.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebsiteNhaHang_log', FILENAME = N'D:\LTWeb\Hoclai\WebsiteNhahangWebForm\WebsiteNhaHang_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebsiteNhaHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebsiteNhaHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebsiteNhaHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteNhaHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsiteNhaHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebsiteNhaHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsiteNhaHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebsiteNhaHang] SET  MULTI_USER 
GO
ALTER DATABASE [WebsiteNhaHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsiteNhaHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebsiteNhaHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsiteNhaHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebsiteNhaHang] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WebsiteNhaHang]
GO
/****** Object:  Table [dbo].[CTDonDatHang]    Script Date: 11/28/2017 10:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDonDatHang](
	[MaCTDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_CTDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaCTDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTKhuyenMai]    Script Date: 11/28/2017 10:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTKhuyenMai](
	[MaCTKM] [int] IDENTITY(1,1) NOT NULL,
	[MaKM] [int] NULL,
	[TTKM] [nvarchar](max) NULL,
	[ImageKM] [nvarchar](max) NULL,
 CONSTRAINT [PK_CTKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaCTKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatBan]    Script Date: 11/28/2017 10:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatBan](
	[MaDatBan] [int] IDENTITY(1,1) NOT NULL,
	[MaTV] [int] NULL,
	[NgayDat] [date] NULL,
	[DatNgay] [date] NULL,
	[GioDat] [time](7) NULL,
	[SoKhach] [int] NULL,
	[MaMenu] [int] NULL,
 CONSTRAINT [PK_DatBan] PRIMARY KEY CLUSTERED 
(
	[MaDatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 11/28/2017 10:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangDDH] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[TongTienHD] [float] NULL,
	[MaTV] [int] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioiThieu]    Script Date: 11/28/2017 10:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiThieu](
	[IdGioiThieu] [int] IDENTITY(1,1) NOT NULL,
	[TTGT] [nvarchar](max) NULL,
	[ImageGT] [nvarchar](max) NULL,
	[MaMenu] [int] NULL,
 CONSTRAINT [PK_GioiThieu] PRIMARY KEY CLUSTERED 
(
	[IdGioiThieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/28/2017 10:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[EmailKH] [nvarchar](50) NULL,
	[SdtKH] [nvarchar](50) NULL,
	[DiaChiKH] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 11/28/2017 10:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [int] IDENTITY(1,1) NOT NULL,
	[TitleKM] [nvarchar](50) NULL,
	[InfoKM] [nvarchar](max) NULL,
	[ImageKM] [nvarchar](max) NULL,
	[MaMenu] [int] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 11/28/2017 10:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
	[MaMenu] [int] NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 11/28/2017 10:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] NOT NULL,
	[TenLoaiTV] [nvarchar](50) NULL,
	[UuDai] [float] NULL,
 CONSTRAINT [PK_LoaiThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 11/28/2017 10:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MaMenu] [int] IDENTITY(1,1) NOT NULL,
	[Menu] [nvarchar](50) NULL,
	[Link] [nvarchar](50) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MaMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/28/2017 10:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[Gia] [decimal](18, 0) NULL,
	[NgayCapNhat] [date] NULL CONSTRAINT [DF_SanPham_NgayCapNhat]  DEFAULT (getdate()),
	[HinhAnh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaLoaiSP] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 11/28/2017 10:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaTV] [int] IDENTITY(1,1) NOT NULL,
	[TenTV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nchar](10) NULL,
	[EmailTV] [nvarchar](50) NULL,
	[SdtTV] [nvarchar](50) NULL,
	[DiaChiTV] [nvarchar](max) NULL,
	[MaLoaiTV] [int] NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CTKhuyenMai] ON 

INSERT [dbo].[CTKhuyenMai] ([MaCTKM], [MaKM], [TTKM], [ImageKM]) VALUES (1, 1, N'Đăng ký và tích lũy điểm thành viên để nhận được ưu đãi lớn ', N'KM01.jpg')
INSERT [dbo].[CTKhuyenMai] ([MaCTKM], [MaKM], [TTKM], [ImageKM]) VALUES (2, 2, N'Đặt trọn gói combo Tết để chung vui cùng gia đình', N'KM02.jpg')
INSERT [dbo].[CTKhuyenMai] ([MaCTKM], [MaKM], [TTKM], [ImageKM]) VALUES (3, 3, N'Tham gia các chương trình online để nhận được các voucher giảm giá ', N'KM03.jpg')
SET IDENTITY_INSERT [dbo].[CTKhuyenMai] OFF
SET IDENTITY_INSERT [dbo].[GioiThieu] ON 

INSERT [dbo].[GioiThieu] ([IdGioiThieu], [TTGT], [ImageGT], [MaMenu]) VALUES (1, N'Ngay từ những bước chân đầu tiên tới LeeO Restaurant, thực khách sẽ thấy Nhà hàng được bao trùm bởi một màu đỏ sang trọng, rạng rỡ, sắc màu của những bông hoa đào khoe sắc .', N'1.png', NULL)
INSERT [dbo].[GioiThieu] ([IdGioiThieu], [TTGT], [ImageGT], [MaMenu]) VALUES (2, N'Điểm xuyết trên toàn khuôn viên thoáng đãng của nhà hàng là những chiếc đèn lồng màu có thêu họa tiết hoa mai mềm mại. Sử dụng tông màu đỏ làm chủ đạo, từ những chiếc khăn ăn xinh xắn, những hàng ghế, những dãy bàn, ánh đèn tới trần nhà đều mang màu đặc trưng của loài hoa tượng trưng cho mùa Xuân.', N'2.png', NULL)
INSERT [dbo].[GioiThieu] ([IdGioiThieu], [TTGT], [ImageGT], [MaMenu]) VALUES (3, N'Bên những góc bàn riêng cho những bữa tiệc dưới 10 người, thực khách có thể chọn những góc bàn gần nhất với những ô cửa sổ lớn để ngắm nhìn vẻ đẹp một góc riêng phong cảnh xung quanh.', N'3.png', NULL)
INSERT [dbo].[GioiThieu] ([IdGioiThieu], [TTGT], [ImageGT], [MaMenu]) VALUES (4, N'Đặc biệt,  không gian thoáng đãng, rộng mở với tổng diện tích lên tới 700m2  còn giúp cho LeeO Restaurant tạo được lợi thế nổi trội bởi những dãy bàn dài thẳng tắp vô cùng tiện ích với những bữa tiệc lớn hàng chục người không bị chia nhỏ bởi sự giới hạn của không gian mà trở nên sum vầy, ấm cúng.', N'4.png', NULL)
INSERT [dbo].[GioiThieu] ([IdGioiThieu], [TTGT], [ImageGT], [MaMenu]) VALUES (5, N'LeeO Restaurant mang vẻ đẹp kiến trúc thuần Việt vô cùng gần gũi nhưng vẫn tiện nghi và hiện đại luôn đem lại cho thực khách cảm giác thư thái khi thưởng thức những món ăn ngon.', N'5.png', NULL)
SET IDENTITY_INSERT [dbo].[GioiThieu] OFF
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 

INSERT [dbo].[KhuyenMai] ([MaKM], [TitleKM], [InfoKM], [ImageKM], [MaMenu]) VALUES (1, N'Thẻ ưu đãi vàng', N'Tham gia ngay, số lượng có hạn', N'KM01.jpg', 5)
INSERT [dbo].[KhuyenMai] ([MaKM], [TitleKM], [InfoKM], [ImageKM], [MaMenu]) VALUES (2, N'Liên hoan tất niên - Vui tết đoàn viên', N'Vui tết đầm ấm cùng gia đình và người thân', N'KM02.jpg', 5)
INSERT [dbo].[KhuyenMai] ([MaKM], [TitleKM], [InfoKM], [ImageKM], [MaMenu]) VALUES (3, N'Voucher online nhận nhiều ưu đãi', N'Sử dụng voucher để nhận được nhiều phần quà hấp dẫn', N'KM03.jpg', 5)
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [MaMenu]) VALUES (1, N'Khai vị', 3)
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [MaMenu]) VALUES (2, N'Lẩu', 3)
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [MaMenu]) VALUES (3, N'Hải Sản', 3)
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [MaMenu]) VALUES (4, N'Bia', 4)
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [MaMenu]) VALUES (5, N'Rượu', 4)
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [MaMenu]) VALUES (6, N'Nước Ngọt', 4)
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoaiTV], [UuDai]) VALUES (0, N'Trùm', 100)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoaiTV], [UuDai]) VALUES (1, N'Admin', 10)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoaiTV], [UuDai]) VALUES (2, N'Member', 5)
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([MaMenu], [Menu], [Link]) VALUES (1, N'Home', N'index.aspx')
INSERT [dbo].[Menu] ([MaMenu], [Menu], [Link]) VALUES (2, N'Đặt Bàn', N'Datban.aspx')
INSERT [dbo].[Menu] ([MaMenu], [Menu], [Link]) VALUES (3, N'Thực Đơn', N'MenuSP.aspx')
INSERT [dbo].[Menu] ([MaMenu], [Menu], [Link]) VALUES (4, N'Đồ Uống', N'MenuSP.aspx')
INSERT [dbo].[Menu] ([MaMenu], [Menu], [Link]) VALUES (5, N'Khuyến Mại', N'Khuyenmai.aspx')
INSERT [dbo].[Menu] ([MaMenu], [Menu], [Link]) VALUES (6, N'Giới Thiệu', N'Gioithieu.aspx')
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (1, N'Súp hải sản đậu phụ', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'KV01.png', N'Ngon', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (2, N'Súp gà măng trúc', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'KV02.png', N'Ngon', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (3, N'Súp cua bể hải sâm', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'KV03.png', N'Ngon', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (4, N'Súp cua bào ngư', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'KV04.png', N'Ngon', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (5, N'Súp hải sản sa tế', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'KV05.png', N'Ngon', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (6, N'Gỏi dừa ngó sen', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'KV06.png', N'Ngon', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (7, N'Gỏi bưởi bò khô', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'KV07.png', N'Ngon', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (8, N'Gỏi mực thập cẩm', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'KV08.png', N'Ngon', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (9, N'Gỏi tai heo chua ngọt', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'KV09.png', N'Ngon', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (10, N'Lẩu hải sản ', CAST(135000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'LA01.png', N'Ngon', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (11, N'Lẩu cua sa tế', CAST(135000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'LA02.png', N'Ngon', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (12, N'Lẩu cua chua cay', CAST(135000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'LA03.png', N'Ngon', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (13, N'Lẩu hải sản chua ngọt', CAST(135000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'LA04.png', N'Ngon', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (14, N'Lẩu cá chép chua ngọt', CAST(135000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'LA05.png', N'Ngon', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (15, N'Lẩu hải sản kim chi', CAST(135000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'LA06.png', N'Ngon', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (16, N'Lẩu bò kim chi', CAST(135000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'LA07.png', N'Ngon', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (17, N'Lẩu sườn non chua ngọt', CAST(135000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'LA08.png', N'Ngon', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (18, N'Lẩu bò nấm rơm', CAST(135000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'LA09.png', N'Ngon', 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (19, N'Tôm sú ôm dừa', CAST(105000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'HS01.png', N'Ngon', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (20, N'Tôm chiên sả ớt', CAST(105000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'HS02.png', N'Ngon', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (21, N'Tôm nướng chao bỏ lò', CAST(105000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'HS03.png', N'Ngon', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (22, N'Tôm chiên bọc bơ', CAST(105000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'HS04.png', N'Ngon', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (23, N'Cá chép sốt xì dầu', CAST(105000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'HS05.png', N'Ngon', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (24, N'Cá lăng xào sa tế', CAST(105000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'HS06.png', N'Ngon', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (25, N'Cá chép chiên giòn', CAST(105000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'HS07.png', N'Ngon', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (26, N'Cá diêu hồng hấp HongKong', CAST(105000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'HS08.png', N'Ngon', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (27, N'Cá chép sốt chua ngọt', CAST(105000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'HS09.png', N'Ngon', 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (28, N'Bia Hà Nội ', CAST(25000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'BE01.png', N'Ngon', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (29, N'Bia Tiger', CAST(25000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'BE02.png', N'Ngon', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (30, N'Bia Corona Extra', CAST(25000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'BE03.png', N'Ngon', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (31, N'Bia Tiger Bạc', CAST(25000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'BE04.png', N'Ngon', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (32, N'Bia OeTTinger', CAST(25000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'BE05.png', N'Ngon', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (33, N'Bia Affligem', CAST(25000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'BE06.png', N'Ngon', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (34, N'Bia Baravia', CAST(25000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'BE07.png', N'Ngon', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (35, N'Bia Bibugen', CAST(25000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'BE08.png', N'Ngon', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (36, N'Bia Heniken Bom', CAST(25000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'BE09.png', N'Ngon', 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (37, N'Rượu Vodka Volk', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'RU01.png', N'Ngon', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (38, N'Rượu Rose Cuervo', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'RU02.png', N'Ngon', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (39, N'Rượu Macallak', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'RU03.png', N'Ngon', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (40, N'Rượu Vodka Hà Nội', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'RU04.png', N'Ngon', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (41, N'Rượu Bakadi', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'RU05.png', N'Ngon', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (42, N'Rượu Luxury', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'RU06.png', N'Ngon', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (43, N'Rượu Chivas 12', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'RU07.png', N'Ngon', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (44, N'Rượu Chivas 18', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'RU08.png', N'Ngon', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (45, N'Rượu Malt Whisky', CAST(60000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'RU09.png', N'Ngon', 5)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (46, N'Pepsi chai', CAST(20000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'NN01.png', N'Ngon', 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (47, N'Cocacola chai', CAST(20000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'NN02.png', N'Ngon', 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (48, N'Sting dâu chai', CAST(20000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'NN03.png', N'Ngon', 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (49, N'Sting vàng chai', CAST(20000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'NN04.png', N'Ngon', 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (50, N'Numberone', CAST(20000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'NN05.png', N'Ngon', 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (51, N'Numberone (Có ruồi)', CAST(22000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'NN06.png', N'Ngon', 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (52, N'Twister', CAST(20000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'NN07.png', N'Ngon', 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (53, N'Mirinda lon', CAST(20000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'NN08.png', N'Ngon', 6)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP]) VALUES (54, N'Trà thảo mộc Dr.Ruồi', CAST(20000 AS Decimal(18, 0)), CAST(N'2017-11-28' AS Date), N'NN09.png', N'Ngon', 6)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaTV], [TenTV], [NgaySinh], [GioiTinh], [EmailTV], [SdtTV], [DiaChiTV], [MaLoaiTV], [TaiKhoan], [MatKhau]) VALUES (1, N'Nguyễn Xuân Việt Anh', CAST(N'1996-12-15' AS Date), N'Nam       ', N'nguyenxuanvietanhdh@gmail.com', N'01644671469', N'419/73/ Phạm Ngũ Lão', 0, N'saobangmuadong_dh', N'01644671469')
INSERT [dbo].[ThanhVien] ([MaTV], [TenTV], [NgaySinh], [GioiTinh], [EmailTV], [SdtTV], [DiaChiTV], [MaLoaiTV], [TaiKhoan], [MatKhau]) VALUES (2, N'Nguyễn Xuân Việt Anh', CAST(N'1996-12-15' AS Date), N'Nam       ', N'nguyenxuanvietanhdh@gmail.com', N'01644671469', N'419/73/ Phạm Ngũ Lão', 2, N'nguyenxuanvietanhdh', N'01644671469')
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
ALTER TABLE [dbo].[DatBan] ADD  CONSTRAINT [DF_DatBan_DatNgay]  DEFAULT (getdate()) FOR [DatNgay]
GO
ALTER TABLE [dbo].[DonDatHang] ADD  CONSTRAINT [DF_DonDatHang_NgayDat]  DEFAULT (getdate()) FOR [NgayDat]
GO
ALTER TABLE [dbo].[CTDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTDonDatHang] CHECK CONSTRAINT [FK_CTDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[CTDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonDatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTDonDatHang] CHECK CONSTRAINT [FK_CTDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[CTKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_CTKhuyenMai_KhuyenMai] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTKhuyenMai] CHECK CONSTRAINT [FK_CTKhuyenMai_KhuyenMai]
GO
ALTER TABLE [dbo].[DatBan]  WITH CHECK ADD  CONSTRAINT [FK_DatBan_Menu] FOREIGN KEY([MaMenu])
REFERENCES [dbo].[Menu] ([MaMenu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DatBan] CHECK CONSTRAINT [FK_DatBan_Menu]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_ThanhVien] FOREIGN KEY([MaTV])
REFERENCES [dbo].[ThanhVien] ([MaTV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_ThanhVien]
GO
ALTER TABLE [dbo].[GioiThieu]  WITH CHECK ADD  CONSTRAINT [FK_GioiThieu_Menu] FOREIGN KEY([MaMenu])
REFERENCES [dbo].[Menu] ([MaMenu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioiThieu] CHECK CONSTRAINT [FK_GioiThieu_Menu]
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_KhuyenMai_Menu] FOREIGN KEY([MaMenu])
REFERENCES [dbo].[Menu] ([MaMenu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhuyenMai] CHECK CONSTRAINT [FK_KhuyenMai_Menu]
GO
ALTER TABLE [dbo].[LoaiSP]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSP_Menu] FOREIGN KEY([MaMenu])
REFERENCES [dbo].[Menu] ([MaMenu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoaiSP] CHECK CONSTRAINT [FK_LoaiSP_Menu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_LoaiThanhVien]
GO
USE [master]
GO
ALTER DATABASE [WebsiteNhaHang] SET  READ_WRITE 
GO
