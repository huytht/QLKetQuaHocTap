USE [QLKetQuaHocTap]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 19/11/2020 7:28:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[username] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 19/11/2020 7:28:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[id_subject] [varchar](10) NOT NULL,
	[id_teacher] [varchar](10) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[id_subject] ASC,
	[id_teacher] ASC,
	[year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 19/11/2020 7:28:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[id] [varchar](10) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 19/11/2020 7:28:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [varchar](10) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[fullname] [nvarchar](100) NOT NULL,
	[date_of_birth] [date] NOT NULL,
	[address] [nvarchar](250) NOT NULL,
	[id_faculty] [varchar](10) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Study_result]    Script Date: 19/11/2020 7:28:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Study_result](
	[id_subject] [varchar](10) NOT NULL,
	[id_student] [varchar](10) NOT NULL,
	[attendance] [float] NOT NULL,
	[midterm_score] [float] NOT NULL,
	[endterm_score] [float] NOT NULL,
	[average_score] [float] NOT NULL,
 CONSTRAINT [PK_Study_result] PRIMARY KEY CLUSTERED 
(
	[id_subject] ASC,
	[id_student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 19/11/2020 7:28:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[id] [varchar](10) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[course_credit] [int] NOT NULL,
	[semester] [int] NOT NULL,
	[id_subject_type] [varchar](10) NOT NULL,
	[id_faculty] [varchar](10) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject_type]    Script Date: 19/11/2020 7:28:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject_type](
	[id] [varchar](10) NOT NULL,
	[name] [nvarchar](100) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Subject_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 19/11/2020 7:28:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[id] [varchar](10) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[fullname] [nvarchar](100) NOT NULL,
	[date_of_birth] [date] NULL,
	[address] [nvarchar](250) NOT NULL,
	[day_start] [date] NOT NULL,
	[id_faculty] [varchar](10) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([username], [password], [status]) VALUES (N'1', N'1', 1)
GO
INSERT [dbo].[Assignment] ([id_subject], [id_teacher], [year]) VALUES (N'COMP001', N'0001', 2019)
INSERT [dbo].[Assignment] ([id_subject], [id_teacher], [year]) VALUES (N'COMP001', N'0002', 2019)
INSERT [dbo].[Assignment] ([id_subject], [id_teacher], [year]) VALUES (N'COMP002', N'0001', 2020)
INSERT [dbo].[Assignment] ([id_subject], [id_teacher], [year]) VALUES (N'COMP002', N'0002', 2020)
INSERT [dbo].[Assignment] ([id_subject], [id_teacher], [year]) VALUES (N'COMP003', N'0004', 2020)
INSERT [dbo].[Assignment] ([id_subject], [id_teacher], [year]) VALUES (N'COMP004', N'0007', 2020)
INSERT [dbo].[Assignment] ([id_subject], [id_teacher], [year]) VALUES (N'MATH102', N'0003', 2019)
INSERT [dbo].[Assignment] ([id_subject], [id_teacher], [year]) VALUES (N'MATH103', N'0111', 2020)
INSERT [dbo].[Assignment] ([id_subject], [id_teacher], [year]) VALUES (N'MILI401', N'0400', 2019)
INSERT [dbo].[Assignment] ([id_subject], [id_teacher], [year]) VALUES (N'PHYL201', N'0200', 2019)
INSERT [dbo].[Assignment] ([id_subject], [id_teacher], [year]) VALUES (N'PHYL212', N'0201', 2020)
GO
INSERT [dbo].[Faculty] ([id], [name], [address], [status]) VALUES (N'COMP', N'CNTT', N'Phòng B.501, tầng 5 khu B', 1)
INSERT [dbo].[Faculty] ([id], [name], [address], [status]) VALUES (N'ENGL', N'Tiếng Anh', N'Phòng B.404, tầng 5 khu B', 1)
INSERT [dbo].[Faculty] ([id], [name], [address], [status]) VALUES (N'JAPN', N'Tiếng Nhật', N'Phòng B.406 tầng 4 khu B', 1)
INSERT [dbo].[Faculty] ([id], [name], [address], [status]) VALUES (N'KORE', N'Tiếng Hàn', N'Phòng B.405, tầng 4 khu B', 1)
INSERT [dbo].[Faculty] ([id], [name], [address], [status]) VALUES (N'MATH', N'Toán', N'Phòng B.503, tầng 5 khu B', 1)
INSERT [dbo].[Faculty] ([id], [name], [address], [status]) VALUES (N'MILI', N'Giáo Dục Quốc Phòng', N'Phòng B.504, tầng 5 khu B', 1)
INSERT [dbo].[Faculty] ([id], [name], [address], [status]) VALUES (N'PHYL', N'Giáo Dục Thể Chất', N'Nhà thi đấu, khu D', 1)
INSERT [dbo].[Faculty] ([id], [name], [address], [status]) VALUES (N'PHYS', N'Vật Lí', N'Phòng B.502, tầng 5 khu B', 1)
INSERT [dbo].[Faculty] ([id], [name], [address], [status]) VALUES (N'TTTH', N'Trung Tâm Tin Học', N'Khu A, cơ sở chính', 1)
GO
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4500103094', N'123456', N'Đinh Văn Thanh Phước Khoa', CAST(N'2001-07-05' AS Date), N'Cao Lãnh', N'MILI', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501101020', N'123456', N'Nguyễn Hoàng Cát', CAST(N'2001-06-14' AS Date), N'Bạc Liêu', N'PHYS', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501101034', N'123456', N'Hồ Thị Mỹ Dung', CAST(N'2000-03-27' AS Date), N'Hồ Chí Minh', N'PHYS', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501101158', N'123456', N'Bùi Thụy Hồng Ngọc', CAST(N'2001-12-14' AS Date), N'Vũng Tàu', N'PHYS', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501101219', N'123456', N'Phạm Quốc Thắng', CAST(N'2001-12-30' AS Date), N'Đồng Tháp', N'PHYS', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501101254', N'123456', N'Hà Anh Trí', CAST(N'2001-03-26' AS Date), N'Củ Chi', N'PHYS', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501102016', N'123456', N'Từ Gia Bảo', CAST(N'2001-06-14' AS Date), N'Hồ Chí Minh', N'PHYL', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501102040', N'123456', N'Phạm Thị Mỹ Duyên', CAST(N'2001-06-22' AS Date), N'Sóc Trăng', N'PHYL', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501102083', N'123456', N'Nguyễn Minh Hiếu', CAST(N'2001-06-24' AS Date), N'Hà Tiên', N'PHYL', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501102100', N'123456', N'Trịnh Ngọc Huy', CAST(N'1999-12-28' AS Date), N'Đồng Nai', N'PHYL', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501102116', N'123456', N'Châu Vĩ Khôn', CAST(N'2001-08-17' AS Date), N'Bình Dương', N'PHYL', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501103061', N'123456', N'Thái Linh Hương', CAST(N'2001-06-16' AS Date), N'Hà Nội', N'MILI', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501103238', N'123456', N'Trần Gia Tiến', CAST(N'2001-09-02' AS Date), N'Bến Tre', N'MILI', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501103275', N'123456', N'Nguyễn Thị Ánh Vân', CAST(N'2000-02-16' AS Date), N'Bắc Giang', N'MILI', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501103283', N'123456', N'Nguyễn Hoàng Lan Vy', CAST(N'2001-02-17' AS Date), N'Đồng Tháp', N'MILI', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501104096', N'123456', N'Trần Huỳnh Tường Huy', CAST(N'2001-04-18' AS Date), N'Long An', N'COMP', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501104103', N'123456', N'Võ Anh Kha', CAST(N'2001-10-28' AS Date), N'Tiền Giang', N'COMP', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501104110', N'123456', N'Trần Nguyên Khánh', CAST(N'2001-08-26' AS Date), N'Đắc Lắc', N'COMP', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501104177', N'2492001', N'Huỳnh Thiên Phú', CAST(N'2001-09-24' AS Date), N'Cần Thơ', N'COMP', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501104183', N'123456', N'Lê Khánh Phương', CAST(N'2001-05-29' AS Date), N'Phú Yên ', N'COMP', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501105010', N'123456', N'Phạm Hồng Anh', CAST(N'2000-09-03' AS Date), N'Vũng Tàu', N'MATH', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501105069', N'123456', N'Phùng Thanh Độ', CAST(N'2001-09-12' AS Date), N'Cao Bằng', N'MATH', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501105098', N'123456', N'Lê Thị Thanh Huyền', CAST(N'2001-11-03' AS Date), N'Kiên Giang', N'MATH', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501105140', N'123456', N'Tăng Thục Mẫn', CAST(N'2001-12-03' AS Date), N'Hồ Chí Minh', N'MATH', 1)
INSERT [dbo].[Student] ([id], [password], [fullname], [date_of_birth], [address], [id_faculty], [status]) VALUES (N'4501105232', N'123456', N'Nguyễn Minh Thuận', CAST(N'2001-10-23' AS Date), N'Bến Tre', N'MATH', 1)
GO
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP001', N'4501104096', 10, 10, 10, 10)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP001', N'4501104103', 10, 8, 8, 8.2)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP001', N'4501104110', 10, 10, 9, 9.5)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP001', N'4501104177', 10, 8, 4, 6.2)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP001', N'4501104183', 10, 10, 4, 7)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP002', N'4501104096', 10, 10, 10, 10)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP002', N'4501104103', 10, 8, 8, 8.2)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP002', N'4501104110', 10, 10, 9, 9.5)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP002', N'4501104177', 10, 8, 4, 6.2)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP002', N'4501104183', 10, 10, 4, 7)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP003', N'4501104096', 10, 8, 7, 7.7)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP003', N'4501104103', 10, 8, 8, 8.2)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP003', N'4501104110', 10, 10, 9, 9.5)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP003', N'4501104177', 10, 7, 5, 6.3)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP003', N'4501104183', 10, 8, 7, 7.7)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP004', N'4501104096', 10, 8, 8, 8.2)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP004', N'4501104103', 8, 8, 7, 7.5)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP004', N'4501104110', 8, 8, 7, 7.5)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP004', N'4501104177', 10, 5, 4, 5)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'COMP004', N'4501104183', 8, 7, 6, 6.6)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501101020', 8, 9, 8, 8.4)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501101034', 8, 7, 9, 8.1)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501101158', 8, 7, 7, 7.1)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501101219', 8, 6, 6, 6.2)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501101254', 9, 6, 7, 6.8)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501104096', 10, 10, 8, 9)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501104103', 10, 10, 9, 9.5)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501104110', 10, 9, 10, 9.6)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501104177', 10, 10, 10, 10)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501104183', 10, 8, 8.5, 8.5)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501105010', 10, 8, 5, 6.7)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501105069', 6, 6, 6, 6)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501105098', 10, 5, 5, 5.5)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501105140', 10, 8, 7, 7.7)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH102', N'4501105232', 10, 4, 9, 7.1)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH103', N'4501104096', 10, 8, 5, 6.7)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH103', N'4501104103', 10, 8, 6, 7.2)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH103', N'4501104110', 10, 9, 5, 9.1)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH103', N'4501104177', 10, 8, 5, 6.7)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MATH103', N'4501104183', 10, 9, 4, 6.6)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MILI401', N'4501104096', 10, 8, 7, 7.7)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MILI401', N'4501104103', 10, 8, 5, 6.7)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MILI401', N'4501104110', 8, 7, 8, 7.6)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MILI401', N'4501104177', 10, 7, 9, 8.3)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'MILI401', N'4501104183', 10, 7, 9, 8.3)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'PHYL201', N'4501104096', 7, 7, 9, 8)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'PHYL201', N'4501104103', 10, 10, 10, 10)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'PHYL201', N'4501104110', 10, 8, 8, 8.2)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'PHYL201', N'4501104177', 8, 8, 8, 8)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'PHYL201', N'4501104183', 10, 7, 9, 8.3)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'PHYL212', N'4501104096', 10, 10, 8, 9)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'PHYL212', N'4501104103', 10, 10, 10, 10)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'PHYL212', N'4501104110', 10, 7, 9, 8.3)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'PHYL212', N'4501104177', 8, 7, 8, 7.6)
INSERT [dbo].[Study_result] ([id_subject], [id_student], [attendance], [midterm_score], [endterm_score], [average_score]) VALUES (N'PHYL212', N'4501104183', 10, 9, 7, 8.1)
GO
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'COMP001', N'Lập trình căn bản', 3, 1, N'2', N'COMP', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'COMP002', N'Lập trình nâng cao', 3, 2, N'2', N'COMP', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'COMP003', N'Lập trình hướng đối tượng', 3, 2, N'2', N'COMP', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'COMP004', N'Phát triển, ứng dụng giao diện', 3, 3, N'2', N'COMP', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'COMP005', N'Cấu trúc dữ liệu', 3, 3, N'2', N'COMP', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'COMP006', N'Cơ sở dữ liệu', 3, 3, N'2', N'COMP', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'ENGL111', N'Tiếng Anh 1', 4, 1, N'1', N'ENGL', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'ENGL112', N'Tiếng Anh 2', 3, 2, N'1', N'ENGL', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'ENGL113', N'Tiếng Anh 3', 3, 3, N'1', N'ENGL', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'JAPN121', N'Tiếng Nhật 1', 4, 1, N'1', N'JAPN', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'JAPN122', N'Tiếng Nhật 2', 3, 2, N'1', N'JAPN', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'JAPN123', N'Tiếng Nhật 3', 3, 3, N'1', N'JAPN', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'KORE131', N'Tiếng Hàn 1', 4, 1, N'1', N'KORE', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'KORE132', N'Tiếng Hàn 2', 3, 2, N'1', N'KORE', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'KORE133', N'Tiếng Hàn 3', 3, 3, N'1', N'KORE', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'MATH101', N'Giải tích', 3, 1, N'2', N'MATH', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'MATH102', N'Toán rời rạc', 3, 1, N'2', N'MATH', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'MATH103', N'Đại số tuyến tính', 3, 2, N'2', N'MATH', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'MATH104', N'Xác suất thống kê và ứng dụng', 3, 3, N'2', N'MATH', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'MATH105', N'Quy hoạch tuyến tính và thống kê', 3, 4, N'2', N'MATH', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'MILI401', N'Quốc Phòng 1', 2, 1, N'2', N'MILI', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'MILI402', N'Quốc Phòng 2', 1, 2, N'2', N'MILI', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'MILI403', N'Quốc Phòng 3', 4, 3, N'2', N'MILI', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'MILI404', N'Quốc Phòng 4', 2, 2, N'2', N'MILI', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'PHYL201', N'GDTC 1 (Điền Kinh)', 1, 1, N'1', N'PHYL', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'PHYL202', N'GDTC 2 (Điền Kinh)', 1, 2, N'1', N'PHYL', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'PHYL203', N'GDTC 3 (Điền Kinh)', 1, 3, N'1', N'PHYL', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'PHYL211', N'GDTC 1 (Bóng Đá)', 1, 1, N'1', N'PHYL', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'PHYL212', N'GDTC 2 (Bóng Đá)', 1, 2, N'1', N'PHYL', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'PHYL213', N'GDTC 3 (Bóng Đá)', 1, 3, N'1 ', N'PHYL', 1)
INSERT [dbo].[Subject] ([id], [name], [course_credit], [semester], [id_subject_type], [id_faculty], [status]) VALUES (N'TTTH300', N'Tin Học Căn Bản', 3, 2, N'2', N'TTTH', 1)
GO
INSERT [dbo].[Subject_type] ([id], [name], [status]) VALUES (N'1', N'Tự chọn', 1)
INSERT [dbo].[Subject_type] ([id], [name], [status]) VALUES (N'2', N'Bắt buộc', 1)
GO
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0001', N'123456', N'Trần Hữu Quốc Thư', CAST(N'1980-09-20' AS Date), N'Hoóc Môn', CAST(N'2009-04-20' AS Date), N'COMP', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0002', N'123456', N'Nguyễn Quang Phúc', CAST(N'1982-10-17' AS Date), N'Lạng Sơn', CAST(N'2013-06-23' AS Date), N'COMP', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0003', N'123456', N'Nguyễn Viết Hưng', CAST(N'1974-07-02' AS Date), N'Củ Chi', CAST(N'2005-01-25' AS Date), N'COMP', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0004', N'123456', N'Lương Trần Ngọc Khiết', CAST(N'1986-04-17' AS Date), N'Bến Tre', CAST(N'2017-02-12' AS Date), N'COMP', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0007', N'123456', N'Lê Quang Thái', CAST(N'1985-07-09' AS Date), N'Hồ Chí Minh', CAST(N'2018-08-01' AS Date), N'COMP', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0101', N'123456', N'Lý Siều Hải', CAST(N'1972-06-21' AS Date), N'Kiên Giang', CAST(N'2004-10-22' AS Date), N'ENGL', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0102', N'123456', N'Đỗ Công Nam', CAST(N'1990-08-30' AS Date), N'Hải Dương', CAST(N'2018-12-14' AS Date), N'ENGL', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0103', N'123456', N'Lê Quang Tuấn', CAST(N'1965-11-15' AS Date), N'Ninh Bình', CAST(N'2001-09-24' AS Date), N'ENGL', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0104', N'123456', N'Nguyễn Đình Phát', CAST(N'1982-07-15' AS Date), N'Cần Giờ', CAST(N'2014-12-04' AS Date), N'ENGL', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0111', N'123456', N'Trịnh Huy Hoàng', CAST(N'1974-03-27' AS Date), N'Hồ Chí Minh', CAST(N'2011-05-26' AS Date), N'MATH', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0112', N'123456', N'Lê Thị Hà', CAST(N'1983-06-07' AS Date), N'Hà Nội', CAST(N'2019-02-04' AS Date), N'MATH', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0200', N'123456', N'Lê Quang Tuấn', CAST(N'1987-06-13' AS Date), N'Hậu Giang', CAST(N'2016-06-04' AS Date), N'PHYL', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0201', N'123456', N'Nguyễn Công Phượng', CAST(N'1994-07-25' AS Date), N'Nghệ An', CAST(N'2019-11-24' AS Date), N'PHYL', 1)
INSERT [dbo].[Teacher] ([id], [password], [fullname], [date_of_birth], [address], [day_start], [id_faculty], [status]) VALUES (N'0400', N'123456', N'Nguyễn Thị Thanh Hải', CAST(N'1984-09-05' AS Date), N'Hà Tĩnh', CAST(N'2016-06-03' AS Date), N'MILI', 1)
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Subject] FOREIGN KEY([id_subject])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Subject]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Teacher] FOREIGN KEY([id_teacher])
REFERENCES [dbo].[Teacher] ([id])
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Teacher]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Faculty] FOREIGN KEY([id_faculty])
REFERENCES [dbo].[Faculty] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Faculty]
GO
ALTER TABLE [dbo].[Study_result]  WITH CHECK ADD  CONSTRAINT [FK_Study_result_Student] FOREIGN KEY([id_student])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Study_result] CHECK CONSTRAINT [FK_Study_result_Student]
GO
ALTER TABLE [dbo].[Study_result]  WITH CHECK ADD  CONSTRAINT [FK_Study_result_Subject] FOREIGN KEY([id_subject])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[Study_result] CHECK CONSTRAINT [FK_Study_result_Subject]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Faculty] FOREIGN KEY([id_faculty])
REFERENCES [dbo].[Faculty] ([id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Faculty]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Subject_type] FOREIGN KEY([id_subject_type])
REFERENCES [dbo].[Subject_type] ([id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Subject_type]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Faculty] FOREIGN KEY([id_faculty])
REFERENCES [dbo].[Faculty] ([id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Faculty]
GO
