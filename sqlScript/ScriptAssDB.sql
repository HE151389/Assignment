USE [master]
GO
/****** Object:  Database [Computer_accessories]    Script Date: 03/03/2022 22:56:24 ******/
CREATE DATABASE [Computer_accessories] ON  PRIMARY 
( NAME = N'Computer_accessories', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Computer_accessories.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Computer_accessories_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Computer_accessories_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Computer_accessories] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Computer_accessories].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Computer_accessories] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Computer_accessories] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Computer_accessories] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Computer_accessories] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Computer_accessories] SET ARITHABORT OFF
GO
ALTER DATABASE [Computer_accessories] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Computer_accessories] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Computer_accessories] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Computer_accessories] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Computer_accessories] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Computer_accessories] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Computer_accessories] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Computer_accessories] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Computer_accessories] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Computer_accessories] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Computer_accessories] SET  ENABLE_BROKER
GO
ALTER DATABASE [Computer_accessories] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Computer_accessories] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Computer_accessories] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Computer_accessories] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Computer_accessories] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Computer_accessories] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Computer_accessories] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Computer_accessories] SET  READ_WRITE
GO
ALTER DATABASE [Computer_accessories] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Computer_accessories] SET  MULTI_USER
GO
ALTER DATABASE [Computer_accessories] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Computer_accessories] SET DB_CHAINING OFF
GO
USE [Computer_accessories]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/03/2022 22:56:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [nvarchar](50) NOT NULL,
	[userName] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([accountID], [userName], [password]) VALUES (N'AA01', N'Admin01', N'Admin01')
INSERT [dbo].[Account] ([accountID], [userName], [password]) VALUES (N'AA02', N'Admin02', N'Admin02')
INSERT [dbo].[Account] ([accountID], [userName], [password]) VALUES (N'AA03', N'Admin03', N'Admin03')
INSERT [dbo].[Account] ([accountID], [userName], [password]) VALUES (N'UA01', N'User01', N'User01')
INSERT [dbo].[Account] ([accountID], [userName], [password]) VALUES (N'UA02', N'User02', N'User02')
INSERT [dbo].[Account] ([accountID], [userName], [password]) VALUES (N'UA03', N'User03', N'User03')
/****** Object:  Table [dbo].[Accessory_Type]    Script Date: 03/03/2022 22:56:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory_Type](
	[accessoryTypeID] [nvarchar](50) NOT NULL,
	[AccessoryTypeName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[accessoryTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accessory_Type] ([accessoryTypeID], [AccessoryTypeName]) VALUES (N'C', N'Chair')
INSERT [dbo].[Accessory_Type] ([accessoryTypeID], [AccessoryTypeName]) VALUES (N'H', N'Headphone')
INSERT [dbo].[Accessory_Type] ([accessoryTypeID], [AccessoryTypeName]) VALUES (N'K', N'Keyboard')
INSERT [dbo].[Accessory_Type] ([accessoryTypeID], [AccessoryTypeName]) VALUES (N'M', N'Mouse')
/****** Object:  Table [dbo].[Discount_Accessory]    Script Date: 03/03/2022 22:56:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount_Accessory](
	[accessoryID] [nvarchar](50) NOT NULL,
	[oldPrice] [float] NOT NULL,
	[currentPrice] [float] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Discount_Accessory] ([accessoryID], [oldPrice], [currentPrice]) VALUES (N'K04', 50, 40)
INSERT [dbo].[Discount_Accessory] ([accessoryID], [oldPrice], [currentPrice]) VALUES (N'H06', 50, 40)
INSERT [dbo].[Discount_Accessory] ([accessoryID], [oldPrice], [currentPrice]) VALUES (N'M02', 50, 40)
INSERT [dbo].[Discount_Accessory] ([accessoryID], [oldPrice], [currentPrice]) VALUES (N'K04', 50, 40)
INSERT [dbo].[Discount_Accessory] ([accessoryID], [oldPrice], [currentPrice]) VALUES (N'M01', 50, 40)
INSERT [dbo].[Discount_Accessory] ([accessoryID], [oldPrice], [currentPrice]) VALUES (N'K04', 50, 40)
INSERT [dbo].[Discount_Accessory] ([accessoryID], [oldPrice], [currentPrice]) VALUES (N'K04', 50, 40)
INSERT [dbo].[Discount_Accessory] ([accessoryID], [oldPrice], [currentPrice]) VALUES (N'C03', 50, 40)
INSERT [dbo].[Discount_Accessory] ([accessoryID], [oldPrice], [currentPrice]) VALUES (N'H04', 50, 40)
INSERT [dbo].[Discount_Accessory] ([accessoryID], [oldPrice], [currentPrice]) VALUES (N'H08', 50, 40)
/****** Object:  Table [dbo].[Customer]    Script Date: 03/03/2022 22:56:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customerID] [nvarchar](50) NOT NULL,
	[customerName] [nvarchar](50) NOT NULL,
	[customerPhone] [nvarchar](50) NOT NULL,
	[customerEmail] [nvarchar](50) NULL,
	[customerAddress] [nvarchar](250) NOT NULL,
	[AccountID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer] ([customerID], [customerName], [customerPhone], [customerEmail], [customerAddress], [AccountID]) VALUES (N'C01', N'Customer01', N'0201', N'Customer01@mail.com', N'CustomerAddress01', N'UA01')
INSERT [dbo].[Customer] ([customerID], [customerName], [customerPhone], [customerEmail], [customerAddress], [AccountID]) VALUES (N'C02', N'Customer02', N'0202', NULL, N'CustomerAddress02', N'UA02')
INSERT [dbo].[Customer] ([customerID], [customerName], [customerPhone], [customerEmail], [customerAddress], [AccountID]) VALUES (N'C03', N'Customer03', N'0203', N'Customer03@mail.com', N'CustomerAddress03', N'UA03')
INSERT [dbo].[Customer] ([customerID], [customerName], [customerPhone], [customerEmail], [customerAddress], [AccountID]) VALUES (N'C04', N'Customer04', N'0204', N'Customer04@mail.com', N'CustomerAddress04', NULL)
/****** Object:  Table [dbo].[Admin]    Script Date: 03/03/2022 22:56:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[adminID] [nvarchar](50) NOT NULL,
	[adminName] [nvarchar](50) NOT NULL,
	[adminPhone] [nvarchar](50) NOT NULL,
	[adminEmail] [nvarchar](50) NOT NULL,
	[AccountID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([adminID], [adminName], [adminPhone], [adminEmail], [AccountID]) VALUES (N'A01', N'Admin01', N'0101', N'Admin01@email.com', N'AA01')
INSERT [dbo].[Admin] ([adminID], [adminName], [adminPhone], [adminEmail], [AccountID]) VALUES (N'A02', N'Admin02', N'0102', N'Admin02@email.com', N'AA02')
INSERT [dbo].[Admin] ([adminID], [adminName], [adminPhone], [adminEmail], [AccountID]) VALUES (N'A03', N'Admin03', N'0103', N'Admin03@email.com', N'AA03')
/****** Object:  Table [dbo].[Accessory]    Script Date: 03/03/2022 22:56:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[accessoryID] [nvarchar](50) NOT NULL,
	[accessoryName] [nvarchar](50) NOT NULL,
	[accessoryTypeID] [nvarchar](50) NOT NULL,
	[accessoryQuantity] [int] NOT NULL,
	[accessoryPrice] [float] NOT NULL,
	[accessoryForm] [nvarchar](50) NOT NULL,
	[accessoryFrom] [nvarchar](50) NULL,
	[urlImg1] [nvarchar](500) NULL,
	[urlImg2] [nvarchar](500) NULL,
 CONSTRAINT [PK_accessories] PRIMARY KEY CLUSTERED 
(
	[accessoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'C01', N'Chair01', N'C', 10, 5000, N'Form1', N'Akracing', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CAkracing01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CAkracing01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'C02', N'Chair02', N'C', 10, 5000, N'Form2', N'Akracing', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CAkracing02.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CAkracing02(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'C03', N'Chair03', N'C', 10, 5000, N'Form3', N'Akracing', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CAkracing03.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CAkracing03(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'C04', N'Chair04', N'C', 10, 5000, N'Form1', N'Corsair', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CCorsair01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CCorsair01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'C05', N'Chair05', N'C', 10, 5000, N'Form1', N'MSI', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CMSI01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CMSI01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'C06', N'Chair06', N'C', 10, 5000, N'Form2', N'MSI', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CMSI02.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CMSI02(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'C07', N'Chair07', N'C', 10, 5000, N'Form3', N'MSI', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CMSI03.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\CMSI03(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'H01', N'Headphone01', N'H', 10, 5000, N'Form1', N'Logitech', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HLogitech01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HLogitech01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'H02', N'Headphone02', N'H', 10, 5000, N'Form2', N'Logitech', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HLogitech02.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HLogitech02(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'H03', N'Headphone03', N'H', 10, 5000, N'Form1', N'Razer', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HRazer01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HRazer01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'H04', N'Headphone04', N'H', 10, 5000, N'Form1', N'Corsair', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HCorsair01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HCorsair01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'H05', N'Headphone05', N'H', 10, 5000, N'Form2', N'Corsair', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HCorsair02.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HCorsair02(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'H06', N'Headphone06', N'H', 10, 5000, N'Form3', N'Corsair', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HCorsair03.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HCorsair03(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'H07', N'Headphone07', N'H', 10, 5000, N'Form4', N'Asus', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HAsus01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HAsus01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'H08', N'Headphone08', N'H', 10, 5000, N'Form1', N'Asus', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HAsus02.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HAsus02(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'H09', N'Headphone09', N'H', 10, 5000, N'Form2', N'Asus', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HAsus03.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HAsus03(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'H10', N'Headphone10', N'H', 10, 5000, N'Form3', N'Asus', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HAsus04.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\HAsus04(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'K01', N'Keyboard01', N'K', 10, 5000, N'Form1', N'Logitech', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KLogitech01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KLogitech01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'K02', N'Keyboard02', N'K', 10, 5000, N'Form2', N'Logitech', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KLogitech02.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KLogitech02(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'K03', N'Keyboard03', N'K', 10, 5000, N'Form3', N'Logitech', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KLogitech03.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KLogitech03(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'K04', N'Keyboard04', N'K', 10, 5000, N'Form1', N'Razer', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KRaze01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KRaze01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'K05', N'Keyboard05', N'K', 10, 5000, N'Form2', N'Razer', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KRaze02.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KRaze02(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'K06', N'Keyboard06', N'K', 10, 5000, N'Form1', N'Corsair', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KCorsair01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KCorsair01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'K07', N'Keyboard07', N'K', 10, 5000, N'Form1', N'Fuhlen', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KFuhlen01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KFuhlen01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'K08', N'Keyboard08', N'K', 10, 5000, N'Form2', N'Fuhlen', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KFuhlen02.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KFuhlen02(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'K09', N'Keyboard09', N'K', 10, 5000, N'Form3', N'Fuhlen', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KFuhlen03.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KFuhlen03(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'K10', N'Keyboard10', N'K', 10, 5000, N'Form4', N'Fuhlen', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KFuhlen04.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\KFuhlen04(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'M01', N'Mouse01', N'M', 10, 5000, N'Form1', N'Logitech', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MLogitech01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MLogitech01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'M02', N'Mouse02', N'M', 10, 5000, N'Form2', N'Logitech', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MLogitech02.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MLogitech02(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'M03', N'Mouse03', N'M', 10, 5000, N'Form3', N'Logitech', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MLogitech03.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MLogitech03(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'M04', N'Mouse04', N'M', 10, 5000, N'Form4', N'Logitech', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MLogitech04.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MLogitech04(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'M05', N'Mouse05', N'M', 10, 5000, N'Form1', N'Razer', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MRazer01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MRazer01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'M06', N'Mouse06', N'M', 10, 5000, N'Form2', N'Razer', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MRazer02.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MRazer02(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'M07', N'Mouse07', N'M', 10, 5000, N'Form3', N'Razer', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MRazer03.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MRazer03(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'M08', N'Mouse08', N'M', 10, 5000, N'Form1', N'Corsair', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MCorsair01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MCorsair01(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'M09', N'Mouse09', N'M', 10, 5000, N'Form2', N'Corsair', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MCorsiar02.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MCorsiar02(2).jpg')
INSERT [dbo].[Accessory] ([accessoryID], [accessoryName], [accessoryTypeID], [accessoryQuantity], [accessoryPrice], [accessoryForm], [accessoryFrom], [urlImg1], [urlImg2]) VALUES (N'M10', N'Mouse10', N'M', 10, 5000, N'Form1', N'Fuhlen', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MFuhlen01.jpg', N'C:\Users\nam25\Documents\NetBeansProjects\Assignment\web\images\MFuhlen01.jpg')
/****** Object:  Table [dbo].[Order]    Script Date: 03/03/2022 22:56:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [nvarchar](50) NOT NULL,
	[customerID] [nvarchar](50) NOT NULL,
	[totalMoney] [float] NOT NULL,
	[orderDate] [datetime] NOT NULL,
	[note] [nvarchar](250) NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Order] ([orderID], [customerID], [totalMoney], [orderDate], [note]) VALUES (N'O01', N'C01', 50000, CAST(0x0000AE2F00000000 AS DateTime), NULL)
INSERT [dbo].[Order] ([orderID], [customerID], [totalMoney], [orderDate], [note]) VALUES (N'O02', N'C02', 50000, CAST(0x0000AE3000000000 AS DateTime), NULL)
INSERT [dbo].[Order] ([orderID], [customerID], [totalMoney], [orderDate], [note]) VALUES (N'O03', N'C01', 50000, CAST(0x0000AE3100000000 AS DateTime), NULL)
INSERT [dbo].[Order] ([orderID], [customerID], [totalMoney], [orderDate], [note]) VALUES (N'O04', N'C04', 50000, CAST(0x0000AE3200000000 AS DateTime), NULL)
/****** Object:  Table [dbo].[Order_detail]    Script Date: 03/03/2022 22:56:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_detail](
	[orderID] [nvarchar](50) NOT NULL,
	[accessoryID] [nvarchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_Order_detail] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[accessoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Order_detail] ([orderID], [accessoryID], [quantity]) VALUES (N'O01', N'M01', 2)
INSERT [dbo].[Order_detail] ([orderID], [accessoryID], [quantity]) VALUES (N'O02', N'C03', 3)
INSERT [dbo].[Order_detail] ([orderID], [accessoryID], [quantity]) VALUES (N'O02', N'H04', 4)
INSERT [dbo].[Order_detail] ([orderID], [accessoryID], [quantity]) VALUES (N'O02', N'K02', 2)
INSERT [dbo].[Order_detail] ([orderID], [accessoryID], [quantity]) VALUES (N'O02', N'M02', 1)
INSERT [dbo].[Order_detail] ([orderID], [accessoryID], [quantity]) VALUES (N'O03', N'C02', 2)
INSERT [dbo].[Order_detail] ([orderID], [accessoryID], [quantity]) VALUES (N'O03', N'H01', 1)
INSERT [dbo].[Order_detail] ([orderID], [accessoryID], [quantity]) VALUES (N'O03', N'K03', 3)
INSERT [dbo].[Order_detail] ([orderID], [accessoryID], [quantity]) VALUES (N'O04', N'M05', 5)
/****** Object:  ForeignKey [FK_Customer_Account]    Script Date: 03/03/2022 22:56:26 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Account]
GO
/****** Object:  ForeignKey [FK_Admin_Account]    Script Date: 03/03/2022 22:56:26 ******/
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_Account]
GO
/****** Object:  ForeignKey [FK_Accessory_Accessory_Type]    Script Date: 03/03/2022 22:56:26 ******/
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Accessory_Type] FOREIGN KEY([accessoryTypeID])
REFERENCES [dbo].[Accessory_Type] ([accessoryTypeID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Accessory_Type]
GO
/****** Object:  ForeignKey [FK_Order_Customer]    Script Date: 03/03/2022 22:56:26 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([customerID])
REFERENCES [dbo].[Customer] ([customerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
/****** Object:  ForeignKey [FK_Order_detail_Accessory]    Script Date: 03/03/2022 22:56:26 ******/
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_detail_Accessory] FOREIGN KEY([accessoryID])
REFERENCES [dbo].[Accessory] ([accessoryID])
GO
ALTER TABLE [dbo].[Order_detail] CHECK CONSTRAINT [FK_Order_detail_Accessory]
GO
/****** Object:  ForeignKey [FK_Order_detail_Order]    Script Date: 03/03/2022 22:56:26 ******/
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_detail_Order] FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
GO
ALTER TABLE [dbo].[Order_detail] CHECK CONSTRAINT [FK_Order_detail_Order]
GO
