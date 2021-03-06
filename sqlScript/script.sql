USE [master]
GO
/****** Object:  Database [Assignment]    Script Date: 03/24/2022 11:23:33 ******/
CREATE DATABASE [Assignment] ON  PRIMARY 
( NAME = N'Assignment', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Assignment.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Assignment_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Assignment_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Assignment] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Assignment] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Assignment] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Assignment] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Assignment] SET ARITHABORT OFF
GO
ALTER DATABASE [Assignment] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Assignment] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Assignment] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Assignment] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Assignment] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Assignment] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Assignment] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Assignment] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Assignment] SET  DISABLE_BROKER
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Assignment] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Assignment] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Assignment] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Assignment] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Assignment] SET  READ_WRITE
GO
ALTER DATABASE [Assignment] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Assignment] SET  MULTI_USER
GO
ALTER DATABASE [Assignment] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Assignment] SET DB_CHAINING OFF
GO
USE [Assignment]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/24/2022 11:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (N'C', N'Chair')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (N'H', N'Headphone')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (N'K', N'Keyboard')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (N'M', N'Mouse')
/****** Object:  Table [dbo].[Account]    Script Date: 03/24/2022 11:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Aid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[isAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Aid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([Aid], [username], [password], [isAdmin]) VALUES (1, N'User01', N'User01', 0)
INSERT [dbo].[Account] ([Aid], [username], [password], [isAdmin]) VALUES (2, N'Admin01', N'Admin01', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 03/24/2022 11:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Pid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[From] [nvarchar](50) NULL,
	[Image1] [nvarchar](500) NULL,
	[Image2] [nvarchar](500) NULL,
	[CategoryID] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (38, N'Chair01', 10, 5000, N'Akracing', N'images\CAkracing01.jpg', N'images\CAkracing01(2).jpg', N'C', N'C01')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (39, N'Chair02', 10, 5000, N'Akracing', N'images\CAkracing02.jpg', N'images\CAkracing02(2).jpg', N'C', N'C02')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (41, N'Chair04', 7, 5000, N'Corsair', N'images\CCorsair01.jpg', N'images\CCorsair01(2).jpg', N'C', N'C04')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (42, N'Chair05', 10, 5000, N'MSI', N'images\CMSI01.jpg', N'images\CMSI01(2).jpg', N'C', N'C05')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (43, N'Chair06', 10, 5000, N'MSI', N'images\CMSI02.jpg', N'images\CMSI02(2).jpg', N'C', N'C06')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (45, N'Headphone01', 10, 5000, N'Logitech', N'images\HLogitech01.jpg', N'images\HLogitech01(2).jpg', N'H', N'H01')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (46, N'Headphone02', 10, 5000, N'Logitech', N'images\HLogitech02.jpg', N'images\HLogitech02(2).jpg', N'H', N'H02')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (47, N'Headphone03', 10, 5000, N'Razer', N'images\HRazer01.jpg', N'images\HRazer01(2).jpg', N'H', N'H03')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (48, N'Headphone04', 10, 5000, N'Corsair', N'images\HCorsair01.jpg', N'images\HCorsair01(2).jpg', N'H', N'H04')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (49, N'Headphone05', 10, 5000, N'Corsair', N'images\HCorsair02.jpg', N'images\HCorsair02(2).jpg', N'H', N'H05')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (50, N'Headphone06', 10, 5000, N'Corsair', N'images\HCorsair03.jpg', N'images\HCorsair03(2).jpg', N'H', N'H06')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (51, N'Headphone07', 10, 5000, N'Asus', N'images\HAsus01.jpg', N'images\HAsus01(2).jpg', N'H', N'H07')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (52, N'Headphone08', 10, 5000, N'Asus', N'images\HAsus02.jpg', N'images\HAsus02(2).jpg', N'H', N'H08')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (53, N'Headphone09', 10, 5000, N'Asus', N'images\HAsus03.jpg', N'images\HAsus03(2).jpg', N'H', N'H09')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (54, N'Headphone10', 10, 5000, N'Asus', N'images\HAsus04.jpg', N'images\HAsus04(2).jpg', N'H', N'H10')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (55, N'Keyboard01', 10, 5000, N'Logitech', N'images\KLogitech01.jpg', N'images\KLogitech01(2).jpg', N'K', N'K01')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (56, N'Keyboard02', 10, 5000, N'Logitech', N'images\KLogitech02.jpg', N'images\KLogitech02(2).jpg', N'K', N'K02')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (57, N'Keyboard03', 10, 5000, N'Logitech', N'images\KLogitech03.jpg', N'images\KLogitech03(2).jpg', N'K', N'K03')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (60, N'Keyboard06', 10, 5000, N'Corsair', N'images\KCorsair01.jpg', N'images\KCorsair01(2).jpg', N'K', N'K06')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (61, N'Keyboard07', 10, 5000, N'Fuhlen', N'images\KFuhlen01.jpg', N'images\KFuhlen01(2).jpg', N'K', N'K07')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (62, N'Keyboard08', 10, 5000, N'Fuhlen', N'images\KFuhlen02.jpg', N'images\KFuhlen02(2).jpg', N'K', N'K08')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (63, N'Keyboard09', 10, 5000, N'Fuhlen', N'images\KFuhlen03.jpg', N'images\KFuhlen03(2).jpg', N'K', N'K09')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (64, N'Keyboard10', 10, 5000, N'Fuhlen', N'images\KFuhlen04.jpg', N'images\KFuhlen04(2).jpg', N'K', N'K10')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (65, N'Mouse01', 10, 5000, N'Logitech', N'images\MLogitech01.jpg', N'images\MLogitech01(2).jpg', N'M', N'M01')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (66, N'Mouse02', 10, 5000, N'Logitech', N'images\MLogitech02.jpg', N'images\MLogitech02(2).jpg', N'M', N'M02')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (67, N'Mouse03', 10, 5000, N'Logitech', N'images\MLogitech03.jpg', N'images\MLogitech03(2).jpg', N'M', N'M03')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (68, N'Mouse04', 10, 5000, N'Logitech', N'images\MLogitech04.jpg', N'images\MLogitech04(2).jpg', N'M', N'M04')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (69, N'Mouse05', 10, 5000, N'Razer', N'images\MRazer01.jpg', N'images\MRazer01(2).jpg', N'M', N'M05')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (70, N'Mouse06', 10, 5000, N'Razer', N'images\MRazer02.jpg', N'images\MRazer02(2).jpg', N'M', N'M06')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (71, N'Mouse07', 10, 5000, N'Razer', N'images\MRazer03.jpg', N'images\MRazer03(2).jpg', N'M', N'M07')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (72, N'Mouse08', 10, 5000, N'Corsair', N'images\MCorsair01.jpg', N'images\MCorsair01(2).jpg', N'M', N'M08')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (73, N'Mouse09', 10, 5000, N'Corsair', N'images\MCorsiar02.jpg', N'images\MCorsiar02(2).jpg', N'M', N'M09')
INSERT [dbo].[Product] ([Pid], [Name], [Quantity], [Price], [From], [Image1], [Image2], [CategoryID], [Description]) VALUES (74, N'Mouse10', 10, 5000, N'Fuhlen', N'images\MFuhlen01.jpg', N'images\MFuhlen01(2).jpg', N'M', N'M10')
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[Cart]    Script Date: 03/24/2022 11:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[Aid] [int] NOT NULL,
	[Total] [float] NULL,
 CONSTRAINT [PK_Cart_2] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cart] ON
INSERT [dbo].[Cart] ([CartID], [Aid], [Total]) VALUES (1, 1, 0)
SET IDENTITY_INSERT [dbo].[Cart] OFF
/****** Object:  Table [dbo].[Customer]    Script Date: 03/24/2022 11:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CusID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[dob] [datetime] NULL,
	[Aid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([CusID], [name], [email], [dob], [Aid]) VALUES (1, N'Customer01', N'Cus01@email.com', CAST(0x0000AE4C00000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[CartDetail]    Script Date: 03/24/2022 11:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetail](
	[CartID] [int] NOT NULL,
	[Pid] [int] NOT NULL,
	[Quantity] [int] NULL,
	[SubTotal] [float] NULL,
 CONSTRAINT [PK_CartDetail_1] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC,
	[Pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CartDetail] ([CartID], [Pid], [Quantity], [SubTotal]) VALUES (1, 39, 2, 5000)
/****** Object:  Table [dbo].[Order]    Script Date: 03/24/2022 11:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CusID] [int] NOT NULL,
	[Total] [float] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([OrderID], [CusID], [Total], [Status]) VALUES (4, 1, 5000, N'shipping')
INSERT [dbo].[Order] ([OrderID], [CusID], [Total], [Status]) VALUES (5, 1, 10000, N'done')
INSERT [dbo].[Order] ([OrderID], [CusID], [Total], [Status]) VALUES (8, 1, 15000, N'cancel')
INSERT [dbo].[Order] ([OrderID], [CusID], [Total], [Status]) VALUES (9, 1, 40000, N'shipping')
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/24/2022 11:23:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[Pid] [int] NOT NULL,
	[Quantity] [int] NULL,
	[SubTotal] [float] NULL,
 CONSTRAINT [PK_CartDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[Pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[OrderDetail] ([OrderID], [Pid], [Quantity], [SubTotal]) VALUES (4, 38, 10, 50000)
INSERT [dbo].[OrderDetail] ([OrderID], [Pid], [Quantity], [SubTotal]) VALUES (5, 38, 1, 5000)
INSERT [dbo].[OrderDetail] ([OrderID], [Pid], [Quantity], [SubTotal]) VALUES (5, 39, 1, 5000)
INSERT [dbo].[OrderDetail] ([OrderID], [Pid], [Quantity], [SubTotal]) VALUES (8, 39, 2, 10000)
INSERT [dbo].[OrderDetail] ([OrderID], [Pid], [Quantity], [SubTotal]) VALUES (8, 41, 1, 5000)
INSERT [dbo].[OrderDetail] ([OrderID], [Pid], [Quantity], [SubTotal]) VALUES (9, 39, 7, 35000)
INSERT [dbo].[OrderDetail] ([OrderID], [Pid], [Quantity], [SubTotal]) VALUES (9, 41, 1, 5000)
/****** Object:  ForeignKey [FK_Product_Category]    Script Date: 03/24/2022 11:23:33 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
/****** Object:  ForeignKey [FK_Cart_Account]    Script Date: 03/24/2022 11:23:33 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([Aid])
REFERENCES [dbo].[Account] ([Aid])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
/****** Object:  ForeignKey [FK_Customer_Account]    Script Date: 03/24/2022 11:23:33 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Account] FOREIGN KEY([Aid])
REFERENCES [dbo].[Account] ([Aid])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Account]
GO
/****** Object:  ForeignKey [FK_CartDetail_Cart]    Script Date: 03/24/2022 11:23:33 ******/
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_Cart] FOREIGN KEY([CartID])
REFERENCES [dbo].[Cart] ([CartID])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_Cart]
GO
/****** Object:  ForeignKey [FK_CartDetail_Product]    Script Date: 03/24/2022 11:23:33 ******/
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_Product] FOREIGN KEY([Pid])
REFERENCES [dbo].[Product] ([Pid])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_Product]
GO
/****** Object:  ForeignKey [FK_Order_Customer]    Script Date: 03/24/2022 11:23:33 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CusID])
REFERENCES [dbo].[Customer] ([CusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Order]    Script Date: 03/24/2022 11:23:33 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Product]    Script Date: 03/24/2022 11:23:33 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([Pid])
REFERENCES [dbo].[Product] ([Pid])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
