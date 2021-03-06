USE [Web]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 5/19/2021 4:34:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[soluong] [int] NOT NULL,
	[id_hoadon] [bigint] NOT NULL,
	[id_sanpham] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietsanpham]    Script Date: 5/19/2021 4:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietsanpham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[anhchitiet] [ntext] NOT NULL,
	[id_sanpham] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 5/19/2021 4:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](191) NOT NULL,
	[sonha] [nvarchar](191) NOT NULL,
	[diachi] [nvarchar](191) NOT NULL,
	[dienthoai] [nvarchar](191) NOT NULL,
	[email] [nvarchar](191) NOT NULL,
	[ghichu] [ntext] NULL,
	[trangthai] [int] NOT NULL,
	[ngaydat] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaisanpham]    Script Date: 5/19/2021 4:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisanpham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](191) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 5/19/2021 4:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tensanpham] [ntext] NOT NULL,
	[mota] [ntext] NOT NULL,
	[giagoc] [float] NOT NULL,
	[khuyenmai] [int] NOT NULL,
	[anhchinh] [ntext] NOT NULL,
	[tinhtrang] [int] NOT NULL,
	[luotthich] [int] NOT NULL,
	[id_loaisp] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 5/19/2021 4:34:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tentaikhoan] [nvarchar](191) NOT NULL,
	[email] [nvarchar](191) NOT NULL,
	[matkhau] [nvarchar](191) NOT NULL,
	[phanquyen] [nvarchar](191) NOT NULL,
	[tenhienthi] [nvarchar](191) NOT NULL,
	[hinhanh] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chitiethoadon] ON 

INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (1, 1, 1, 3)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (3, 1, 1, 4)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (4, 1, 2, 4)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (5, 1, 2, 6)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (6, 3, 3, 3)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (7, 1, 3, 4)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (8, 3, 3, 6)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (9, 1, 4, 2)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (10, 1, 5, 5)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (11, 1, 5, 6)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (12, 1, 6, 6)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (13, 1, 6, 7)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (14, 1, 7, 2)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (15, 1, 7, 5)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (16, 1, 7, 6)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (17, 1, 8, 8)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (18, 5, 9, 2)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (19, 2, 16, 3)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (20, 1, 17, 1)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (21, 1, 18, 2)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (22, 1, 19, 1)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (23, 2, 19, 2)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (24, 1, 20, 4)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (25, 1, 21, 1)
SET IDENTITY_INSERT [dbo].[chitiethoadon] OFF
GO
SET IDENTITY_INSERT [dbo].[chitietsanpham] ON 

INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (15, N'1621389054991conmeo.jpg', 2)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (16, N'1621389061858conmeo.jpg', 2)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (45, N'1621389025769ctsanpham-4.jpg', 1)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (46, N'1621389034243giohang1.jpg', 1)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (47, N'1621389092028conngua.jpg', 3)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (48, N'1621389110605hinhanh10.jpg', 4)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (49, N'1621389155255danhmuc1.jpg', 5)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (50, N'1621389163873giohang3.jpg', 5)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (51, N'1621389206555hinhanh2.jpg', 6)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (52, N'1621388212950hinhanh12.jpg', 8)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (53, N'1621388249938goiy.png', 7)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (54, N'1621389319378ctsanpham-4.jpg', 12)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (55, N'1621388300348danhmuc1.jpg', 13)
SET IDENTITY_INSERT [dbo].[chitietsanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[hoadon] ON 

INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (1, N'Huỳnh Văn Thùy', N'Phường Hòa Hiệp Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', N'Thôn 5 An lâu 1', N'097365528', N'HuynhVan@gmail.com', N'Không có', 3, CAST(N'2018-11-26T02:05:12.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (2, N'Huỳnh Văn Thùy', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'Thôn 5 An lâu 1', N'0977977977', N'huynhvanthuy1997@gmail.com', N'giao hàng gấp trong 3 ngày tetsts', 1, CAST(N'2018-12-09T18:05:19.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (3, N'Huỳnh Văn Thùy', N'Phường An Mỹ, Thành phố Tam Kỳ, Tỉnh Quảng Nam', N'171 Hùng Vương', N'0977583016', N'huynhvanthuy1997@gmail.com', N'Không có gì', 2, CAST(N'2018-12-10T08:22:02.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (4, N'Trần Quang Tân', N'Phường Tân An, Thành phố Hội An, Tỉnh Quảng Nam', N'12 Lê Minh Hoàng', N'0936156285', N'tan@gmail.com', N'Không có', 2, CAST(N'2018-12-02T08:24:05.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (5, N'Nguyễn Châu', N'Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', N'12 Lý Thái Tổ', N'0936156285', N'tan@gmail.com', N'Trà sữa rất ngon', 2, CAST(N'2018-12-04T08:26:57.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (6, N'Nguyễn Thành Nam', N'Phường Minh An, Thành phố Hội An, Tỉnh Quảng Nam', N'12 An Dương Vương', N'0826153715', N'namthanh1739@gmail.com', N'Không cần ship nhanh', 2, CAST(N'2018-12-06T08:28:12.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (7, N'Lê Hoàng Chánh', N'Phường Hòa Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', N'33 Ngô Quyền', N'093723749', N'huynhhoang@gmail.com', N'Giao hàng nhanh nhé', 1, CAST(N'2018-12-10T08:29:35.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (8, N'Châu Thị Thi Ngân', N'Phường Bình Thuận, Quận Hải Châu, Thành phố Đà Nẵng', N'13 Hoàng Chính', N'09374635273', N'hoangchinh@gmail.com', N'Không có gì', 2, CAST(N'2018-12-10T08:31:58.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (9, N'HUYNH VAN tUHY', N'Phường Nam Dương, Quận Hải Châu, Thành phố Đà Nẵng', N'12 Duy Tân', N'0936156285', N'huynhhoang@gmail.com', N'Giao hàng nhanh', 0, CAST(N'2018-12-10T10:49:54.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (14, N'hung', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'131 Trần phú', N'0973468684', N'kakalot@gmail.com', N'tốc độ', 0, CAST(N'2019-04-14T18:50:01.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (15, N'hung', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'131 Trần phú', N'973468684', N'kakalot@gmail.com', N'tốc độ', 0, CAST(N'2019-04-14T19:02:58.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (16, N'admin', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'131 Trần phú', N'973468684', N'kidxizaiqb2@gmail.com', N'tốc độ', 0, CAST(N'2019-04-14T19:04:35.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (17, N'hùngcute', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'131 Trần phú', N'973468684', N'kidxizaiqb2@gmail.com', N'hrhr', 0, CAST(N'2019-04-14T19:16:49.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (18, N'admin12', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'131 Trần phú', N'973468684', N'kidxizaiqb2@gmail.com', N'tre', 0, CAST(N'2019-04-14T19:36:38.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (19, N'hung', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'131 Trần phú', N'0973468684', N'kidxizaiqb@gmail.com', N'test', 0, CAST(N'2019-04-16T00:53:56.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (20, N'hung', N'Phường Hòa Phát, Quận Cẩm Lệ, Thành phố Đà Nẵng', N'quang binh', N'973468684', N'kidxizaiqb@gmail.com', N'haha', 0, CAST(N'2019-08-16T23:56:18.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (21, N'ffffffffffff', N'Phường Hòa Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', N'ffffff', N'444444', N'f@gmail.com', N'xxxx', 0, CAST(N'2021-05-19T10:17:37.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[hoadon] OFF
GO
SET IDENTITY_INSERT [dbo].[loaisanpham] ON 

INSERT [dbo].[loaisanpham] ([id], [tenloai]) VALUES (1, N'Tranh thiên nhiên')
INSERT [dbo].[loaisanpham] ([id], [tenloai]) VALUES (2, N'Tranh buôn bán')
INSERT [dbo].[loaisanpham] ([id], [tenloai]) VALUES (3, N'Tranh phố phường')
INSERT [dbo].[loaisanpham] ([id], [tenloai]) VALUES (4, N'Tranh động vât')
SET IDENTITY_INSERT [dbo].[loaisanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (1, N'tranh1', N'Tranh đồng ruộng', 20000, 5, N'1621388979089ctsanpham-4.jpg', 1, 100, 1)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (2, N'con mèof', N'Tranh con mèo', 20000, 0, N'1621388993857conmeo.jpg', 1, 323, 2)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (3, N'tranh con ngựa', N'tranh con ngựa ', 13000, 2, N'1621389010006hinhanh11.jpg', 1, 1238, 2)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (4, N'tranh còn gà', N'tranh con gà', 40000, 5, N'1621389138234hinhanh10.jpg', 0, 3853, 2)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (5, N'tranh con người', N'tranh con người ', 30000, 4, N'1621389185677danhmuc1.jpg', 0, 5302, 2)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (6, N'tranh phố quê', N'', 15000, 0, N'1621389230813hinhanh3.jpg', 1, 123, 3)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (7, N'thành phố', N'thành phố', 20000, 0, N'1621389247380hinhanh3.jpg', 0, 32, 3)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (8, N'con vượn', N'con vượn', 45000, 2, N'1621389262910conngua.jpg', 1, 462, 4)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (12, N'tranh hoa', N'tranh hoa', 12000, 0, N'1621389276310danhmuc3.jpg', 0, 0, 1)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (13, N'tranh 2', N'tranh', 23333, 0, N'1621389290481giohang3.jpg', 0, 0, 1)
SET IDENTITY_INSERT [dbo].[sanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[taikhoan] ON 

INSERT [dbo].[taikhoan] ([id], [tentaikhoan], [email], [matkhau], [phanquyen], [tenhienthi], [hinhanh]) VALUES (10, N'admin', N'hunghihi@gmail.com', N'123456', N'1', N'Hung Cute', N'avata.png')
INSERT [dbo].[taikhoan] ([id], [tentaikhoan], [email], [matkhau], [phanquyen], [tenhienthi], [hinhanh]) VALUES (14, N'hunghihi', N'kidxizaiqb@gmail.com', N'123456', N'0', N'hung', N'avata.png')
INSERT [dbo].[taikhoan] ([id], [tentaikhoan], [email], [matkhau], [phanquyen], [tenhienthi], [hinhanh]) VALUES (17, N'hunghihi2', N'kakalot2@gmail.com', N'123456', N'0', N'hungdaik', N'avata.png')
INSERT [dbo].[taikhoan] ([id], [tentaikhoan], [email], [matkhau], [phanquyen], [tenhienthi], [hinhanh]) VALUES (19, N'luupot', N'potvanluu98@gmail.com', N'12345678', N'0', N'lưu văn pốt', N'avatar.png')
INSERT [dbo].[taikhoan] ([id], [tentaikhoan], [email], [matkhau], [phanquyen], [tenhienthi], [hinhanh]) VALUES (20, N'test4', N'potvanluu@gamil.com', N'12345678', N'0', N'skbfsdkfusufvsjhf', N'avatar.png')
INSERT [dbo].[taikhoan] ([id], [tentaikhoan], [email], [matkhau], [phanquyen], [tenhienthi], [hinhanh]) VALUES (22, N'test3', N'potvanluddu98@gmail.com', N'12345678', N'0', N'ssfsdfdsgds', N'avatar.png')
SET IDENTITY_INSERT [dbo].[taikhoan] OFF
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_hoadon] FOREIGN KEY([id_hoadon])
REFERENCES [dbo].[hoadon] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_hoadon]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_sanpham] FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[sanpham] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_sanpham]
GO
ALTER TABLE [dbo].[chitietsanpham]  WITH CHECK ADD  CONSTRAINT [FK_chitietsanpham_sanpham] FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[sanpham] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitietsanpham] CHECK CONSTRAINT [FK_chitietsanpham_sanpham]
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_loaisanpham] FOREIGN KEY([id_loaisp])
REFERENCES [dbo].[loaisanpham] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_loaisanpham]
GO
