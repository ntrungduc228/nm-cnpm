USE [Java5]
GO
/****** Object:  Table [dbo].[Majors]    Script Date: 19/04/2022 1:27:47 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Majors](
	[Id] [char](3) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Majors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mark]    Script Date: 19/04/2022 1:27:47 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mark](
	[StudentId] [int] NOT NULL,
	[MajorId] [char](3) NOT NULL,
	[Mark] [float] NOT NULL,
 CONSTRAINT [PK_Mark] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[MajorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Students]    Script Date: 19/04/2022 1:27:47 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Mark] [float] NOT NULL,
	[Gender] [bit] NOT NULL,
	[Birthday] [date] NOT NULL,
	[MajorId] [char](3) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19/04/2022 1:27:47 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'APP', N'Ứng dụng phần mềm')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'BIZ', N'Quản trị doanh nghiệp')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'DOM', N'Digital & Online Marketing')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'MAR', N'Marketing và bán hàng')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'MOB', N'Lập trình trên điện thoại di động')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'MUL', N'Mỹ thuật đa phương tiện')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'PRE', N'PR và tổ chức sự kiện')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'WEB', N'Thiết kế trang web')
INSERT [dbo].[Mark] ([StudentId], [MajorId], [Mark]) VALUES (1, N'APP', 9.4)
INSERT [dbo].[Mark] ([StudentId], [MajorId], [Mark]) VALUES (1, N'BIZ', 6.8)
INSERT [dbo].[Mark] ([StudentId], [MajorId], [Mark]) VALUES (2, N'BIZ', 7)
INSERT [dbo].[Mark] ([StudentId], [MajorId], [Mark]) VALUES (2, N'DOM', 10)
INSERT [dbo].[Mark] ([StudentId], [MajorId], [Mark]) VALUES (2, N'WEB', 2.5)
INSERT [dbo].[Mark] ([StudentId], [MajorId], [Mark]) VALUES (5, N'DOM', 3)
INSERT [dbo].[Mark] ([StudentId], [MajorId], [Mark]) VALUES (6, N'MUL', 10)
INSERT [dbo].[Mark] ([StudentId], [MajorId], [Mark]) VALUES (10, N'MOB', 7.8)
INSERT [dbo].[Mark] ([StudentId], [MajorId], [Mark]) VALUES (10, N'MUL', 6.8)
INSERT [dbo].[Mark] ([StudentId], [MajorId], [Mark]) VALUES (10, N'WEB', 6.8)
INSERT [dbo].[Mark] ([StudentId], [MajorId], [Mark]) VALUES (19, N'MOB', 6.8)
INSERT [dbo].[Mark] ([StudentId], [MajorId], [Mark]) VALUES (24, N'BIZ', 8.3)
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (1, N'HUỲNH MINH TUẤN', 7.74, 1, CAST(N'1985-11-10' AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (2, N'ĐẬU HOÀNG LÂM', 0, 1, CAST(N'1990-08-15' AS Date), N'APP')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (3, N'NGUYỄN LƯƠNG THÀNH ĐẠT', 7.22, 1, CAST(N'1981-01-10' AS Date), N'APP')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (4, N'NGUYỄN ĐỨC CHIẾN', 0, 1, CAST(N'1976-05-06' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (5, N'TÔ CHÍ HẢI', 4.56, 1, CAST(N'1973-10-03' AS Date), N'PRE')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (6, N'VŨ QUỐC AN', 1.71, 1, CAST(N'1975-08-09' AS Date), N'DOM')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (7, N'LÊ TIẾN ĐẠT', 0.48, 1, CAST(N'1993-11-07' AS Date), N'PRE')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (8, N'PHẠM ĐỨC TUẤN', 8.02, 1, CAST(N'1979-10-25' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (9, N'HUỲNH THANH HUY', 1.21, 1, CAST(N'1980-01-01' AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (10, N'ĐINH QUANG VŨ', 1.47, 1, CAST(N'1987-11-10' AS Date), N'BIZ')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (11, N'PHẠM HỮU THỊNH', 7.08, 1, CAST(N'1991-06-03' AS Date), N'BIZ')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (12, N'TRẦN THẾ PHƯỚC', 7.65, 1, CAST(N'1979-06-07' AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (13, N'HUỲNH HỮU HUY', 8.04, 1, CAST(N'1993-06-23' AS Date), N'APP')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (14, N'LÊ MINH TÚ', 6.61, 1, CAST(N'1979-10-23' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (15, N'NGUYỄN HOÀNG NHÂN', 9.17, 1, CAST(N'1981-11-18' AS Date), N'WEB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (16, N'ĐINH TÚ THUẬN', 7.1, 1, CAST(N'1975-10-09' AS Date), N'BIZ')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (17, N'LÊ NGUYỄN TRỌNG HỮU', 7.29, 1, CAST(N'1980-03-28' AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (18, N'NGÔ ANH TÚ', 2.04, 1, CAST(N'1978-11-02' AS Date), N'MOB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (19, N'NGUYỄN VĂN QUANG', 0, 1, CAST(N'1972-03-25' AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (20, N'NGUYỄN VĂN LINH', 8.92, 1, CAST(N'1986-04-28' AS Date), N'PRE')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (21, N'HỒ TRỌNG TÂM', 8.91, 1, CAST(N'1986-02-20' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (22, N'NGUYỄN TRẦN MINH MẪN', 0, 1, CAST(N'1993-11-03' AS Date), N'MOB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (23, N'HOÀNG CÔNG DY', 8.48, 1, CAST(N'1980-11-14' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (24, N'NGUYỄN HUY PHÚ', 0, 1, CAST(N'1991-04-03' AS Date), N'BIZ')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (25, N'PHẠM ĐÌNH QUỐC AN', 1.89, 1, CAST(N'1983-08-01' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (26, N'PHẠM HOÀI THƯƠNG', 9.09, 1, CAST(N'1979-09-22' AS Date), N'DOM')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (27, N'NGUYỄN MINH DUYÊN', 9.34, 1, CAST(N'1976-01-14' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (28, N'NGUYỄN PHƯỚC LỘC', 6.16, 1, CAST(N'1989-01-25' AS Date), N'DOM')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (29, N'TRƯƠNG MINH TRÍ', 8.14, 1, CAST(N'1971-11-13' AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (30, N'VÒNG TUẤN XƯƠNG', 7.26, 1, CAST(N'1993-12-05' AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (31, N'VU VẠN QUANG', 8.47, 1, CAST(N'1992-04-19' AS Date), N'APP')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (32, N'HỒ XUÂN HUY', 6.1, 1, CAST(N'1987-01-11' AS Date), N'MOB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (33, N'LÊ SỸ THÀNH', 6.34, 1, CAST(N'1991-05-23' AS Date), N'WEB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (34, N'TRẦN TƯỜNG DUY', 8.09, 1, CAST(N'1991-05-28' AS Date), N'MOB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (35, N'NGUYỄN TRẦN PHÚ', 6.3, 1, CAST(N'1982-09-17' AS Date), N'DOM')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (36, N'duc nguyen', 10, 1, CAST(N'2001-08-22' AS Date), N'WEB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (37, N'nguyen trung duc', 10, 1, CAST(N'2022-01-22' AS Date), N'APP')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (38, N'nguyen trung duc1111', 9.1999998092651367, 1, CAST(N'2022-02-02' AS Date), N'APP')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (39, N'Nguyễn Thị Khánh Vi', 9.4, 1, CAST(N'2001-04-29' AS Date), N'BIZ')
SET IDENTITY_INSERT [dbo].[Students] OFF
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS00673', N'songlong', N'PHAN HUY PHONG', N'PS00673.png', N'PS00673@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS01890', N'PS01890', N'NGUYỄN HOÀNG HUY', N'PS01890.png', N'PS01890@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS02004', N'PS02004', N'TRIỆU QUỐC DUY', N'PS02004.png', N'PS02004@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS02123', N'PS02123', N'TÔ CHÍ HẢI', N'PS02123.png', N'PS02123@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS02875', N'PS02875', N'VÕ THỊ TUYẾT NGÂN', N'PS02875.png', N'PS02875@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS02902', N'PS02902', N'GIANG MINH MẪN', N'PS02902.png', N'PS02902@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS02939', N'PS02939', N'LÊ NGUYÊN KHÁNH', N'PS02939.png', N'PS02939@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS02970', N'PS02970', N'LƯƠNG TRỌNG QUÍ', N'PS02970.png', N'PS02970@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03025', N'PS03025', N'PHẠM PHÚ LỘC', N'PS03025.png', N'PS03025@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03670', N'PS03670', N'LÂM TẤN HUY', N'PS03670.png', N'PS03670@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03680', N'PS03680', N'ĐẶNG NGUYÊN THÁNH', N'PS03680.png', N'PS03680@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03690', N'PS03690', N'LƯU XUÂN THỊNH', N'PS03690.png', N'PS03690@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03692', N'PS03692', N'BÙI HOÀNG NGUYÊN', N'PS03692.png', N'PS03692@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03694', N'PS03694', N'LƯƠNG THỊ THƠ', N'PS03694.png', N'PS03694@gmail.com')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Photo], [Email]) VALUES (N'PS03701', N'PS03701', N'HÀ THANH QUANG', N'PS03701.png', N'PS03701@gmail.com')
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Majors] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Majors] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_Majors]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_Students]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Majors] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Majors] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Majors]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chuyên ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Majors', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên chuyên ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Majors', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã sinh viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Điểm trung bình' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Mark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giới tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sinh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chuyên ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'MajorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Email'
GO
