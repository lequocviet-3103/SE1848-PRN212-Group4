

USE [master];
GO
-- Xóa database nếu đã tồn tại
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'DNASystem')
BEGIN
    ALTER DATABASE [DNASystem] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE [DNASystem];
    PRINT N'Đã xóa database DNASystem.';
END
GO

-- Tạo database mới
CREATE DATABASE [DNASystem];
PRINT N'Đã tạo mới database DNASystem.';
GO

-- Chọn database mới
USE [DNASystem];
GO

SET DATEFORMAT DMY;
GO

/****** Object:  Table [dbo].[Booking] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[bookingID] [nvarchar](10) NOT NULL,
	[customerID] [nvarchar](10) NULL,
	[date] [datetime] NULL,
	[staffID] [nvarchar](10) NULL,
	[serviceID] [nvarchar](10) NULL,
	[address] [nvarchar](100) NULL,
	[method] [nvarchar](20) NULL,
	[status] [nvarchar](20) NULL,
 CONSTRAINT [PK__Booking__C6D03BEDBC0383B6] PRIMARY KEY CLUSTERED 
(
	[bookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Invoice]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[invoiceID] [nvarchar](10) NOT NULL,
	[bookingID] [nvarchar](10) NULL,
	[date] [datetime] NULL,
	[price] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceDetail]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetail](
	[invoicedetailID] [nvarchar](10) NOT NULL,
	[invoiceID] [nvarchar](10) NULL,
	[serviceID] [nvarchar](10) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[invoicedetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kit]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kit](
	[kitID] [nvarchar](10) NOT NULL,
	[customerID] [nvarchar](10) NULL,
	[staffID] [nvarchar](10) NULL,
	[bookingID] [nvarchar](10) NULL,
	[description] [nvarchar](max) NULL,
	[status] [nvarchar](50) NULL,
	[receivedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[kitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleID] [nvarchar](10) NOT NULL,
	[rolename] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[serviceID] [nvarchar](10) NOT NULL,
	[type] [nvarchar](50) NULL,
	[name] [nvarchar](100) NULL,
	[price] [decimal](10, 2) NULL,
	[description] [nvarchar](max) NULL,
	[image] [varchar](255) NULL,
 CONSTRAINT [PK__Service__4550733F121AD4A3] PRIMARY KEY CLUSTERED 
(
	[serviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestResult]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestResult](
	[resultID] [nvarchar](10) NOT NULL,
	[customerID] [nvarchar](10) NULL,
	[staffID] [nvarchar](10) NULL,
	[serviceID] [nvarchar](10) NULL,
	[bookingID] [nvarchar](10) NULL,
	[date] [datetime] NULL,
	[description] [nvarchar](max) NULL,
	[status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[resultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [nvarchar](10) NOT NULL,
	[username] [nvarchar](20) NOT NULL UNIQUE,
	[password] [nvarchar](20) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[gender] [varchar](10) NULL,
	[roleID] [nvarchar](10) NULL,
	[email] [varchar](50) NULL unique,
	[phone] [varchar](20) NULL,
	[birthdate] [date] NULL,
	[image] [varchar](255) NULL,
	[address] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK__Booking__custome__2739D489] FOREIGN KEY([customerID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK__Booking__custome__2739D489]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK__Booking__service__282DF8C2] FOREIGN KEY([serviceID])
REFERENCES [dbo].[Service] ([serviceID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK__Booking__service__282DF8C2]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK__Booking__staffID__29221CFB] FOREIGN KEY([staffID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK__Booking__staffID__29221CFB]

GO

ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK__Invoice__booking__2CF2ADDF] FOREIGN KEY([bookingID])
REFERENCES [dbo].[Booking] ([bookingID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK__Invoice__booking__2CF2ADDF]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD FOREIGN KEY([invoiceID])
REFERENCES [dbo].[Invoice] ([invoiceID])
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK__InvoiceDe__servi__2EDAF651] FOREIGN KEY([serviceID])
REFERENCES [dbo].[Service] ([serviceID])
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK__InvoiceDe__servi__2EDAF651]
GO
ALTER TABLE [dbo].[Kit]  WITH CHECK ADD  CONSTRAINT [FK__Kit__bookingID__31B762FC] FOREIGN KEY([bookingID])
REFERENCES [dbo].[Booking] ([bookingID])
GO
ALTER TABLE [dbo].[Kit] CHECK CONSTRAINT [FK__Kit__bookingID__31B762FC]
GO
ALTER TABLE [dbo].[Kit]  WITH CHECK ADD FOREIGN KEY([customerID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Kit]  WITH CHECK ADD FOREIGN KEY([staffID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[TestResult]  WITH CHECK ADD  CONSTRAINT [FK__TestResul__booki__3587F3E0] FOREIGN KEY([bookingID])
REFERENCES [dbo].[Booking] ([bookingID])
GO
ALTER TABLE [dbo].[TestResult] CHECK CONSTRAINT [FK__TestResul__booki__3587F3E0]
GO
ALTER TABLE [dbo].[TestResult]  WITH CHECK ADD FOREIGN KEY([customerID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[TestResult]  WITH CHECK ADD  CONSTRAINT [FK__TestResul__servi__339FAB6E] FOREIGN KEY([serviceID])
REFERENCES [dbo].[Service] ([serviceID])
GO
ALTER TABLE [dbo].[TestResult] CHECK CONSTRAINT [FK__TestResul__servi__339FAB6E]
GO
ALTER TABLE [dbo].[TestResult]  WITH CHECK ADD FOREIGN KEY([staffID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
USE [master]
GO
ALTER DATABASE [DNASystem] SET  READ_WRITE 
GO
USE [DNASystem];
GO

--bảng role
INSERT INTO [dbo].[Role] (roleID, rolename) VALUES ('R001', N'admin');
INSERT INTO [dbo].[Role] (roleID, rolename) VALUES ('R002', N'customer');
INSERT INTO [dbo].[Role] (roleID, rolename) VALUES ('R003', N'staff');

-- Dữ liệu bảng Users: 10 Admin
INSERT INTO [dbo].[Users] VALUES ('A001', N'nguyenvannguyen', N'123', N'Nguyễn Văn Nguyên', 'Male', 'R001', 'nguyen@gmail.com', '0905482739', '09-10-1998', NULL, N'130 Nguyễn Huệ');
INSERT INTO [dbo].[Users] VALUES ('A002', N'lequocviet', N'123', N'Lê Quốc Việt', 'Male', 'R001', 'viet@gmail.com', '0893746522', '09-02-1998', NULL, N'130 Nguyễn Huệ');
INSERT INTO [dbo].[Users] VALUES ('A003', N'huynhduckhanh', N'123', N'Huỳnh Đức Khánh', 'Male', 'R001', 'khanh@gmail.com', '0893748521', '07-10-2000', NULL, N'132 Trần Hưng Đạo');
INSERT INTO [dbo].[Users] VALUES ('A004', N'daonguyentrong', N'123', N'Đào Nguyên Trọng', 'Male', 'R001', 'trong@gmail.com', '0893789521', '09-10-2001', NULL, N'132 Trần Hưng Đạo');
INSERT INTO [dbo].[Users] VALUES ('A005', N'vungoctrung', N'123', N'Vũ Ngọc Trung', 'Male', 'R001', 'trung@gmail.com', '0893456521', '09-10-1998', NULL, N'132 Trần Hưng Đạo');
INSERT INTO [dbo].[Users] VALUES ('A006', N'nguyenthianh', N'123', N'Nguyễn Thị Ánh', 'Female', 'R001', 'anh@gmail.com', '0905482736', '15-03-1999', NULL, N'128 Lý Thường Kiệt');
INSERT INTO [dbo].[Users] VALUES ('A007', N'phamminhhoang', N'123', N'Phạm Minh Hoàng', 'Male', 'R001', 'hoang@gmail.com', '0893746521', '22-07-2001', NULL, N'129 Hai Bà Trưng');
INSERT INTO [dbo].[Users] VALUES ('A008', N'levanduc', N'123', N'Lê Văn Đức', 'Male', 'R001', 'duc@gmail.com', '0839275614', '09-10-1998', NULL, N'130 Nguyễn Huệ');
INSERT INTO [dbo].[Users] VALUES ('A009', N'phamthithao', N'123', N'Phạm Thị Thảo', 'Female', 'R001', 'thao@gmail.com', '0918564732', '05-06-2003', NULL, N'131 Pasteur');
INSERT INTO [dbo].[Users] VALUES ('A010', N'vothanhdat', N'123', N'Võ Thanh Đạt', 'Male', 'R001', 'dat@gmail.com', '0882397456', '28-12-2000', NULL, N'132 Trần Hưng Đạo');



-- Dữ liệu bảng Users: 20 Staff
INSERT INTO [dbo].[Users] VALUES ('S001', N'lethanhha', N'123', N'Lê Thành Hà', 'Male', 'R003', 'lethanhha@gmail.com', '0905827346', '12-05-1985', NULL, N'201 Lê Lai');
INSERT INTO [dbo].[Users] VALUES ('S002', N'phamthithuy', N'123', N'Phạm Thị Thúy', 'Female', 'R003', 'phamthithuy@gmail.com', '0893759281', '22-07-1988', NULL, N'202 Nguyễn Trãi');
INSERT INTO [dbo].[Users] VALUES ('S003', N'nguyenvandat', N'123', N'Nguyễn Văn Đạt', 'Male', 'R003', 'nguyenvandat@gmail.com', '0914839207', '03-02-1990', NULL, N'203 Lý Thường Kiệt');
INSERT INTO [dbo].[Users] VALUES ('S004', N'dothikieu', N'123', N'Đỗ Thị Kiều', 'Female', 'R003', 'dothikieu@gmail.com', '0901758392', '14-09-1983', NULL, N'204 Hai Bà Trưng');
INSERT INTO [dbo].[Users] VALUES ('S005', N'phanquocanh', N'123', N'Phan Quốc Anh', 'Male', 'R003', 'phanquocanh@gmail.com', '0938475102', '25-11-1987', NULL, N'205 Trần Hưng Đạo');
INSERT INTO [dbo].[Users] VALUES ('S006', N'tranthimai', N'123', N'Trần Thị Mai', 'Female', 'R003', 'tranthimai@gmail.com', '0910572638', '07-04-1993', NULL, N'206 Nguyễn Huệ');
INSERT INTO [dbo].[Users] VALUES ('S007', N'vutienphat', N'123', N'Vũ Tiến Phát', 'Male', 'R003', 'vutienphat@gmail.com', '0894736209', '18-08-1992', NULL, N'207 Pasteur');
INSERT INTO [dbo].[Users] VALUES ('S008', N'huynhthanhnga', N'123', N'Huỳnh Thanh Nga', 'Female', 'R003', 'huynhthanhnga@gmail.com', '0906274931', '30-12-1984', NULL, N'208 Võ Văn Tần');
INSERT INTO [dbo].[Users] VALUES ('S009', N'leminhtri', N'123', N'Lê Minh Trí', 'Male', 'R003', 'leminhtri@gmail.com', '0918572039', '21-03-1986', NULL, N'209 Cách Mạng Tháng 8');
INSERT INTO [dbo].[Users] VALUES ('S010', N'phamthuthao', N'123', N'Phạm Thu Thảo', 'Female', 'R003', 'phamthuthao@gmail.com', '0903728194', '11-06-1995', NULL, N'210 Điện Biên Phủ');
INSERT INTO [dbo].[Users] VALUES ('S011', N'nguyenvanhieu', N'123', N'Nguyễn Văn Hiếu', 'Male', 'R003', 'nguyenvanhieu@gmail.com', '0894629307', '28-10-1989', NULL, N'211 Hoàng Văn Thụ');
INSERT INTO [dbo].[Users] VALUES ('S012', N'tranthithu', N'123', N'Trần Thị Thu', 'Female', 'R003', 'tranthithu@gmail.com', '0916839274', '04-01-1997', NULL, N'212 Nam Kỳ Khởi Nghĩa');
INSERT INTO [dbo].[Users] VALUES ('S013', N'phamvankien', N'123', N'Phạm Văn Kiên', 'Male', 'R003', 'phamvankien@gmail.com', '0938462017', '17-07-1981', NULL, N'213 Bà Triệu');
INSERT INTO [dbo].[Users] VALUES ('S014', N'lethithanh', N'123', N'Lê Thị Thanh', 'Female', 'R003', 'lethithanh@gmail.com', '0905728391', '05-05-1994', NULL, N'214 Tôn Đức Thắng');
INSERT INTO [dbo].[Users] VALUES ('S015', N'dangminhduc', N'123', N'Đặng Minh Đức', 'Male', 'R003', 'dangminhduc@gmail.com', '0913928746', '09-09-1990', NULL, N'215 Hoàng Diệu');
INSERT INTO [dbo].[Users] VALUES ('S016', N'nguyenthithu', N'123', N'Nguyễn Thị Thu', 'Female', 'R003', 'nguyenthithu@gmail.com', '0895738290', '13-02-1982', NULL, N'216 Yersin');
INSERT INTO [dbo].[Users] VALUES ('S017', N'phamthanhdat', N'123', N'Phạm Thanh Đạt', 'Male', 'R003', 'phamthanhdat@gmail.com', '0930274591', '06-11-1983', NULL, N'217 Lương Thế Vinh');
INSERT INTO [dbo].[Users] VALUES ('S018', N'vothikieu', N'123', N'Võ Thị Kiều', 'Female', 'R003', 'vothikieu@gmail.com', '0916832074', '19-03-1988', NULL, N'218 Nguyễn Văn Cừ');
INSERT INTO [dbo].[Users] VALUES ('S019', N'phamvanhieu', N'123', N'Phạm Văn Hiếu', 'Male', 'R003', 'phamvanhieu@gmail.com', '0905739284', '27-08-1996', NULL, N'219 Lê Văn Sỹ');
INSERT INTO [dbo].[Users] VALUES ('S020', N'lethithao', N'123', N'Lê Thị Thảo', 'Female', 'R003', 'lethithao@gmail.com', '0894628173', '23-04-1987', NULL, N'220 Trần Phú');

-- Dữ liệu bảng Users: 20 Customer
INSERT INTO [dbo].[Users] VALUES ('C001', N'phamminhtam', N'123', N'Phạm Minh Tâm', 'Male', 'R002', 'phamminhtam@gmail.com', '0904738291', '15-03-1999', NULL, N'301 Nguyễn Du');
INSERT INTO [dbo].[Users] VALUES ('C002', N'lethithuythao', N'123', N'Lê Thị Thúy Thảo', 'Female', 'R002', 'lethithuythao@gmail.com', '0895739201', '22-07-2000', NULL, N'302 Trần Phú');
INSERT INTO [dbo].[Users] VALUES ('C003', N'nguyenvanduy', N'123', N'Nguyễn Văn Duy', 'Male', 'R002', 'nguyenvanduy@gmail.com', '0918374529', '03-02-1998', NULL, N'303 Điện Biên Phủ');
INSERT INTO [dbo].[Users] VALUES ('C004', N'dothithuy', N'123', N'Đỗ Thị Thúy', 'Female', 'R002', 'dothithuy@gmail.com', '0905738294', '14-09-2002', NULL, N'304 Nguyễn Thị Minh Khai');
INSERT INTO [dbo].[Users] VALUES ('C005', N'phamquocbao', N'123', N'Phạm Quốc Bảo', 'Male', 'R002', 'phamquocbao@gmail.com', '0893749207', '25-11-2001', NULL, N'305 Hoàng Diệu');
INSERT INTO [dbo].[Users] VALUES ('C006', N'tranthithuymai', N'123', N'Trần Thị Thùy Mai', 'Female', 'R002', 'tranthithuymai@gmail.com', '0910283746', '07-04-2003', NULL, N'306 Pasteur');
INSERT INTO [dbo].[Users] VALUES ('C007', N'vuminhtri', N'123', N'Vũ Minh Trí', 'Male', 'R002', 'vuminhtri@gmail.com', '0908374921', '18-08-2000', NULL, N'307 Hai Bà Trưng');
INSERT INTO [dbo].[Users] VALUES ('C008', N'lethikieu', N'123', N'Lê Thị Kiều', 'Female', 'R002', 'lethikieu@gmail.com', '0895739208', '30-12-1998', NULL, N'308 Võ Thị Sáu');
INSERT INTO [dbo].[Users] VALUES ('C009', N'phamvantrungkien', N'123', N'Phạm Văn Trung Kiên', 'Male', 'R002', 'phamvantrungkien@gmail.com', '0910372849', '21-03-2004', NULL, N'309 Hoàng Hoa Thám');
INSERT INTO [dbo].[Users] VALUES ('C010', N'huynhthithao', N'123', N'Huỳnh Thị Thảo', 'Female', 'R002', 'huynhthithao@gmail.com', '0902847391', '11-06-2001', NULL, N'310 Nguyễn Huệ');
INSERT INTO [dbo].[Users] VALUES ('C011', N'leminhduc', N'123', N'Lê Minh Đức', 'Male', 'R002', 'leminhduc@gmail.com', '0895739183', '28-10-2002', NULL, N'311 Tôn Đức Thắng');
INSERT INTO [dbo].[Users] VALUES ('C012', N'tranthuthao', N'123', N'Trần Thu Thảo', 'Female', 'R002', 'tranthuthao@gmail.com', '0918374629', '04-01-2000', NULL, N'312 Nam Kỳ Khởi Nghĩa');
INSERT INTO [dbo].[Users] VALUES ('C013', N'phamtranvanhieu', N'123', N'Phạm Trần Văn Hiếu', 'Male', 'R002', 'phamtranvanhieu@gmail.com', '0902837492', '17-07-2003', NULL, N'313 Nguyễn Cư Trinh');
INSERT INTO [dbo].[Users] VALUES ('C014', N'nguyenthithao', N'123', N'Nguyễn Thị Thảo', 'Female', 'R002', 'nguyenthithao@gmail.com', '0895739274', '05-05-1999', NULL, N'314 Lê Lai');
INSERT INTO [dbo].[Users] VALUES ('C015', N'vuminhduc', N'123', N'Vũ Minh Đức', 'Male', 'R002', 'vuminhduc@gmail.com', '0902847397', '09-09-2004', NULL, N'315 Yersin');
INSERT INTO [dbo].[Users] VALUES ('C016', N'phamthithaotrang', N'123', N'Phạm Thị Thảo Trang', 'Female', 'R002', 'phamthithaotrang@gmail.com', '0918374027', '13-02-1998', NULL, N'316 Lương Thế Vinh');
INSERT INTO [dbo].[Users] VALUES ('C017', N'nguyentrantiendat', N'123', N'Nguyễn Trần Tiến Đạt', 'Male', 'R002', 'nguyentrantiendat@gmail.com', '0895739281', '06-11-2001', NULL, N'317 Nguyễn Văn Cừ');
INSERT INTO [dbo].[Users] VALUES ('C018', N'vothikieutrang', N'123', N'Võ Thị Kiều Trang', 'Female', 'R002', 'vothikieutrang@gmail.com', '0908374928', '19-03-2003', NULL, N'318 Nguyễn Thái Học');
INSERT INTO [dbo].[Users] VALUES ('C019', N'dangminhtri', N'123', N'Đặng Minh Trí', 'Male', 'R002', 'dangminhtri@gmail.com', '0910283749', '12-12-1998', NULL, N'319 Trần Hưng Đạo');
INSERT INTO [dbo].[Users] VALUES ('C020', N'nguyenthithuthuy', N'123', N'Nguyễn Thị Thu Thủy', 'Female', 'R002', 'nguyenthithuthuy@gmail.com', '0895739273', '23-08-2000', NULL, N'320 Nguyễn Thông');

-- Bảng Service
INSERT INTO [dbo].[Service] VALUES ('SV001', N'Huyết thống', N'Kiểm tra huyết thống giữa cha và con', 2000000, N'Kiểm tra huyết thống giữa cha và con', NULL);
INSERT INTO [dbo].[Service] VALUES ('SV002', N'Huyết thống', N'Kiểm tra huyết thống giữa mẹ và con', 2000000,N'Kiểm tra huyết thống giữa mẹ và con', NULL);
INSERT INTO [dbo].[Service] VALUES ('SV003', N'Hành chính', N'Kiểm tra mối quan hệ huyết thống nâng cao', 4000000,N'Kiểm tra mối quan hệ huyết thống nâng cao', NULL);
INSERT INTO [dbo].[Service] VALUES ('SV004', N'Hành chính', N'Xét nghiệm ADN thai nhi không xâm lấn', 5500000, N'Xét nghiệm ADN thai nhi không xâm lấn', NULL);
INSERT INTO [dbo].[Service] VALUES ('SV005', N'Dân sự', N'Phục vụ mục đích pháp lý, giấy tờ, tranh chấp', 6000000, N'Phục vụ mục đích pháp lý, giấy tờ, tranh chấp', NULL);
INSERT INTO [dbo].[Service] VALUES ('SV006', N'Dân sự', N'Phát hiện các bệnh di truyền phổ biến', 3000000, N'Phát hiện các bệnh di truyền phổ biến', NULL);
INSERT INTO [dbo].[Service] VALUES ('SV007', N'Dân sự', N'Phân tích gen ảnh hưởng đến hành vi, tính cách', 2500000,N'Phân tích gen ảnh hưởng đến hành vi, tính cách', NULL);

-- Bảng Booking
SET DATEFORMAT DMY;
SET DATEFORMAT DMY;

INSERT INTO [dbo].[Booking] VALUES ('BK001', 'C001', '05-07-2025', 'S001', 'SV001', N'301 Nguyễn Du',  N'Tại phòng khám', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK002', 'C002', '06-07-2025', 'S002', 'SV002', N'302 Trần Phú', N'Tại nhà', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK003', 'C003', '07-07-2025', 'S003', 'SV003', N'303 Điện Biên Phủ', N'Tại phòng khám', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK004', 'C004', '08-07-2025', 'S004', 'SV004', N'304 Nguyễn Thị Minh Khai', N'Tại nhà', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK005', 'C005', '09-07-2025', 'S005', 'SV005', N'305 Hoàng Diệu', N'Tại phòng khám', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK006', 'C006', '10-07-2025', 'S006', 'SV006', N'306 Pasteur', N'Tại nhà', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK007', 'C007', '11-07-2025', 'S007', 'SV007', N'307 Hai Bà Trưng', N'Tại phòng khám', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK008', 'C008', '12-07-2025', 'S008', 'SV001', N'308 Võ Thị Sáu', N'Tại nhà', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK009', 'C009', '13-07-2025', 'S009', 'SV002', N'309 Hoàng Hoa Thám', N'Tại phòng khám', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK010', 'C010', '14-07-2025', 'S010', 'SV003', N'310 Nguyễn Huệ', N'Tại nhà', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK011', 'C011', '15-07-2025', 'S011', 'SV004', N'311 Tôn Đức Thắng', N'Tại phòng khám', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK012', 'C012', '16-07-2025', 'S012', 'SV005', N'312 Nam Kỳ Khởi Nghĩa', N'Tại nhà', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK013', 'C013', '17-07-2025', 'S013', 'SV006', N'313 Nguyễn Cư Trinh', N'Tại phòng khám', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK014', 'C014', '18-07-2025', 'S014', 'SV007', N'314 Lê Lai', N'Tại nhà', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK015', 'C015', '19-07-2025', 'S015', 'SV001', N'315 Yersin', N'Tại phòng khám', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK016', 'C016', '20-07-2025', 'S016', 'SV002', N'316 Lương Thế Vinh', N'Tại nhà', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK017', 'C017', '21-07-2025', 'S017', 'SV003', N'317 Nguyễn Văn Cừ', N'Tại phòng khám', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK018', 'C018', '22-07-2025', 'S018', 'SV004', N'318 Nguyễn Thái Học', N'Tại nhà', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK019', 'C019', '23-07-2025', 'S019', 'SV005', N'319 Trần Hưng Đạo', N'Tại phòng khám', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK020', 'C020', '24-07-2025', 'S020', 'SV006', N'320 Nguyễn Thông', N'Tại nhà', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK021', 'C002', '25-07-2025', 'S001', 'SV007', N'302 Trần Phú', N'Tại phòng khám', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK022', 'C003', '26-07-2025', 'S002', 'SV001', N'303 Điện Biên Phủ', N'Tại nhà', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK023', 'C004', '27-07-2025', 'S003', 'SV002', N'304 Nguyễn Thị Minh Khai', N'Tại phòng khám', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK024', 'C005', '28-07-2025', 'S004', 'SV003', N'305 Hoàng Diệu', N'Tại nhà', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK025', 'C006', '29-07-2025', 'S005', 'SV004', N'306 Pasteur', N'Tại phòng khám', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK026', 'C007', '30-07-2025', 'S006', 'SV005', N'307 Hai Bà Trưng', N'Tại nhà', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK027', 'C008', '25-08-2025', 'S007', 'SV006', N'308 Võ Thị Sáu', N'Tại phòng khám', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK028', 'C009', '26-08-2025', 'S008', 'SV007', N'309 Hoàng Hoa Thám', N'Tại nhà', N'Đã Check-in');
INSERT INTO [dbo].[Booking] VALUES ('BK029', 'C010', '27-08-2025', 'S009', 'SV001', N'310 Nguyễn Huệ', N'Tại phòng khám', N'Đã gửi mẫu');
INSERT INTO [dbo].[Booking] VALUES ('BK030', 'C011', '28-08-2025', 'S010', 'SV002', N'311 Tôn Đức Thắng', N'Tại nhà', N'Đã Check-in');

-- Bảng Invoice
INSERT INTO [dbo].[Invoice] VALUES ('IV001', 'BK001', '04-07-2025', 300000);
INSERT INTO [dbo].[Invoice] VALUES ('IV002', 'BK002', '08-07-2025', 400000);
INSERT INTO [dbo].[Invoice] VALUES ('IV003', 'BK003', '14-07-2025', 400000);
INSERT INTO [dbo].[Invoice] VALUES ('IV004', 'BK004', '17-07-2025', 400000);
INSERT INTO [dbo].[Invoice] VALUES ('IV005', 'BK005', '08-07-2025', 200000);
INSERT INTO [dbo].[Invoice] VALUES ('IV006', 'BK006', '13-07-2025', 350000);
INSERT INTO [dbo].[Invoice] VALUES ('IV007', 'BK007', '08-07-2025', 300000);
INSERT INTO [dbo].[Invoice] VALUES ('IV008', 'BK008', '19-07-2025', 200000);
INSERT INTO [dbo].[Invoice] VALUES ('IV009', 'BK009', '20-07-2025', 350000);
INSERT INTO [dbo].[Invoice] VALUES ('IV010', 'BK010', '20-07-2025', 350000);
INSERT INTO [dbo].[Invoice] VALUES ('IV011', 'BK011', '08-07-2025', 400000);
INSERT INTO [dbo].[Invoice] VALUES ('IV012', 'BK012', '09-07-2025', 250000);
INSERT INTO [dbo].[Invoice] VALUES ('IV013', 'BK013', '19-07-2025', 200000);
INSERT INTO [dbo].[Invoice] VALUES ('IV014', 'BK014', '07-07-2025', 400000);
INSERT INTO [dbo].[Invoice] VALUES ('IV015', 'BK015', '07-07-2025', 250000);
INSERT INTO [dbo].[Invoice] VALUES ('IV016', 'BK016', '11-07-2025', 200000);
INSERT INTO [dbo].[Invoice] VALUES ('IV017', 'BK017', '20-07-2025', 350000);
INSERT INTO [dbo].[Invoice] VALUES ('IV018', 'BK018', '08-07-2025', 300000);
INSERT INTO [dbo].[Invoice] VALUES ('IV019', 'BK019', '07-07-2025', 250000);
INSERT INTO [dbo].[Invoice] VALUES ('IV020', 'BK020', '06-07-2025', 350000);
INSERT INTO [dbo].[Invoice] VALUES ('IV021', 'BK021', '01-07-2025', 400000);
INSERT INTO [dbo].[Invoice] VALUES ('IV022', 'BK022', '05-07-2025', 200000);
INSERT INTO [dbo].[Invoice] VALUES ('IV023', 'BK023', '15-07-2025', 300000);
INSERT INTO [dbo].[Invoice] VALUES ('IV024', 'BK024', '11-07-2025', 350000);
INSERT INTO [dbo].[Invoice] VALUES ('IV025', 'BK025', '06-07-2025', 200000);
INSERT INTO [dbo].[Invoice] VALUES ('IV026', 'BK026', '03-07-2025', 400000);
INSERT INTO [dbo].[Invoice] VALUES ('IV027', 'BK027', '17-07-2025', 300000);
INSERT INTO [dbo].[Invoice] VALUES ('IV028', 'BK028', '12-07-2025', 400000);
INSERT INTO [dbo].[Invoice] VALUES ('IV029', 'BK029', '20-07-2025', 250000);
INSERT INTO [dbo].[Invoice] VALUES ('IV030', 'BK030', '10-07-2025', 200000);


-- Bảng InvoiceDetail
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD001', 'IV001', 'SV001', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD002', 'IV002', 'SV002', 2);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD003', 'IV003', 'SV003', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD004', 'IV004', 'SV004', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD005', 'IV005', 'SV005', 2);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD006', 'IV006', 'SV006', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD007', 'IV007', 'SV007', 3);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD008', 'IV008', 'SV001', 2);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD009', 'IV009', 'SV002', 2);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD010', 'IV010', 'SV003', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD011', 'IV011', 'SV004', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD012', 'IV012', 'SV005', 3);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD013', 'IV013', 'SV006', 2);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD014', 'IV014', 'SV007', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD015', 'IV015', 'SV001', 2);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD016', 'IV016', 'SV002', 3);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD017', 'IV017', 'SV003', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD018', 'IV018', 'SV004', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD019', 'IV019', 'SV005', 2);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD020', 'IV020', 'SV006', 2);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD021', 'IV021', 'SV007', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD022', 'IV022', 'SV001', 2);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD023', 'IV023', 'SV002', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD024', 'IV024', 'SV003', 3);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD025', 'IV025', 'SV004', 2);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD026', 'IV026', 'SV005', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD027', 'IV027', 'SV006', 2);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD028', 'IV028', 'SV007', 3);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD029', 'IV029', 'SV001', 1);
INSERT INTO [dbo].[InvoiceDetail] VALUES ('IVD030', 'IV030', 'SV002', 2);

--Kit
INSERT INTO [dbo].[Kit] VALUES ('KIT001', 'C020', 'S003', 'BK001', N'Bộ kit xét nghiệm ADN cha - con', N'Đã lấy mẫu', '04-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT002', 'C019', 'S003', 'BK002', N'Bộ kit xét nghiệm ADN theo yêu cầu pháp lý', N'Ðang lấy mẫu', '08-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT003', 'C020', 'S002', 'BK003', N'Bộ kit xét nghiệm ADN theo yêu cầu pháp lý', N'Đã lấy mẫu', '14-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT004', 'C019', 'S003', 'BK004', N'Bộ kit xét nghiệm ADN theo yêu cầu pháp lý', N'Ðang lấy mẫu', '17-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT005', 'C019', 'S003', 'BK005', N'Bộ kit xét nghiệm trước sinh (NIPT)', N'Đã lấy mẫu', '08-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT006', 'C019', 'S003', 'BK006', N'Bộ kit xét nghiệm ADN huyết thống toàn diện', N'Ðang lấy mẫu', '13-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT007', 'C018', 'S001', 'BK007', N'Bộ kit xét nghiệm ADN cha - con', N'Đã lấy mẫu', '08-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT008', 'C018', 'S002', 'BK008', N'Bộ kit xét nghiệm trước sinh (NIPT)', N'Ðang lấy mẫu', '19-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT009', 'C019', 'S007', 'BK009', N'Bộ kit xét nghiệm ADN huyết thống toàn diện', N'Đã lấy mẫu', '20-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT010', 'C020', 'S007', 'BK010', N'Bộ kit xét nghiệm ADN huyết thống toàn diện', N'Ðang lấy mẫu', '20-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT011', 'C019', 'S007', 'BK011', N'Bộ kit xét nghiệm ADN theo yêu cầu pháp lý', N'Đã lấy mẫu', '08-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT012', 'C018', 'S006', 'BK012', N'Bộ kit xét nghiệm ADN mẹ - con', N'Ðang lấy mẫu', '09-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT013', 'C019', 'S006', 'BK013', N'Bộ kit xét nghiệm trước sinh (NIPT)', N'Đã lấy mẫu', '19-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT014', 'C020', 'S006', 'BK014', N'Bộ kit xét nghiệm ADN theo yêu cầu pháp lý', N'Ðang lấy mẫu', '07-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT015', 'C018', 'S001', 'BK015', N'Bộ kit xét nghiệm ADN mẹ - con', N'Đã lấy mẫu', '07-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT016', 'C018', 'S008', 'BK016', N'Bộ kit xét nghiệm trước sinh (NIPT)', N'Ðang lấy mẫu', '11-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT017', 'C020', 'S008', 'BK017', N'Bộ kit xét nghiệm ADN huyết thống toàn diện', N'Đã lấy mẫu', '20-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT018', 'C019', 'S001', 'BK018', N'Bộ kit xét nghiệm ADN cha - con', N'Ðang lấy mẫu', '08-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT019', 'C020', 'S001', 'BK019', N'Bộ kit xét nghiệm ADN mẹ - con', N'Đã lấy mẫu', '07-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT020', 'C018', 'S001', 'BK020', N'Bộ kit xét nghiệm ADN huyết thống toàn diện', N'Ðang lấy mẫu', '06-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT021', 'C020', 'S001', 'BK021', N'Bộ kit xét nghiệm ADN theo yêu cầu pháp lý', N'Đã lấy mẫu', '01-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT022', 'C020', 'S002', 'BK022', N'Bộ kit xét nghiệm trước sinh (NIPT)', N'Ðang lấy mẫu', '05-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT023', 'C019', 'S008', 'BK023', N'Bộ kit xét nghiệm ADN cha - con', N'Đã lấy mẫu', '15-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT024', 'C019', 'S001', 'BK024', N'Bộ kit xét nghiệm ADN huyết thống toàn diện', N'Ðang lấy mẫu', '11-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT025', 'C019', 'S009', 'BK025', N'Bộ kit xét nghiệm trước sinh (NIPT)', N'Đã lấy mẫu', '06-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT026', 'C018', 'S009', 'BK026', N'Bộ kit xét nghiệm ADN theo yêu cầu pháp lý', N'Ðang lấy mẫu', '03-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT027', 'C019', 'S009', 'BK027', N'Bộ kit xét nghiệm ADN cha - con', N'Đã lấy mẫu', '17-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT028', 'C018', 'S009', 'BK028', N'Bộ kit xét nghiệm ADN theo yêu cầu pháp lý', N'Ðang lấy mẫu', '12-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT029', 'C018', 'S003', 'BK029', N'Bộ kit xét nghiệm ADN mẹ - con', N'Đã lấy mẫu', '20-07-2025');
INSERT INTO [dbo].[Kit] VALUES ('KIT030', 'C020', 'S001', 'BK030', N'Bộ kit xét nghiệm trước sinh (NIPT)', N'Ðang lấy mẫu', '10-07-2025');
-- Bảng TestResult
INSERT INTO [dbo].[TestResult] VALUES ('TR001', 'C020', 'S003', 'SV001', 'BK001', '05-07-2025', N'Kết quả: Quan hệ cha - con xác nhận. ADN khớp.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR002', 'C019', 'S003', 'SV005', 'BK002', '09-07-2025', N'Kết quả: Đủ điều kiện pháp lý. Giấy tờ hợp lệ.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR003', 'C020', 'S002', 'SV005', 'BK003', '15-07-2025', N'Kết quả: Đang kiểm tra tính hợp lệ giấy tờ.', N'Đang xử lý');
INSERT INTO [dbo].[TestResult] VALUES ('TR004', 'C019', 'S003', 'SV005', 'BK004', '18-07-2025', N'Kết quả: Pháp lý đã hoàn thiện.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR005', 'C019', 'S003', 'SV004', 'BK005', '09-07-2025', N'NIPT đạt chuẩn. Thai nhi không phát hiện bất thường.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR006', 'C019', 'S003', 'SV003', 'BK006', '14-07-2025', N'Quan hệ huyết thống toàn diện. Không phát hiện bất thường.', N'Đang xử lý');
INSERT INTO [dbo].[TestResult] VALUES ('TR007', 'C018', 'S001', 'SV001', 'BK007', '09-07-2025', N'Đang phân tích dữ liệu ADN.', N'Đang xử lý');
INSERT INTO [dbo].[TestResult] VALUES ('TR008', 'C018', 'S002', 'SV004', 'BK008', '20-07-2025', N'NIPT đang thực hiện, chờ phản hồi.', N'Đang xử lý');
INSERT INTO [dbo].[TestResult] VALUES ('TR009', 'C019', 'S007', 'SV003', 'BK009', '21-07-2025', N'Kết quả: Không xác nhận quan hệ huyết thống.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR010', 'C020', 'S007', 'SV003', 'BK010', '21-07-2025', N'Kết luận: Huyết thống đúng như đăng ký dịch vụ.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR011', 'C019', 'S007', 'SV005', 'BK011', '09-07-2025', N'Giấy tờ hợp lệ. Đủ điều kiện pháp lý.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR012', 'C018', 'S006', 'SV002', 'BK012', '10-07-2025', N'Kết quả: Đang kiểm tra mối quan hệ mẹ - con.', N'Đang xử lý');
INSERT INTO [dbo].[TestResult] VALUES ('TR013', 'C019', 'S006', 'SV004', 'BK013', '20-07-2025', N'NIPT: Không có dấu hiệu bất thường.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR014', 'C020', 'S006', 'SV005', 'BK014', '08-07-2025', N'Giấy tờ và ADN hợp lệ.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR015', 'C018', 'S001', 'SV002', 'BK015', '08-07-2025', N'Đang phân tích mẫu mẹ - con.', N'Đang xử lý');
INSERT INTO [dbo].[TestResult] VALUES ('TR016', 'C018', 'S008', 'SV004', 'BK016', '12-07-2025', N'NIPT: Chờ xác nhận.', N'Chờ xác nhận');
INSERT INTO [dbo].[TestResult] VALUES ('TR017', 'C020', 'S008', 'SV003', 'BK017', '21-07-2025', N'Đang tổng hợp dữ liệu huyết thống.', N'Đang xử lý');
INSERT INTO [dbo].[TestResult] VALUES ('TR018', 'C019', 'S001', 'SV001', 'BK018', '09-07-2025', N'ADN cha - con hợp lệ.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR019', 'C020', 'S001', 'SV002', 'BK019', '08-07-2025', N'Quan hệ mẹ - con xác nhận qua ADN.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR020', 'C018', 'S001', 'SV003', 'BK020', '07-07-2025', N'Huyết thống toàn diện: Đủ điều kiện.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR021', 'C020', 'S001', 'SV005', 'BK021', '02-07-2025', N'Kết quả pháp lý: Chưa đủ hồ sơ, chờ bổ sung.', N'Chờ xác nhận');
INSERT INTO [dbo].[TestResult] VALUES ('TR022', 'C020', 'S002', 'SV004', 'BK022', '06-07-2025', N'NIPT đang phân tích.', N'Đang xử lý');
INSERT INTO [dbo].[TestResult] VALUES ('TR023', 'C019', 'S008', 'SV001', 'BK023', '16-07-2025', N'ADN cha - con đạt kiểm định.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR024', 'C019', 'S001', 'SV003', 'BK024', '12-07-2025', N'Đang xét nghiệm huyết thống toàn diện.', N'Đang xử lý');
INSERT INTO [dbo].[TestResult] VALUES ('TR025', 'C019', 'S009', 'SV004', 'BK025', '07-07-2025', N'Đã hoàn thành xét nghiệm NIPT.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR026', 'C018', 'S009', 'SV005', 'BK026', '04-07-2025', N'Đang kiểm tra hợp lệ giấy tờ.', N'Chờ xác nhận');
INSERT INTO [dbo].[TestResult] VALUES ('TR027', 'C019', 'S009', 'SV001', 'BK027', '18-07-2025', N'Quan hệ cha - con xác nhận.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR028', 'C018', 'S009', 'SV005', 'BK028', '13-07-2025', N'Pháp lý hợp lệ.', N'Đã trả kết quả');
INSERT INTO [dbo].[TestResult] VALUES ('TR029', 'C018', 'S003', 'SV002', 'BK029', '21-07-2025', N'Đang kiểm tra ADN mẹ - con.', N'Đang xử lý');
INSERT INTO [dbo].[TestResult] VALUES ('TR030', 'C020', 'S001', 'SV004', 'BK030', '11-07-2025', N'NIPT không phát hiện bất thường.', N'Đã trả kết quả');

