USE [MCmobile]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 7/19/2022 2:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[username] [nvarchar](60) NOT NULL,
	[password] [varchar](max) NOT NULL,
	[sdt] [varchar](max) NULL,
	[email] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/19/2022 2:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[IDHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[Ngay] [datetime] NULL,
	[IDKhachHang] [int] NULL,
	[TongTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 7/19/2022 2:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[IDHoaDon] [int] NOT NULL,
	[IDSanPham] [int] NOT NULL,
	[SoLuong] [smallint] NOT NULL,
	[Gia] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC,
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/19/2022 2:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenkhachHang] [nvarchar](max) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[SDT] [nvarchar](max) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 7/19/2022 2:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[IDLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](max) NOT NULL,
	[MieuTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 7/19/2022 2:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[IDNhaCungCap] [int] IDENTITY(1,1) NOT NULL,
	[TenCongTy] [nvarchar](max) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Fax] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/19/2022 2:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IDNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](max) NOT NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](max) NULL,
	[ChucDanh] [nvarchar](max) NULL,
	[SDT] [varchar](max) NULL,
	[AnhThe] [varchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/19/2022 2:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[IDSanPham] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
	[Tittle] [nvarchar](max) NOT NULL,
	[Gia] [money] NOT NULL,
	[SoLuong] [smallint] NOT NULL,
	[DonViTinh] [nvarchar](max) NULL,
	[Anh] [varchar](max) NULL,
	[NgayMoBan] [date] NULL,
	[MieuTa] [nvarchar](max) NULL,
	[IDLoaiSP] [int] NULL,
	[IDNhaCungCap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([username], [password], [sdt], [email]) VALUES (N'admin', N'123@', N'12345367', N'admin123@gmail.com')
INSERT [dbo].[Admin] ([username], [password], [sdt], [email]) VALUES (N'hanh', N'123@', N'02345623', N'hanh123@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([IDHoaDon], [Ngay], [IDKhachHang], [TongTien]) VALUES (1, CAST(N'2022-07-19T00:00:00.000' AS DateTime), 123, 16200000.0000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [Ngay], [IDKhachHang], [TongTien]) VALUES (2, CAST(N'2022-07-19T00:00:00.000' AS DateTime), 2, 16200000.0000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [Ngay], [IDKhachHang], [TongTien]) VALUES (3, CAST(N'2022-07-19T00:00:00.000' AS DateTime), 0, 32000000.0000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [Ngay], [IDKhachHang], [TongTien]) VALUES (4, CAST(N'2022-07-19T00:00:00.000' AS DateTime), 4, 4200000.0000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [Ngay], [IDKhachHang], [TongTien]) VALUES (5, CAST(N'2022-07-19T00:00:00.000' AS DateTime), 5, 6680000.0000)
INSERT [dbo].[HoaDon] ([IDHoaDon], [Ngay], [IDKhachHang], [TongTien]) VALUES (6, CAST(N'2022-07-19T00:00:00.000' AS DateTime), 6, 0.0000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
INSERT [dbo].[HoaDonChiTiet] ([IDHoaDon], [IDSanPham], [SoLuong], [Gia]) VALUES (5, 7, 1, 6680000.0000)
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([IDKhachHang], [TenkhachHang], [DiaChi], [SDT], [GhiChu]) VALUES (1, N'hanh', N'tha', N'038', N'no')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenkhachHang], [DiaChi], [SDT], [GhiChu]) VALUES (2, N'hanh', N'tha', N'038', N'no')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenkhachHang], [DiaChi], [SDT], [GhiChu]) VALUES (3, N'iphone', N'qw', N'3', N'3')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenkhachHang], [DiaChi], [SDT], [GhiChu]) VALUES (4, N'in', N'12', N'12132', N'1')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenkhachHang], [DiaChi], [SDT], [GhiChu]) VALUES (5, N'wretryty', N'qwere', N'12345', N'123')
INSERT [dbo].[KhachHang] ([IDKhachHang], [TenkhachHang], [DiaChi], [SDT], [GhiChu]) VALUES (6, N'wretryty', N'qwere', N'12345', N'123')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([IDLoaiSP], [TenLoaiSP], [MieuTa]) VALUES (1, N'Điện thoại', N'none')
INSERT [dbo].[LoaiSanPham] ([IDLoaiSP], [TenLoaiSP], [MieuTa]) VALUES (2, N'Máy tính bảng', N'none')
INSERT [dbo].[LoaiSanPham] ([IDLoaiSP], [TenLoaiSP], [MieuTa]) VALUES (3, N'Đồng hồ', N'none')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([IDNhaCungCap], [TenCongTy], [DiaChi], [Fax]) VALUES (1, N'Apple', N'USA', N'11111')
INSERT [dbo].[NhaCungCap] ([IDNhaCungCap], [TenCongTy], [DiaChi], [Fax]) VALUES (2, N'SamSung', N'Korea', N'22222')
INSERT [dbo].[NhaCungCap] ([IDNhaCungCap], [TenCongTy], [DiaChi], [Fax]) VALUES (3, N'Xiaomi', N'China', N'33333')
INSERT [dbo].[NhaCungCap] ([IDNhaCungCap], [TenCongTy], [DiaChi], [Fax]) VALUES (4, N'Oppo', N'China', N'44444')
INSERT [dbo].[NhaCungCap] ([IDNhaCungCap], [TenCongTy], [DiaChi], [Fax]) VALUES (5, N'Vivo', N'China', N'55555')
INSERT [dbo].[NhaCungCap] ([IDNhaCungCap], [TenCongTy], [DiaChi], [Fax]) VALUES (6, N'Realme', N'China', N'66666')
INSERT [dbo].[NhaCungCap] ([IDNhaCungCap], [TenCongTy], [DiaChi], [Fax]) VALUES (7, N'Nokia', N'Finland', N'77777')
INSERT [dbo].[NhaCungCap] ([IDNhaCungCap], [TenCongTy], [DiaChi], [Fax]) VALUES (8, N'BKAV', N'Vietnam', N'88888')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([IDSanPham], [Ten], [Tittle], [Gia], [SoLuong], [DonViTinh], [Anh], [NgayMoBan], [MieuTa], [IDLoaiSP], [IDNhaCungCap]) VALUES (1, N'Samsung Galaxy Tab S8', N'Sam Sung', 10000000.0000, 123, N'Chiếc', N'images/tabs8.jpg', CAST(N'2022-06-01' AS Date), N'Samsung Galaxy Tab S8 ra mắt và vẫn giữ được đặc trưng của dòng máy tính bảng Galaxy Tab S với 
	 cấu hình mạnh mẽ, màn hình hiển thị ổn cùng khả năng hỗ trợ bút S Pen hỗ trợ học tập làm việc tốt hơn.', 2, 1)
INSERT [dbo].[SanPham] ([IDSanPham], [Ten], [Tittle], [Gia], [SoLuong], [DonViTinh], [Anh], [NgayMoBan], [MieuTa], [IDLoaiSP], [IDNhaCungCap]) VALUES (2, N'iPad Air 5 M1 Wifi Cellular', N'Apple', 10000000.0000, 123, N'Chiếc', N'images/ipadair5.jpg', CAST(N'2022-06-12' AS Date), N'So với chiếc iPad Air 5 M1 Wifi 64GB thì chiếc iPad Air 5 M1 Wifi Cellular 64GB đã có một điểm khác biệt đáng kể đó là phương thức kết nối khi bạn vừa có thể sử dụng Wifi và vừa sử dụng mạng di động một cách bình thường nhưng vẫn cho một trải nghiệm rất tuyệt vời.', 2, 1)
INSERT [dbo].[SanPham] ([IDSanPham], [Ten], [Tittle], [Gia], [SoLuong], [DonViTinh], [Anh], [NgayMoBan], [MieuTa], [IDLoaiSP], [IDNhaCungCap]) VALUES (3, N'Huawei MatePad 11', N'Huawei ', 6000000.0000, 123, N'Chiếc', N'images/sswatch4.jpg', CAST(N'2022-06-21' AS Date), N'MatePad 11 - chiếc máy tính bảng Huawei với lối thiết kế tối giản nhưng vẫn toát lên vẻ sang trọng, sở hữu trong mình cấu hình mạnh mẽ, màn hình lớn cùng một viên pin trâu có thể đáp ứng được hầu hết các tác vụ làm việc, học tập hay giải trí. ', 2, 1)
INSERT [dbo].[SanPham] ([IDSanPham], [Ten], [Tittle], [Gia], [SoLuong], [DonViTinh], [Anh], [NgayMoBan], [MieuTa], [IDLoaiSP], [IDNhaCungCap]) VALUES (4, N'Samsung Galaxy Watch 4 LTE 40mm', N'Sam Sung', 2100000.0000, 123, N'Chiếc', N'images/tabs8.jpg', CAST(N'2022-06-01' AS Date), N'Kiểu dáng trang nhã, thanh lịch cùng công nghệ tiên tiến đánh dấu kỷ nguyên mới của Samsung
Samsung Galaxy Watch 4 LTE nổi bật bởi thiết kế thời trang với khung viền nhôm cứng cáp, dây đeo silicone chắc chắn cùng viền xoay cảm ứng đặc trưng của thương hiệu điện tử Samsung. Phiên bản 40mm này phù hợp với các bạn bạn trẻ năng động, ưa thích mang đồng hồ ngay cả khi hoạt động thể thao mà vẫn giữ được vẻ thanh lịch nhờ thiết kế nhỏ gọn cùng mặt đồng hồ tròn cổ điển.', 3, 1)
INSERT [dbo].[SanPham] ([IDSanPham], [Ten], [Tittle], [Gia], [SoLuong], [DonViTinh], [Anh], [NgayMoBan], [MieuTa], [IDLoaiSP], [IDNhaCungCap]) VALUES (5, N'BeU B1 Đen ', N'BeU', 300000.0000, 123, N'Chiếc', N'images/beu.jpg', CAST(N'2022-06-21' AS Date), N'
Đồng hồ thông minh BeU B1 Đen mang thiết kế trẻ trung phù hợp với những bạn trẻ theo đuổi phong cách đơn giản. Đồng hồ được trang bị màn hình 1.3 inch với độ phân giải 240 x 240 pixels giúp việc quan sát trở nên dễ dàng hơn.

Bên cạnh đó, dây đeo được làm bằng chất liệu silicone mềm mại, tạo cảm giác thoải mái cho người dùng. Dây đeo đồng hồ có thể tháo rời để việc vệ sinh đồng hồ nhanh chóng và tiện lợi.', 3, 1)
INSERT [dbo].[SanPham] ([IDSanPham], [Ten], [Tittle], [Gia], [SoLuong], [DonViTinh], [Anh], [NgayMoBan], [MieuTa], [IDLoaiSP], [IDNhaCungCap]) VALUES (6, N'Apple Watch S6 LTE 40mm', N'AppleS', 8000000.0000, 123, N'Chiếc', N'images/watch6.jpg', CAST(N'2022-05-01' AS Date), N'
Apple Watch S6 LTE 40mm viền thép dây thép sở hữu các chi tiết được thiết kế tinh xảo, dây đeo thép bền bỉ dưới hình dáng lưới đan mỏng. Màn hình 1.57 inch hiển thị hình ảnh sắc nét, mặt kính Sapphire giúp bảo vệ chiếc đồng hồ của bạn an toàn trước những va đập không mong muốn.', 3, 1)
INSERT [dbo].[SanPham] ([IDSanPham], [Ten], [Tittle], [Gia], [SoLuong], [DonViTinh], [Anh], [NgayMoBan], [MieuTa], [IDLoaiSP], [IDNhaCungCap]) VALUES (7, N' OPPO Reno7 Z 5G ', N'Oppo', 3340000.0000, 122, N'Chiếc', N'images/reno7.jpg', CAST(N'2022-06-10' AS Date), N' OPPO đã trình làng mẫu Reno7 Z 5G với thiết kế OPPO Glow độc quyền, camera mang hiệu ứng như máy DSLR chuyên nghiệp cùng viền sáng kép, máy có một cấu hình mạnh mẽ và đạt chứng nhận xếp hạng A về độ mượt ', 1, 1)
INSERT [dbo].[SanPham] ([IDSanPham], [Ten], [Tittle], [Gia], [SoLuong], [DonViTinh], [Anh], [NgayMoBan], [MieuTa], [IDLoaiSP], [IDNhaCungCap]) VALUES (8, N' Xiaomi Redmi Note 11S 5G ', N'Xiaomi', 2330000.0000, 123, N'Chiếc', N'images/redmi11s.jpg', CAST(N'2022-06-11' AS Date), N' Tại sự kiện ra mắt sản phẩm mới diễn ra hôm 29/3, điện thoại Xiaomi đã ra mắt Redmi Note 11S 5G toàn cầu. Thiết bị là một bản nâng cấp đáng giá so với Redmi Note 11S 4G, cùng xem máy có gì đặc biệt thôi nào.  ', 1, 1)
INSERT [dbo].[SanPham] ([IDSanPham], [Ten], [Tittle], [Gia], [SoLuong], [DonViTinh], [Anh], [NgayMoBan], [MieuTa], [IDLoaiSP], [IDNhaCungCap]) VALUES (9, N' Vivo Y15s ', N'Vivo', 1215000.0000, 123, N'Chiếc', N'images/vivoY15s.jpg', CAST(N'2022-06-12' AS Date), N' Vivo vừa mang một chiến binh mới đến phân khúc tầm trung giá rẻ có tên Vivo Y15s, một sản phẩm sở hữu khá nhiều ưu điểm như thiết kế đẹp, màn hình lớn, camera kép, pin cực trâu và còn rất nhiều điều thú vị khác đang chờ đón bạn.  ', 1, 1)
INSERT [dbo].[SanPham] ([IDSanPham], [Ten], [Tittle], [Gia], [SoLuong], [DonViTinh], [Anh], [NgayMoBan], [MieuTa], [IDLoaiSP], [IDNhaCungCap]) VALUES (10, N' Samsung Galaxy A73 5G 128GB ', N'Sam Sung', 4020000.0000, 123, N'Chiếc', N'images/galaxyA73.jpg', CAST(N'2022-06-13' AS Date), N' Samsung Galaxy A73 5G 128GB được xem là sản phẩm nổi bật nhất dòng Galaxy A 2022 mới ra mắt, máy trang bị bộ thông số kỹ thuật ấn tượng về phần hiệu năng, chất lượng màn hình và nổi bật nhất trong số đó là camera khi nó đem lại bức ảnh có độ phân giải lên đến 108 MP. ', 1, 1)
INSERT [dbo].[SanPham] ([IDSanPham], [Ten], [Tittle], [Gia], [SoLuong], [DonViTinh], [Anh], [NgayMoBan], [MieuTa], [IDLoaiSP], [IDNhaCungCap]) VALUES (11, N' Samsung Galaxy S20 FE ', N'Sam Sung', 4400000.0000, 123, N'Chiếc', N'images/galaxyS20.jpg', CAST(N'2022-06-24' AS Date), N' Samsung đã giới thiệu đến người dùng thành viên mới của dòng S20 Series đó chính là điện thoại Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn. ', 1, 1)
INSERT [dbo].[SanPham] ([IDSanPham], [Ten], [Tittle], [Gia], [SoLuong], [DonViTinh], [Anh], [NgayMoBan], [MieuTa], [IDLoaiSP], [IDNhaCungCap]) VALUES (12, N' iPhone 12 64GB ', N'Apple', 7225000.0000, 123, N'Chiếc', N'images/ iphone12.jpg', CAST(N'2022-06-15' AS Date), N' Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB. ', 1, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([IDHoaDon])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([IDLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([IDLoaiSP])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([IDNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([IDNhaCungCap])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD CHECK  (([Gia]>=(0)))
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([NgaySinh]<getdate()))
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD CHECK  (([Gia]>=(0)))
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD CHECK  (([NgayMoBan]<=getdate()))
GO
