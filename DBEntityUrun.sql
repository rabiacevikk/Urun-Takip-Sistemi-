USE [master]
GO
/****** Object:  Database [DbEntityUrun]    Script Date: 21.02.2021 12:08:39 ******/
CREATE DATABASE [DbEntityUrun]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbEntityUrun', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\DbEntityUrun.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbEntityUrun_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\DbEntityUrun_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DbEntityUrun] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbEntityUrun].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbEntityUrun] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbEntityUrun] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbEntityUrun] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbEntityUrun] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbEntityUrun] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbEntityUrun] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbEntityUrun] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbEntityUrun] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbEntityUrun] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbEntityUrun] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbEntityUrun] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbEntityUrun] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbEntityUrun] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbEntityUrun] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbEntityUrun] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbEntityUrun] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbEntityUrun] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbEntityUrun] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbEntityUrun] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbEntityUrun] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbEntityUrun] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbEntityUrun] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbEntityUrun] SET RECOVERY FULL 
GO
ALTER DATABASE [DbEntityUrun] SET  MULTI_USER 
GO
ALTER DATABASE [DbEntityUrun] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbEntityUrun] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbEntityUrun] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbEntityUrun] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbEntityUrun] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbEntityUrun] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DbEntityUrun', N'ON'
GO
ALTER DATABASE [DbEntityUrun] SET QUERY_STORE = OFF
GO
USE [DbEntityUrun]
GO
/****** Object:  Table [dbo].[TBLADMIN]    Script Date: 21.02.2021 12:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLADMIN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KULLANICI] [varchar](50) NULL,
	[SIFRE] [varchar](50) NULL,
 CONSTRAINT [PK_TBLADMIN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLKATEGORI]    Script Date: 21.02.2021 12:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLKATEGORI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NULL,
 CONSTRAINT [PK_TBLKATEGORI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLMUSTERI]    Script Date: 21.02.2021 12:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLMUSTERI](
	[MUSTERIID] [int] IDENTITY(1,1) NOT NULL,
	[MUSTERIAD] [varchar](50) NULL,
	[MUSTERISOYAD] [varchar](50) NULL,
	[SEHIR] [varchar](50) NULL,
	[DURUM] [bit] NULL,
 CONSTRAINT [PK_TBLMUSTERI] PRIMARY KEY CLUSTERED 
(
	[MUSTERIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLSATIS]    Script Date: 21.02.2021 12:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLSATIS](
	[SATISID] [int] IDENTITY(1,1) NOT NULL,
	[URUN] [int] NULL,
	[MUSTERI] [int] NULL,
	[FIYAT] [decimal](18, 2) NULL,
	[TARIH] [smalldatetime] NULL,
 CONSTRAINT [PK_TBLSATIS] PRIMARY KEY CLUSTERED 
(
	[SATISID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLURUN]    Script Date: 21.02.2021 12:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLURUN](
	[URUNID] [int] IDENTITY(1,1) NOT NULL,
	[URUNAD] [varchar](50) NULL,
	[MARKA] [varchar](50) NULL,
	[STOK] [smallint] NULL,
	[FIYAT] [decimal](18, 2) NULL,
	[DURUM] [bit] NULL,
	[KATEGORI] [int] NULL,
 CONSTRAINT [PK_TBLURUN] PRIMARY KEY CLUSTERED 
(
	[URUNID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBLADMIN] ON 

INSERT [dbo].[TBLADMIN] ([ID], [KULLANICI], [SIFRE]) VALUES (1, N'a', N'1')
INSERT [dbo].[TBLADMIN] ([ID], [KULLANICI], [SIFRE]) VALUES (2, N'b', N'23')
SET IDENTITY_INSERT [dbo].[TBLADMIN] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLKATEGORI] ON 

INSERT [dbo].[TBLKATEGORI] ([ID], [AD]) VALUES (1, N'BEYAZ EŞYA')
INSERT [dbo].[TBLKATEGORI] ([ID], [AD]) VALUES (2, N'BİLGİSAYAR')
INSERT [dbo].[TBLKATEGORI] ([ID], [AD]) VALUES (3, N'KÜÇÜK EV ALETİ')
INSERT [dbo].[TBLKATEGORI] ([ID], [AD]) VALUES (5, N'ZÜCCACİYE')
INSERT [dbo].[TBLKATEGORI] ([ID], [AD]) VALUES (6, N'TELEVİZYON')
SET IDENTITY_INSERT [dbo].[TBLKATEGORI] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLMUSTERI] ON 

INSERT [dbo].[TBLMUSTERI] ([MUSTERIID], [MUSTERIAD], [MUSTERISOYAD], [SEHIR], [DURUM]) VALUES (1, N'ALİ', N'YILDIZ', N'ANKARA', 1)
INSERT [dbo].[TBLMUSTERI] ([MUSTERIID], [MUSTERIAD], [MUSTERISOYAD], [SEHIR], [DURUM]) VALUES (2, N'ZEYNEP', N'ÇINAR', N'İSTANBUL', 1)
INSERT [dbo].[TBLMUSTERI] ([MUSTERIID], [MUSTERIAD], [MUSTERISOYAD], [SEHIR], [DURUM]) VALUES (3, N'ASLI', N'DOĞAN', N'ADANA', 1)
INSERT [dbo].[TBLMUSTERI] ([MUSTERIID], [MUSTERIAD], [MUSTERISOYAD], [SEHIR], [DURUM]) VALUES (4, N'MEHMET', N'KORKMAZ', N'ADANA', 0)
INSERT [dbo].[TBLMUSTERI] ([MUSTERIID], [MUSTERIAD], [MUSTERISOYAD], [SEHIR], [DURUM]) VALUES (5, N'SEVİL', N'GÜL', N'İZMİR', 0)
SET IDENTITY_INSERT [dbo].[TBLMUSTERI] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLSATIS] ON 

INSERT [dbo].[TBLSATIS] ([SATISID], [URUN], [MUSTERI], [FIYAT], [TARIH]) VALUES (1, 1, 3, CAST(2300.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBLSATIS] ([SATISID], [URUN], [MUSTERI], [FIYAT], [TARIH]) VALUES (2, 2, 2, CAST(3250.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TBLSATIS] ([SATISID], [URUN], [MUSTERI], [FIYAT], [TARIH]) VALUES (3, 4, 2, CAST(1200.00 AS Decimal(18, 2)), NULL)
SET IDENTITY_INSERT [dbo].[TBLSATIS] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLURUN] ON 

INSERT [dbo].[TBLURUN] ([URUNID], [URUNAD], [MARKA], [STOK], [FIYAT], [DURUM], [KATEGORI]) VALUES (1, N'BUZDOLABI', N'SIEMENS', 124, CAST(2500.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[TBLURUN] ([URUNID], [URUNAD], [MARKA], [STOK], [FIYAT], [DURUM], [KATEGORI]) VALUES (2, N'ÇAMAŞIR MAKİNESİ', N'BEKO', 50, CAST(1750.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[TBLURUN] ([URUNID], [URUNAD], [MARKA], [STOK], [FIYAT], [DURUM], [KATEGORI]) VALUES (4, N'ÜTÜ', N'SIEMENS', 140, CAST(350.00 AS Decimal(18, 2)), 1, 3)
INSERT [dbo].[TBLURUN] ([URUNID], [URUNAD], [MARKA], [STOK], [FIYAT], [DURUM], [KATEGORI]) VALUES (5, N'LAPTOP', N'TOSHIBA', 200, CAST(3000.00 AS Decimal(18, 2)), 1, 2)
INSERT [dbo].[TBLURUN] ([URUNID], [URUNAD], [MARKA], [STOK], [FIYAT], [DURUM], [KATEGORI]) VALUES (6, N'BUZDOLABI', N'BEKO', 135, CAST(2000.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[TBLURUN] ([URUNID], [URUNAD], [MARKA], [STOK], [FIYAT], [DURUM], [KATEGORI]) VALUES (7, N'FIRIN', N'SIEMENS', 75, CAST(560.00 AS Decimal(18, 2)), 1, 3)
INSERT [dbo].[TBLURUN] ([URUNID], [URUNAD], [MARKA], [STOK], [FIYAT], [DURUM], [KATEGORI]) VALUES (8, N'BUZDOLABI', N'VESTEL', 120, CAST(2500.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[TBLURUN] ([URUNID], [URUNAD], [MARKA], [STOK], [FIYAT], [DURUM], [KATEGORI]) VALUES (9, N'LAPTOP', N'MONSTER', 20, CAST(9000.00 AS Decimal(18, 2)), 1, 2)
SET IDENTITY_INSERT [dbo].[TBLURUN] OFF
GO
ALTER TABLE [dbo].[TBLSATIS]  WITH CHECK ADD  CONSTRAINT [FK_TBLSATIS_TBLMUSTERI] FOREIGN KEY([MUSTERI])
REFERENCES [dbo].[TBLMUSTERI] ([MUSTERIID])
GO
ALTER TABLE [dbo].[TBLSATIS] CHECK CONSTRAINT [FK_TBLSATIS_TBLMUSTERI]
GO
ALTER TABLE [dbo].[TBLSATIS]  WITH CHECK ADD  CONSTRAINT [FK_TBLSATIS_TBLURUN] FOREIGN KEY([URUN])
REFERENCES [dbo].[TBLURUN] ([URUNID])
GO
ALTER TABLE [dbo].[TBLSATIS] CHECK CONSTRAINT [FK_TBLSATIS_TBLURUN]
GO
ALTER TABLE [dbo].[TBLURUN]  WITH CHECK ADD  CONSTRAINT [FK_TBLURUN_TBLKATEGORI] FOREIGN KEY([KATEGORI])
REFERENCES [dbo].[TBLKATEGORI] ([ID])
GO
ALTER TABLE [dbo].[TBLURUN] CHECK CONSTRAINT [FK_TBLURUN_TBLKATEGORI]
GO
/****** Object:  StoredProcedure [dbo].[MARKAGETIR]    Script Date: 21.02.2021 12:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MARKAGETIR]
AS
SELECT TOP 1 MARKA FROM TBLURUN GROUP BY MARKA ORDER BY COUNT (*) DESC
GO
USE [master]
GO
ALTER DATABASE [DbEntityUrun] SET  READ_WRITE 
GO
