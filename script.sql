USE [master]
GO
/****** Object:  Database [Inmobiliaria]    Script Date: 02/06/2018 21:15:25 ******/
CREATE DATABASE [Inmobiliaria] ON  PRIMARY 
( NAME = N'Inmobiliaria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Inmobiliaria.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Inmobiliaria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Inmobiliaria_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Inmobiliaria] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Inmobiliaria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Inmobiliaria] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Inmobiliaria] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Inmobiliaria] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Inmobiliaria] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Inmobiliaria] SET ARITHABORT OFF
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Inmobiliaria] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Inmobiliaria] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Inmobiliaria] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Inmobiliaria] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Inmobiliaria] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Inmobiliaria] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Inmobiliaria] SET  DISABLE_BROKER
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Inmobiliaria] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Inmobiliaria] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Inmobiliaria] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Inmobiliaria] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Inmobiliaria] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Inmobiliaria] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Inmobiliaria] SET  READ_WRITE
GO
ALTER DATABASE [Inmobiliaria] SET RECOVERY FULL
GO
ALTER DATABASE [Inmobiliaria] SET  MULTI_USER
GO
ALTER DATABASE [Inmobiliaria] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Inmobiliaria] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Inmobiliaria', N'ON'
GO
USE [Inmobiliaria]
GO
/****** Object:  Table [dbo].[PRODUCTO_ALMACEN]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCTO_ALMACEN](
	[pal_pro_id] [nvarchar](50) NOT NULL,
	[pal_alm_id] [int] NOT NULL,
	[pal_stock] [int] NOT NULL,
	[pal_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PRODUCTO_ALMACENN] PRIMARY KEY CLUSTERED 
(
	[pal_pro_id] ASC,
	[pal_alm_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10000', 1000, 5, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10000', 1001, 8, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10000', 1002, 1, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10000', 1005, 10, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10000', 1006, 1, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10000', 1007, 40, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10000', 1008, 100, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10001', 1000, 6, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10001', 1001, 10, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10001', 1002, 2, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10001', 1005, 11, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10001', 1006, 2, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10001', 1007, 41, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10001', 1008, 101, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10002', 1000, 7, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10002', 1001, 7, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10002', 1002, 3, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10002', 1005, 12, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10002', 1006, 3, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10002', 1007, 42, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10002', 1008, 102, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10003', 1000, 8, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10003', 1001, 8, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10003', 1002, 4, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10003', 1005, 13, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10003', 1006, 4, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10003', 1007, 43, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10003', 1008, 103, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10004', 1000, 9, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10004', 1001, 9, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10004', 1002, 5, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10004', 1005, 14, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10004', 1006, 5, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10004', 1007, 44, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10004', 1008, 104, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10005', 1000, 10, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10005', 1001, 10, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10005', 1002, 6, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10005', 1005, 15, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10005', 1006, 6, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10005', 1007, 45, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10005', 1008, 105, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10006', 1000, 11, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10006', 1001, 11, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10006', 1002, 7, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10006', 1005, 16, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10006', 1006, 7, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10006', 1007, 46, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10006', 1008, 106, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10007', 1000, 12, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10007', 1001, 12, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10007', 1002, 8, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10007', 1005, 17, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10007', 1006, 8, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10007', 1007, 47, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10007', 1008, 107, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10008', 1000, 13, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10008', 1001, 13, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10008', 1002, 9, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10008', 1005, 18, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10008', 1006, 9, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10008', 1007, 48, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10008', 1008, 108, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10009', 1000, 14, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10009', 1001, 14, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10009', 1002, 10, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10009', 1005, 19, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10009', 1006, 10, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10009', 1007, 49, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10009', 1008, 109, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10010', 1000, 15, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10010', 1001, 15, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10010', 1002, 11, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10010', 1005, 20, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10010', 1006, 11, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10010', 1007, 50, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10010', 1008, 110, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10011', 1000, 16, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10011', 1001, 16, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10011', 1002, 12, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10011', 1005, 21, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10011', 1006, 12, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10011', 1007, 51, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10011', 1008, 111, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10012', 1000, 17, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10012', 1001, 17, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10012', 1002, 13, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10012', 1005, 22, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10012', 1006, 13, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10012', 1007, 52, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10012', 1008, 112, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10013', 1000, 18, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10013', 1001, 18, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10013', 1002, 14, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10013', 1005, 23, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10013', 1006, 14, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10013', 1007, 53, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10013', 1008, 113, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10014', 1000, 19, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10014', 1001, 19, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10014', 1002, 15, N'A')
GO
print 'Processed 100 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10014', 1005, 24, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10014', 1006, 15, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10014', 1007, 54, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10014', 1008, 114, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10015', 1000, 20, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10015', 1001, 20, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10015', 1002, 16, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10015', 1005, 25, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10015', 1006, 16, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10015', 1007, 55, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10015', 1008, 115, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10016', 1000, 21, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10016', 1001, 21, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10016', 1002, 17, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10016', 1005, 26, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10016', 1006, 17, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10016', 1007, 56, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10016', 1008, 116, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10017', 1000, 22, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10017', 1001, 22, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10017', 1002, 24, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10017', 1005, 27, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10017', 1006, 18, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10017', 1007, 57, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10017', 1008, 117, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10018', 1000, 23, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10018', 1001, 23, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10018', 1002, 19, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10018', 1005, 28, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10018', 1006, 19, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10018', 1007, 58, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10018', 1008, 118, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10019', 1000, 24, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10019', 1001, 24, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10019', 1002, 20, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10019', 1005, 29, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10019', 1006, 20, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10019', 1007, 59, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10019', 1008, 119, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10020', 1000, 25, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10020', 1001, 25, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10020', 1002, 21, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10020', 1005, 30, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10020', 1006, 21, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10020', 1007, 60, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10020', 1008, 120, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10021', 1000, 26, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10021', 1001, 26, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10021', 1002, 22, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10021', 1005, 31, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10021', 1006, 22, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10021', 1007, 61, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10021', 1008, 121, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10022', 1000, 27, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10022', 1001, 27, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10022', 1002, 23, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10022', 1005, 32, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10022', 1006, 23, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10022', 1007, 62, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10022', 1008, 122, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10023', 1000, 28, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10023', 1001, 28, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10023', 1002, 24, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10023', 1005, 33, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10023', 1006, 24, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10023', 1007, 63, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10023', 1008, 123, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10024', 1000, 29, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10024', 1001, 29, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10024', 1002, 25, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10024', 1005, 34, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10024', 1006, 25, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10024', 1007, 64, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10024', 1008, 124, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10025', 1000, 30, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10025', 1001, 30, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10025', 1002, 26, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10025', 1005, 35, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10025', 1006, 26, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10025', 1007, 65, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10025', 1008, 125, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10026', 1000, 31, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10026', 1001, 31, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10026', 1002, 27, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10026', 1005, 36, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10026', 1006, 27, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10026', 1007, 66, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10026', 1008, 126, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10027', 1000, 32, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10027', 1001, 32, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10027', 1002, 28, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10027', 1005, 37, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10027', 1006, 28, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10027', 1007, 67, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10027', 1008, 127, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10028', 1000, 33, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10028', 1001, 33, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10028', 1002, 29, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10028', 1005, 38, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10028', 1006, 29, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10028', 1007, 68, N'A')
GO
print 'Processed 200 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10028', 1008, 128, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10029', 1000, 34, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10029', 1001, 34, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10029', 1002, 30, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10029', 1005, 39, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10029', 1006, 30, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10029', 1007, 69, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10029', 1008, 129, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10030', 1000, 35, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10030', 1001, 35, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10030', 1002, 31, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10030', 1005, 40, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10030', 1006, 31, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10030', 1007, 70, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10030', 1008, 130, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10031', 1000, 36, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10031', 1001, 36, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10031', 1002, 32, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10031', 1005, 41, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10031', 1006, 32, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10031', 1007, 71, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10031', 1008, 131, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10032', 1000, 37, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10032', 1001, 37, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10032', 1002, 33, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10032', 1005, 42, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10032', 1006, 33, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10032', 1007, 72, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10032', 1008, 132, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10033', 1000, 38, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10033', 1001, 38, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10033', 1002, 34, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10033', 1005, 43, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10033', 1006, 34, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10033', 1007, 73, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10033', 1008, 133, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10034', 1000, 39, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10034', 1001, 39, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10034', 1002, 35, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10034', 1005, 44, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10034', 1006, 35, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10034', 1007, 74, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10034', 1008, 134, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10035', 1000, 40, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10035', 1001, 40, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10035', 1002, 36, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10035', 1005, 45, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10035', 1006, 36, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10035', 1007, 75, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10035', 1008, 135, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10036', 1000, 41, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10036', 1001, 41, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10036', 1002, 37, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10036', 1005, 46, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10036', 1006, 37, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10036', 1007, 76, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10036', 1008, 136, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10037', 1000, 42, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10037', 1001, 42, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10037', 1002, 38, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10037', 1005, 47, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10037', 1006, 38, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10037', 1007, 77, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10037', 1008, 137, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10038', 1000, 43, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10038', 1001, 43, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10038', 1002, 39, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10038', 1005, 48, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10038', 1006, 39, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10038', 1007, 78, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10038', 1008, 138, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10039', 1000, 44, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10039', 1001, 44, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10039', 1002, 40, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10039', 1005, 49, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10039', 1006, 40, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10039', 1007, 79, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10039', 1008, 139, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10040', 1000, 45, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10040', 1001, 45, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10040', 1002, 41, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10040', 1005, 50, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10040', 1006, 41, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10040', 1007, 80, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10040', 1008, 140, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10041', 1000, 46, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10041', 1001, 46, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10041', 1002, 42, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10041', 1005, 51, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10041', 1006, 42, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10041', 1007, 81, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10041', 1008, 141, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10042', 1000, 47, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10042', 1001, 47, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10042', 1002, 43, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10042', 1005, 52, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10042', 1006, 43, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10042', 1007, 82, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10042', 1008, 142, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10043', 1000, 48, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10043', 1001, 48, N'A')
GO
print 'Processed 300 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10043', 1002, 44, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10043', 1005, 53, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10043', 1006, 44, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10043', 1007, 83, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10043', 1008, 143, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10044', 1000, 49, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10044', 1001, 49, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10044', 1002, 45, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10044', 1005, 54, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10044', 1006, 45, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10044', 1007, 84, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10044', 1008, 144, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10045', 1000, 50, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10045', 1001, 50, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10045', 1002, 46, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10045', 1005, 55, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10045', 1006, 46, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10045', 1007, 85, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10045', 1008, 145, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10046', 1000, 51, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10046', 1001, 51, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10046', 1002, 47, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10046', 1005, 56, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10046', 1006, 47, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10046', 1007, 86, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10046', 1008, 146, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10047', 1000, 52, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10047', 1001, 52, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10047', 1002, 48, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10047', 1005, 57, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10047', 1006, 48, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10047', 1007, 87, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10047', 1008, 147, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10048', 1000, 53, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10048', 1001, 53, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10048', 1002, 49, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10048', 1005, 58, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10048', 1006, 49, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10048', 1007, 88, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10048', 1008, 148, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10049', 1000, 54, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10049', 1001, 54, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10049', 1002, 50, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10049', 1005, 59, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10049', 1006, 50, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10049', 1007, 89, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10049', 1008, 149, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10050', 1000, 55, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10050', 1001, 55, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10050', 1002, 51, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10050', 1005, 60, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10050', 1006, 51, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10050', 1007, 90, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10050', 1008, 150, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10051', 1000, 56, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10051', 1001, 56, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10051', 1002, 52, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10051', 1005, 61, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10051', 1006, 52, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10051', 1007, 91, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10051', 1008, 151, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10053', 1000, 57, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10053', 1001, 57, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10053', 1002, 53, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10053', 1005, 62, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10053', 1006, 53, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10053', 1007, 92, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10053', 1008, 152, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10054', 1000, 58, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10054', 1001, 58, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10054', 1002, 54, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10054', 1005, 63, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10054', 1006, 54, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10054', 1007, 93, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10054', 1008, 153, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10055', 1000, 59, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10055', 1001, 59, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10055', 1002, 55, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10055', 1005, 64, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10055', 1006, 55, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10055', 1007, 94, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10055', 1008, 154, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10056', 1000, 60, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10056', 1001, 60, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10056', 1002, 56, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10056', 1005, 65, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10056', 1006, 56, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10056', 1007, 95, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10056', 1008, 155, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10057', 1000, 61, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10057', 1001, 61, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10057', 1002, 57, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10057', 1005, 66, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10057', 1006, 57, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10057', 1007, 96, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10057', 1008, 156, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10058', 1000, 62, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10058', 1001, 62, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10058', 1002, 58, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10058', 1005, 67, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10058', 1006, 58, N'A')
GO
print 'Processed 400 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10058', 1007, 97, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10058', 1008, 157, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10059', 1000, 63, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10059', 1001, 63, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10059', 1002, 59, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10059', 1005, 68, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10059', 1006, 59, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10059', 1007, 98, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10059', 1008, 158, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10060', 1000, 64, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10060', 1001, 64, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10060', 1002, 60, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10060', 1005, 69, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10060', 1006, 60, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10060', 1007, 99, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10060', 1008, 159, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10061', 1000, 65, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10061', 1001, 65, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10061', 1002, 61, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10061', 1005, 70, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10061', 1006, 61, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10061', 1007, 100, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10061', 1008, 160, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10062', 1000, 66, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10062', 1001, 66, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10062', 1002, 62, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10062', 1005, 71, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10062', 1006, 62, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10062', 1007, 101, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10062', 1008, 161, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10063', 1000, 67, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10063', 1001, 67, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10063', 1002, 63, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10063', 1005, 72, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10063', 1006, 63, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10063', 1007, 102, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10063', 1008, 162, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10064', 1000, 68, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10064', 1001, 68, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10064', 1002, 64, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10064', 1005, 73, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10064', 1006, 64, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10064', 1007, 103, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10064', 1008, 163, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10065', 1000, 69, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10065', 1001, 69, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10065', 1002, 65, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10065', 1005, 74, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10065', 1006, 65, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10065', 1007, 104, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10065', 1008, 164, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10066', 1000, 70, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10066', 1001, 70, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10066', 1002, 66, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10066', 1005, 75, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10066', 1006, 66, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10066', 1007, 105, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10066', 1008, 165, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10067', 1000, 71, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10067', 1001, 71, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10067', 1002, 67, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10067', 1005, 76, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10067', 1006, 67, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10067', 1007, 106, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10067', 1008, 166, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10068', 1000, 72, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10068', 1001, 72, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10068', 1002, 68, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10068', 1005, 77, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10068', 1006, 68, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10068', 1007, 107, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10068', 1008, 167, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10069', 1000, 73, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10069', 1001, 73, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10069', 1002, 69, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10069', 1005, 78, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10069', 1006, 69, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10069', 1007, 108, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10069', 1008, 168, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10070', 1000, 74, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10070', 1001, 74, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10070', 1002, 70, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10070', 1005, 79, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10070', 1006, 70, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10070', 1007, 109, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10070', 1008, 169, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10071', 1000, 75, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10071', 1001, 75, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10071', 1002, 71, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10071', 1005, 80, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10071', 1006, 71, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10071', 1007, 110, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10071', 1008, 170, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10072', 1000, 76, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10072', 1001, 76, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10072', 1002, 72, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10072', 1005, 81, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10072', 1006, 72, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10072', 1007, 111, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10072', 1008, 171, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10073', 1000, 77, N'A')
GO
print 'Processed 500 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10073', 1001, 77, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10073', 1002, 73, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10073', 1005, 82, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10073', 1006, 73, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10073', 1007, 112, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10073', 1008, 172, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10075', 1000, 78, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10075', 1001, 78, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10075', 1002, 74, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10075', 1005, 83, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10075', 1006, 74, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10075', 1007, 113, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10075', 1008, 173, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10076', 1000, 79, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10076', 1001, 79, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10076', 1002, 75, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10076', 1005, 84, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10076', 1006, 75, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10076', 1007, 114, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10076', 1008, 174, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10077', 1000, 80, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10077', 1001, 80, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10077', 1002, 76, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10077', 1005, 85, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10077', 1006, 76, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10077', 1007, 115, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10077', 1008, 175, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10078', 1000, 81, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10078', 1001, 81, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10078', 1002, 77, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10078', 1005, 86, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10078', 1006, 77, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10078', 1007, 116, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10078', 1008, 176, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10079', 1000, 82, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10079', 1001, 82, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10079', 1002, 78, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10079', 1005, 87, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10079', 1006, 78, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10079', 1007, 117, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10079', 1008, 177, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10080', 1000, 83, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10080', 1001, 83, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10080', 1002, 79, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10080', 1005, 88, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10080', 1006, 79, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10080', 1007, 118, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10080', 1008, 178, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10081', 1000, 84, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10081', 1001, 84, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10081', 1002, 80, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10081', 1005, 89, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10081', 1006, 80, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10081', 1007, 119, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10081', 1008, 179, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10082', 1000, 85, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10082', 1001, 85, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10082', 1002, 81, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10082', 1005, 90, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10082', 1006, 81, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10082', 1007, 120, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10082', 1008, 180, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10083', 1000, 86, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10083', 1001, 86, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10083', 1002, 82, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10083', 1005, 91, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10083', 1006, 82, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10083', 1007, 121, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10083', 1008, 181, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10085', 1000, 87, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10085', 1001, 87, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10085', 1002, 83, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10085', 1005, 92, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10085', 1006, 83, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10085', 1007, 122, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10085', 1008, 182, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10086', 1000, 88, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10086', 1001, 88, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10086', 1002, 84, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10086', 1005, 93, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10086', 1006, 84, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10086', 1007, 123, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10086', 1008, 183, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10087', 1000, 89, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10087', 1001, 89, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10087', 1002, 85, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10087', 1005, 94, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10087', 1006, 85, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10087', 1007, 124, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10087', 1008, 184, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10088', 1000, 90, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10088', 1001, 90, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10088', 1002, 86, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10088', 1005, 95, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10088', 1006, 86, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10088', 1007, 125, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10088', 1008, 185, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10089', 1000, 91, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10089', 1001, 91, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10089', 1002, 87, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10089', 1005, 96, N'A')
GO
print 'Processed 600 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10089', 1006, 87, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10089', 1007, 126, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10089', 1008, 186, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10090', 1000, 92, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10090', 1001, 92, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10090', 1002, 88, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10090', 1005, 97, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10090', 1006, 88, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10090', 1007, 127, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10090', 1008, 187, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10091', 1000, 93, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10091', 1001, 93, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10091', 1002, 89, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10091', 1005, 98, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10091', 1006, 89, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10091', 1007, 128, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10091', 1008, 188, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10092', 1000, 94, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10092', 1001, 94, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10092', 1002, 90, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10092', 1005, 99, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10092', 1006, 90, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10092', 1007, 129, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10092', 1008, 189, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10093', 1000, 95, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10093', 1001, 95, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10093', 1002, 91, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10093', 1005, 100, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10093', 1006, 91, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10093', 1007, 130, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10093', 1008, 190, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10094', 1000, 96, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10094', 1001, 96, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10094', 1002, 92, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10094', 1005, 101, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10094', 1006, 92, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10094', 1007, 131, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10094', 1008, 191, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10095', 1000, 97, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10095', 1001, 97, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10095', 1002, 93, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10095', 1005, 102, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10095', 1006, 93, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10095', 1007, 132, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10095', 1008, 192, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10096', 1000, 98, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10096', 1001, 98, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10096', 1002, 94, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10096', 1005, 103, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10096', 1006, 94, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10096', 1007, 133, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10096', 1008, 193, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10097', 1000, 99, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10097', 1001, 99, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10097', 1002, 95, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10097', 1005, 104, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10097', 1006, 95, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10097', 1007, 134, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10097', 1008, 194, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10098', 1000, 100, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10098', 1001, 100, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10098', 1002, 96, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10098', 1005, 105, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10098', 1006, 96, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10098', 1007, 135, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10098', 1008, 195, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10099', 1000, 101, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10099', 1001, 101, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10099', 1002, 97, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10099', 1005, 106, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10099', 1006, 97, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10099', 1007, 136, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10099', 1008, 196, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10100', 1000, 102, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10100', 1001, 102, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10100', 1002, 98, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10100', 1005, 107, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10100', 1006, 98, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10100', 1007, 137, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10100', 1008, 197, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10101', 1000, 103, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10101', 1001, 103, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10101', 1002, 99, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10101', 1005, 108, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10101', 1006, 99, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10101', 1007, 138, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10101', 1008, 198, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10102', 1000, 104, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10102', 1001, 104, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10102', 1002, 100, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10102', 1005, 109, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10102', 1006, 100, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10102', 1007, 139, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10102', 1008, 199, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10103', 1000, 105, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10103', 1001, 105, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10103', 1002, 101, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10103', 1005, 110, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10103', 1006, 101, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10103', 1007, 140, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10103', 1008, 200, N'A')
GO
print 'Processed 700 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10104', 1000, 106, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10104', 1001, 106, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10104', 1002, 102, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10104', 1005, 111, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10104', 1006, 102, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10104', 1007, 141, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10104', 1008, 201, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10105', 1000, 107, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10105', 1001, 107, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10105', 1002, 103, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10105', 1005, 112, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10105', 1006, 103, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10105', 1007, 142, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10105', 1008, 202, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10106', 1000, 108, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10106', 1001, 108, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10106', 1002, 104, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10106', 1005, 113, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10106', 1006, 104, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10106', 1007, 143, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10106', 1008, 203, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10107', 1000, 109, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10107', 1001, 109, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10107', 1002, 105, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10107', 1005, 114, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10107', 1006, 105, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10107', 1007, 144, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10107', 1008, 204, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10108', 1000, 110, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10108', 1001, 110, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10108', 1002, 106, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10108', 1005, 115, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10108', 1006, 106, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10108', 1007, 145, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10108', 1008, 205, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10109', 1000, 111, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10109', 1001, 111, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10109', 1002, 107, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10109', 1005, 116, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10109', 1006, 107, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10109', 1007, 146, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10109', 1008, 206, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10110', 1000, 112, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10110', 1001, 112, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10110', 1002, 108, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10110', 1005, 117, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10110', 1006, 108, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10110', 1007, 147, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10110', 1008, 207, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10111', 1000, 113, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10111', 1001, 113, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10111', 1002, 109, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10111', 1005, 118, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10111', 1006, 109, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10111', 1007, 148, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10111', 1008, 208, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10112', 1000, 114, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10112', 1001, 114, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10112', 1002, 110, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10112', 1005, 119, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10112', 1006, 110, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10112', 1007, 149, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10112', 1008, 209, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10113', 1000, 115, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10113', 1001, 115, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10113', 1002, 111, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10113', 1005, 120, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10113', 1006, 111, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10113', 1007, 150, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10113', 1008, 210, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10114', 1000, 116, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10114', 1001, 116, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10114', 1002, 112, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10114', 1005, 121, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10114', 1006, 112, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10114', 1007, 151, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10114', 1008, 211, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10115', 1000, 117, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10115', 1001, 117, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10115', 1002, 113, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10115', 1005, 122, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10115', 1006, 113, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10115', 1007, 152, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10115', 1008, 212, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10116', 1000, 118, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10116', 1001, 118, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10116', 1002, 114, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10116', 1005, 123, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10116', 1006, 114, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10116', 1007, 153, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10116', 1008, 213, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10117', 1000, 119, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10117', 1001, 119, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10117', 1002, 115, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10117', 1005, 124, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10117', 1006, 115, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10117', 1007, 154, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10117', 1008, 214, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10118', 1000, 120, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10118', 1001, 120, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10118', 1002, 116, N'A')
GO
print 'Processed 800 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10118', 1005, 125, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10118', 1006, 116, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10118', 1007, 155, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10118', 1008, 215, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10119', 1000, 121, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10119', 1001, 121, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10119', 1002, 117, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10119', 1005, 126, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10119', 1006, 117, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10119', 1007, 156, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10119', 1008, 216, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10120', 1000, 122, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10120', 1001, 122, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10120', 1002, 118, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10120', 1005, 127, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10120', 1006, 118, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10120', 1007, 157, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10120', 1008, 217, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10121', 1000, 123, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10121', 1001, 123, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10121', 1002, 119, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10121', 1005, 128, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10121', 1006, 119, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10121', 1007, 158, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10121', 1008, 218, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10122', 1000, 124, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10122', 1001, 124, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10122', 1002, 120, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10122', 1005, 129, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10122', 1006, 120, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10122', 1007, 159, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10122', 1008, 219, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10123', 1000, 125, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10123', 1001, 125, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10123', 1002, 121, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10123', 1005, 130, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10123', 1006, 121, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10123', 1007, 160, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10123', 1008, 220, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10124', 1000, 126, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10124', 1001, 126, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10124', 1002, 122, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10124', 1005, 131, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10124', 1006, 122, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10124', 1007, 161, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10124', 1008, 221, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10125', 1000, 127, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10125', 1001, 127, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10125', 1002, 123, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10125', 1005, 132, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10125', 1006, 123, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10125', 1007, 162, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10125', 1008, 222, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10126', 1000, 128, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10126', 1001, 128, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10126', 1002, 124, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10126', 1005, 133, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10126', 1006, 124, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10126', 1007, 163, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10126', 1008, 223, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10127', 1000, 129, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10127', 1001, 129, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10127', 1002, 125, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10127', 1005, 134, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10127', 1006, 125, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10127', 1007, 164, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10127', 1008, 224, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10128', 1000, 130, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10128', 1001, 130, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10128', 1002, 126, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10128', 1005, 135, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10128', 1006, 126, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10128', 1007, 165, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10128', 1008, 225, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10129', 1000, 131, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10129', 1001, 131, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10129', 1002, 127, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10129', 1005, 136, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10129', 1006, 127, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10129', 1007, 166, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10129', 1008, 226, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10130', 1000, 132, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10130', 1001, 132, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10130', 1002, 128, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10130', 1005, 137, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10130', 1006, 128, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10130', 1007, 167, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10130', 1008, 227, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10131', 1000, 133, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10131', 1001, 133, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10131', 1002, 129, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10131', 1005, 138, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10131', 1006, 129, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10131', 1007, 168, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10131', 1008, 228, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10132', 1000, 134, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10132', 1001, 134, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10132', 1002, 130, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10132', 1005, 139, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10132', 1006, 130, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10132', 1007, 169, N'A')
GO
print 'Processed 900 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10132', 1008, 229, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10133', 1000, 135, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10133', 1001, 135, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10133', 1002, 131, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10133', 1005, 140, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10133', 1006, 131, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10133', 1007, 170, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10133', 1008, 230, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10134', 1000, 136, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10134', 1001, 136, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10134', 1002, 132, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10134', 1005, 141, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10134', 1006, 132, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10134', 1007, 171, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10134', 1008, 231, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10135', 1000, 137, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10135', 1001, 137, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10135', 1002, 133, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10135', 1005, 142, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10135', 1006, 133, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10135', 1007, 172, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10135', 1008, 232, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10136', 1000, 138, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10136', 1001, 138, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10136', 1002, 134, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10136', 1005, 143, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10136', 1006, 134, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10136', 1007, 173, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10136', 1008, 233, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10137', 1000, 139, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10137', 1001, 139, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10137', 1002, 135, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10137', 1005, 144, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10137', 1006, 135, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10137', 1007, 174, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10137', 1008, 234, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10138', 1000, 140, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10138', 1001, 140, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10138', 1002, 136, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10138', 1005, 145, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10138', 1006, 136, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10138', 1007, 175, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10138', 1008, 235, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10139', 1000, 141, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10139', 1001, 141, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10139', 1002, 137, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10139', 1005, 146, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10139', 1006, 137, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10139', 1007, 176, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10139', 1008, 236, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10140', 1000, 142, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10140', 1001, 142, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10140', 1002, 138, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10140', 1005, 147, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10140', 1006, 138, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10140', 1007, 177, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10140', 1008, 237, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10141', 1000, 143, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10141', 1001, 143, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10141', 1002, 139, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10141', 1005, 148, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10141', 1006, 139, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10141', 1007, 178, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10141', 1008, 238, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10142', 1000, 144, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10142', 1001, 144, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10142', 1002, 140, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10142', 1005, 149, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10142', 1006, 140, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10142', 1007, 179, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10142', 1008, 239, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10143', 1000, 145, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10143', 1001, 145, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10143', 1002, 141, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10143', 1005, 150, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10143', 1006, 141, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10143', 1007, 180, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10143', 1008, 240, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10144', 1000, 146, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10144', 1001, 146, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10144', 1002, 142, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10144', 1005, 151, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10144', 1006, 142, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10144', 1007, 181, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10144', 1008, 241, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10145', 1000, 147, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10145', 1001, 147, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10145', 1002, 143, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10145', 1005, 152, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10145', 1006, 143, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10145', 1007, 182, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10145', 1008, 242, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10146', 1000, 148, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10146', 1001, 148, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10146', 1002, 144, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10146', 1005, 153, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10146', 1006, 144, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10146', 1007, 183, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10146', 1008, 243, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10147', 1000, 149, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10147', 1001, 149, N'A')
GO
print 'Processed 1000 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10147', 1002, 145, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10147', 1005, 154, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10147', 1006, 145, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10147', 1007, 184, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10147', 1008, 244, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10148', 1000, 150, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10148', 1001, 150, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10148', 1002, 146, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10148', 1005, 155, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10148', 1006, 146, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10148', 1007, 185, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10148', 1008, 245, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10149', 1000, 151, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10149', 1001, 151, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10149', 1002, 147, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10149', 1005, 156, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10149', 1006, 147, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10149', 1007, 186, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10149', 1008, 246, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10150', 1000, 152, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10150', 1001, 152, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10150', 1002, 148, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10150', 1005, 157, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10150', 1006, 148, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10150', 1007, 187, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10150', 1008, 247, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10151', 1000, 153, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10151', 1001, 153, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10151', 1002, 149, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10151', 1005, 158, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10151', 1006, 149, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10151', 1007, 188, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10151', 1008, 248, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10152', 1000, 154, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10152', 1001, 154, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10152', 1002, 150, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10152', 1005, 159, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10152', 1006, 150, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10152', 1007, 189, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10152', 1008, 249, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10153', 1000, 155, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10153', 1001, 155, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10153', 1002, 151, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10153', 1005, 160, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10153', 1006, 151, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10153', 1007, 190, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10153', 1008, 250, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10154', 1000, 156, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10154', 1001, 156, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10154', 1002, 152, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10154', 1005, 161, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10154', 1006, 152, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10154', 1007, 191, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10154', 1008, 251, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10155', 1000, 157, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10155', 1001, 157, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10155', 1002, 153, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10155', 1005, 162, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10155', 1006, 153, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10155', 1007, 192, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10155', 1008, 252, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10156', 1000, 158, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10156', 1001, 158, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10156', 1002, 154, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10156', 1005, 163, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10156', 1006, 154, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10156', 1007, 193, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10156', 1008, 253, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10157', 1000, 159, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10157', 1001, 159, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10157', 1002, 155, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10157', 1005, 164, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10157', 1006, 155, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10157', 1007, 194, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10157', 1008, 254, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10158', 1000, 160, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10158', 1001, 160, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10158', 1002, 156, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10158', 1005, 165, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10158', 1006, 156, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10158', 1007, 195, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10158', 1008, 255, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10159', 1000, 161, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10159', 1001, 161, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10159', 1002, 157, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10159', 1005, 166, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10159', 1006, 157, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10159', 1007, 196, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10159', 1008, 256, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10160', 1000, 162, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10160', 1001, 162, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10160', 1002, 158, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10160', 1005, 167, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10160', 1006, 158, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10160', 1007, 197, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10160', 1008, 257, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10161', 1000, 163, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10161', 1001, 163, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10161', 1002, 159, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10161', 1005, 168, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10161', 1006, 159, N'A')
GO
print 'Processed 1100 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10161', 1007, 198, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10161', 1008, 258, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10162', 1000, 164, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10162', 1001, 164, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10162', 1002, 160, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10162', 1005, 169, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10162', 1006, 160, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10162', 1007, 199, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10162', 1008, 259, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10163', 1000, 165, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10163', 1001, 165, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10163', 1002, 161, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10163', 1005, 170, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10163', 1006, 161, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10163', 1007, 200, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10163', 1008, 260, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10164', 1000, 166, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10164', 1001, 166, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10164', 1002, 162, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10164', 1005, 171, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10164', 1006, 162, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10164', 1007, 201, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10164', 1008, 261, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10165', 1000, 167, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10165', 1001, 167, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10165', 1002, 163, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10165', 1005, 172, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10165', 1006, 163, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10165', 1007, 202, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10165', 1008, 262, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10166', 1000, 168, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10166', 1001, 168, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10166', 1002, 164, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10166', 1005, 173, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10166', 1006, 164, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10166', 1007, 203, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10166', 1008, 263, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10167', 1000, 169, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10167', 1001, 169, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10167', 1002, 165, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10167', 1005, 174, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10167', 1006, 165, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10167', 1007, 204, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10167', 1008, 264, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10168', 1000, 170, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10168', 1001, 170, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10168', 1002, 166, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10168', 1005, 175, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10168', 1006, 166, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10168', 1007, 205, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10168', 1008, 265, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10169', 1000, 171, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10169', 1001, 171, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10169', 1002, 167, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10169', 1005, 176, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10169', 1006, 167, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10169', 1007, 206, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10169', 1008, 266, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10170', 1000, 172, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10170', 1001, 172, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10170', 1002, 168, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10170', 1005, 177, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10170', 1006, 168, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10170', 1007, 207, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10170', 1008, 267, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10171', 1000, 173, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10171', 1001, 173, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10171', 1002, 169, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10171', 1005, 178, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10171', 1006, 169, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10171', 1007, 208, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10171', 1008, 268, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10172', 1000, 174, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10172', 1001, 174, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10172', 1002, 170, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10172', 1005, 179, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10172', 1006, 170, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10172', 1007, 209, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10172', 1008, 269, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10173', 1000, 175, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10173', 1001, 175, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10173', 1002, 171, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10173', 1005, 180, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10173', 1006, 171, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10173', 1007, 210, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10173', 1008, 270, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10174', 1000, 176, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10174', 1001, 176, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10174', 1002, 172, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10174', 1005, 181, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10174', 1006, 172, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10174', 1007, 211, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10174', 1008, 271, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10175', 1000, 177, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10175', 1001, 177, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10175', 1002, 173, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10175', 1005, 182, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10175', 1006, 173, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10175', 1007, 212, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10175', 1008, 272, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10176', 1000, 178, N'A')
GO
print 'Processed 1200 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10176', 1001, 178, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10176', 1002, 174, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10176', 1005, 183, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10176', 1006, 174, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10176', 1007, 213, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10176', 1008, 273, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10177', 1000, 179, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10177', 1001, 179, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10177', 1002, 175, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10177', 1005, 184, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10177', 1006, 175, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10177', 1007, 214, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10177', 1008, 274, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10178', 1000, 180, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10178', 1001, 180, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10178', 1002, 176, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10178', 1005, 185, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10178', 1006, 176, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10178', 1007, 215, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10178', 1008, 275, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10179', 1000, 181, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10179', 1001, 181, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10179', 1002, 177, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10179', 1005, 186, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10179', 1006, 177, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10179', 1007, 216, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10179', 1008, 276, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10180', 1000, 182, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10180', 1001, 182, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10180', 1002, 178, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10180', 1005, 187, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10180', 1006, 178, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10180', 1007, 217, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10180', 1008, 277, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10181', 1000, 183, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10181', 1001, 183, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10181', 1002, 179, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10181', 1005, 188, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10181', 1006, 179, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10181', 1007, 218, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10181', 1008, 278, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10182', 1000, 184, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10182', 1001, 184, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10182', 1002, 180, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10182', 1005, 189, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10182', 1006, 180, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10182', 1007, 219, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10182', 1008, 279, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10183', 1000, 185, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10183', 1001, 185, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10183', 1002, 181, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10183', 1005, 190, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10183', 1006, 181, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10183', 1007, 220, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10183', 1008, 280, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10184', 1000, 186, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10184', 1001, 186, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10184', 1002, 182, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10184', 1005, 191, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10184', 1006, 182, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10184', 1007, 221, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10184', 1008, 281, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10185', 1000, 187, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10185', 1001, 187, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10185', 1002, 183, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10185', 1005, 192, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10185', 1006, 183, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10185', 1007, 222, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10185', 1008, 282, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10186', 1000, 188, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10186', 1001, 188, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10186', 1002, 184, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10186', 1005, 193, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10186', 1006, 184, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10186', 1007, 223, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10186', 1008, 283, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10187', 1000, 189, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10187', 1001, 189, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10187', 1002, 185, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10187', 1005, 194, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10187', 1006, 185, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10187', 1007, 224, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10187', 1008, 284, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10188', 1000, 190, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10188', 1001, 190, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10188', 1002, 186, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10188', 1005, 195, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10188', 1006, 186, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10188', 1007, 225, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10188', 1008, 285, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10189', 1000, 191, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10189', 1001, 191, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10189', 1002, 187, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10189', 1005, 196, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10189', 1006, 187, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10189', 1007, 226, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10189', 1008, 286, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10190', 1000, 192, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10190', 1001, 192, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10190', 1002, 188, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10190', 1005, 197, N'A')
GO
print 'Processed 1300 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10190', 1006, 188, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10190', 1007, 227, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10190', 1008, 287, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10191', 1000, 193, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10191', 1001, 193, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10191', 1002, 189, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10191', 1005, 198, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10191', 1006, 189, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10191', 1007, 228, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10191', 1008, 288, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10192', 1000, 194, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10192', 1001, 194, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10192', 1002, 190, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10192', 1005, 199, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10192', 1006, 190, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10192', 1007, 229, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10192', 1008, 289, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10193', 1000, 195, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10193', 1001, 195, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10193', 1002, 191, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10193', 1005, 200, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10193', 1006, 191, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10193', 1007, 230, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10193', 1008, 290, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10194', 1000, 196, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10194', 1001, 196, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10194', 1002, 192, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10194', 1005, 201, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10194', 1006, 192, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10194', 1007, 231, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10194', 1008, 291, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10195', 1000, 197, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10195', 1001, 197, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10195', 1002, 193, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10195', 1005, 202, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10195', 1006, 193, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10195', 1007, 232, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10195', 1008, 292, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10196', 1000, 198, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10196', 1001, 198, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10196', 1002, 194, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10196', 1005, 203, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10196', 1006, 194, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10196', 1007, 233, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10196', 1008, 293, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10197', 1000, 199, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10197', 1001, 199, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10197', 1002, 195, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10197', 1005, 204, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10197', 1006, 195, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10197', 1007, 234, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10197', 1008, 294, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10198', 1000, 200, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10198', 1001, 200, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10198', 1002, 196, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10198', 1005, 205, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10198', 1006, 196, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10198', 1007, 235, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10198', 1008, 295, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10199', 1000, 201, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10199', 1001, 201, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10199', 1002, 197, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10199', 1005, 206, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10199', 1006, 197, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10199', 1007, 236, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10199', 1008, 296, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10200', 1000, 202, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10200', 1001, 202, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10200', 1002, 198, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10200', 1005, 207, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10200', 1006, 198, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10200', 1007, 237, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10200', 1008, 297, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10201', 1000, 203, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10201', 1001, 203, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10201', 1002, 199, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10201', 1005, 208, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10201', 1006, 199, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10201', 1007, 238, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10201', 1008, 298, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10202', 1000, 204, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10202', 1001, 204, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10202', 1002, 200, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10202', 1005, 209, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10202', 1006, 200, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10202', 1007, 239, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10202', 1008, 299, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10206', 1000, 205, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10206', 1001, 205, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10206', 1002, 201, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10206', 1005, 210, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10206', 1006, 201, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10206', 1007, 240, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10206', 1008, 300, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10207', 1000, 206, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10207', 1001, 206, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10207', 1002, 202, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10207', 1005, 211, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10207', 1006, 202, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10207', 1007, 241, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10207', 1008, 301, N'A')
GO
print 'Processed 1400 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10208', 1000, 207, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10208', 1001, 207, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10208', 1002, 203, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10208', 1005, 212, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10208', 1006, 203, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10208', 1007, 242, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10208', 1008, 302, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10209', 1000, 208, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10209', 1001, 208, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10209', 1002, 204, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10209', 1005, 213, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10209', 1006, 204, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10209', 1007, 243, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10209', 1008, 303, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10210', 1000, 209, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10210', 1001, 209, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10210', 1002, 205, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10210', 1005, 214, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10210', 1006, 205, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10210', 1007, 244, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10210', 1008, 304, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10211', 1000, 210, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10211', 1001, 210, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10211', 1002, 206, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10211', 1005, 215, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10211', 1006, 206, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10211', 1007, 245, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10211', 1008, 305, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10212', 1000, 211, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10212', 1001, 211, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10212', 1002, 207, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10212', 1005, 216, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10212', 1006, 207, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10212', 1007, 246, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10212', 1008, 306, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10215', 1000, 212, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10215', 1001, 212, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10215', 1002, 208, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10215', 1005, 217, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10215', 1006, 208, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10215', 1007, 247, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10215', 1008, 307, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10216', 1000, 213, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10216', 1001, 213, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10216', 1002, 209, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10216', 1005, 218, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10216', 1006, 209, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10216', 1007, 248, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10216', 1008, 308, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10217', 1000, 214, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10217', 1001, 214, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10217', 1002, 210, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10217', 1005, 219, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10217', 1006, 210, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10217', 1007, 249, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10217', 1008, 309, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10218', 1000, 215, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10218', 1001, 215, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10218', 1002, 211, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10218', 1005, 220, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10218', 1006, 211, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10218', 1007, 250, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10218', 1008, 310, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10219', 1000, 216, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10219', 1001, 216, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10219', 1002, 212, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10219', 1005, 221, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10219', 1006, 212, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10219', 1007, 251, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10219', 1008, 311, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10220', 1000, 217, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10220', 1001, 217, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10220', 1002, 213, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10220', 1005, 222, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10220', 1006, 213, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10220', 1007, 252, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10220', 1008, 312, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10221', 1000, 218, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10221', 1001, 218, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10221', 1002, 214, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10221', 1005, 223, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10221', 1006, 214, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10221', 1007, 253, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10221', 1008, 313, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10222', 1000, 219, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10222', 1001, 219, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10222', 1002, 215, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10222', 1005, 224, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10222', 1006, 215, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10222', 1007, 254, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10222', 1008, 314, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10223', 1000, 220, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10223', 1001, 220, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10223', 1002, 216, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10223', 1005, 225, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10223', 1006, 216, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10223', 1007, 255, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10223', 1008, 315, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10224', 1000, 221, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10224', 1001, 221, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10224', 1002, 217, N'A')
GO
print 'Processed 1500 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10224', 1005, 226, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10224', 1006, 217, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10224', 1007, 256, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10224', 1008, 316, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10225', 1000, 222, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10225', 1001, 222, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10225', 1002, 218, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10225', 1005, 227, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10225', 1006, 218, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10225', 1007, 257, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10225', 1008, 317, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10226', 1000, 223, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10226', 1001, 223, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10226', 1002, 219, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10226', 1005, 228, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10226', 1006, 219, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10226', 1007, 258, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10226', 1008, 318, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10227', 1000, 224, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10227', 1001, 224, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10227', 1002, 220, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10227', 1005, 229, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10227', 1006, 220, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10227', 1007, 259, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10227', 1008, 319, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10228', 1000, 225, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10228', 1001, 225, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10228', 1002, 221, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10228', 1005, 230, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10228', 1006, 221, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10228', 1007, 260, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10228', 1008, 320, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10229', 1000, 226, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10229', 1001, 226, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10229', 1002, 222, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10229', 1005, 231, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10229', 1006, 222, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10229', 1007, 261, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10229', 1008, 321, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10230', 1000, 227, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10230', 1001, 227, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10230', 1002, 223, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10230', 1005, 232, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10230', 1006, 223, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10230', 1007, 262, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10230', 1008, 322, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10231', 1000, 228, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10231', 1001, 228, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10231', 1002, 224, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10231', 1005, 233, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10231', 1006, 224, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10231', 1007, 263, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10231', 1008, 323, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10232', 1000, 229, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10232', 1001, 229, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10232', 1002, 225, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10232', 1005, 234, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10232', 1006, 225, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10232', 1007, 264, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10232', 1008, 324, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10233', 1000, 230, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10233', 1001, 230, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10233', 1002, 226, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10233', 1005, 235, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10233', 1006, 226, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10233', 1007, 265, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10233', 1008, 325, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10234', 1000, 231, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10234', 1001, 231, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10234', 1002, 227, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10234', 1005, 236, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10234', 1006, 227, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10234', 1007, 266, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10234', 1008, 326, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10235', 1000, 232, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10235', 1001, 232, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10235', 1002, 228, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10235', 1005, 237, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10235', 1006, 228, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10235', 1007, 267, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10235', 1008, 327, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10236', 1000, 233, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10236', 1001, 233, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10236', 1002, 229, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10236', 1005, 238, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10236', 1006, 229, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10236', 1007, 268, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10236', 1008, 328, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10237', 1000, 234, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10237', 1001, 234, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10237', 1002, 230, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10237', 1005, 239, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10237', 1006, 230, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10237', 1007, 269, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10237', 1008, 329, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10238', 1000, 235, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10238', 1001, 235, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10238', 1002, 231, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10238', 1005, 240, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10238', 1006, 231, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10238', 1007, 270, N'A')
GO
print 'Processed 1600 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10238', 1008, 330, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10239', 1000, 236, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10239', 1001, 236, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10239', 1002, 232, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10239', 1005, 241, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10239', 1006, 232, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10239', 1007, 271, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10239', 1008, 331, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10240', 1000, 237, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10240', 1001, 237, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10240', 1002, 233, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10240', 1005, 242, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10240', 1006, 233, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10240', 1007, 272, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10240', 1008, 332, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10241', 1000, 238, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10241', 1001, 238, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10241', 1002, 234, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10241', 1005, 243, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10241', 1006, 234, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10241', 1007, 273, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10241', 1008, 333, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10242', 1000, 239, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10242', 1001, 239, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10242', 1002, 235, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10242', 1005, 244, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10242', 1006, 235, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10242', 1007, 274, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10242', 1008, 334, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10243', 1000, 240, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10243', 1001, 240, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10243', 1002, 236, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10243', 1005, 245, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10243', 1006, 236, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10243', 1007, 275, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10243', 1008, 335, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10244', 1000, 241, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10244', 1001, 241, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10244', 1002, 237, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10244', 1005, 246, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10244', 1006, 237, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10244', 1007, 276, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10244', 1008, 336, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10245', 1000, 242, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10245', 1001, 242, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10245', 1002, 238, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10245', 1005, 247, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10245', 1006, 238, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10245', 1007, 277, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10245', 1008, 337, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10246', 1000, 243, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10246', 1001, 243, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10246', 1002, 239, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10246', 1005, 248, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10246', 1006, 239, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10246', 1007, 278, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10246', 1008, 338, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10247', 1000, 244, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10247', 1001, 244, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10247', 1002, 240, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10247', 1005, 249, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10247', 1006, 240, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10247', 1007, 279, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10247', 1008, 339, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10248', 1000, 245, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10248', 1001, 245, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10248', 1002, 241, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10248', 1005, 250, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10248', 1006, 241, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10248', 1007, 280, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10248', 1008, 340, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10249', 1000, 246, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10249', 1001, 246, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10249', 1002, 242, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10249', 1005, 251, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10249', 1006, 242, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10249', 1007, 281, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10249', 1008, 341, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10250', 1000, 247, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10250', 1001, 247, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10250', 1002, 243, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10250', 1005, 252, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10250', 1006, 243, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10250', 1007, 282, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10250', 1008, 342, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10251', 1000, 248, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10251', 1001, 248, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10251', 1002, 244, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10251', 1005, 253, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10251', 1006, 244, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10251', 1007, 283, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10251', 1008, 343, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10252', 1000, 249, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10252', 1001, 249, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10252', 1002, 245, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10252', 1005, 254, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10252', 1006, 245, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10252', 1007, 284, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10252', 1008, 344, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10253', 1000, 250, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10253', 1001, 250, N'A')
GO
print 'Processed 1700 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10253', 1002, 246, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10253', 1005, 255, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10253', 1006, 246, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10253', 1007, 285, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10253', 1008, 345, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10254', 1000, 251, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10254', 1001, 251, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10254', 1002, 247, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10254', 1005, 256, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10254', 1006, 247, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10254', 1007, 286, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10254', 1008, 346, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10255', 1000, 252, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10255', 1001, 252, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10255', 1002, 248, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10255', 1005, 257, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10255', 1006, 248, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10255', 1007, 287, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10255', 1008, 347, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10256', 1000, 253, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10256', 1001, 253, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10256', 1002, 249, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10256', 1005, 258, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10256', 1006, 249, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10256', 1007, 288, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10256', 1008, 348, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10257', 1000, 254, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10257', 1001, 254, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10257', 1002, 250, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10257', 1005, 259, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10257', 1006, 250, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10257', 1007, 289, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10257', 1008, 349, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10258', 1000, 255, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10258', 1001, 255, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10258', 1002, 251, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10258', 1005, 260, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10258', 1006, 251, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10258', 1007, 290, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10258', 1008, 350, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10259', 1000, 256, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10259', 1001, 256, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10259', 1002, 252, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10259', 1005, 261, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10259', 1006, 252, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10259', 1007, 291, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10259', 1008, 351, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10260', 1000, 257, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10260', 1001, 257, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10260', 1002, 253, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10260', 1005, 262, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10260', 1006, 253, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10260', 1007, 292, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10260', 1008, 352, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10261', 1000, 258, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10261', 1001, 258, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10261', 1002, 254, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10261', 1005, 263, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10261', 1006, 254, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10261', 1007, 293, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10261', 1008, 353, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10262', 1000, 259, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10262', 1001, 259, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10262', 1002, 255, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10262', 1005, 264, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10262', 1006, 255, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10262', 1007, 294, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10262', 1008, 354, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10263', 1000, 260, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10263', 1001, 260, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10263', 1002, 256, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10263', 1005, 265, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10263', 1006, 256, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10263', 1007, 295, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10263', 1008, 355, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10264', 1000, 261, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10264', 1001, 261, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10264', 1002, 257, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10264', 1005, 266, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10264', 1006, 257, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10264', 1007, 296, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10264', 1008, 356, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10265', 1000, 262, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10265', 1001, 262, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10265', 1002, 258, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10265', 1005, 267, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10265', 1006, 258, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10265', 1007, 297, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10265', 1008, 357, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10266', 1000, 263, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10266', 1001, 263, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10266', 1002, 259, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10266', 1005, 268, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10266', 1006, 259, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10266', 1007, 298, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10266', 1008, 358, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10267', 1000, 264, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10267', 1001, 264, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10267', 1002, 260, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10267', 1005, 269, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10267', 1006, 260, N'A')
GO
print 'Processed 1800 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10267', 1007, 299, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10267', 1008, 359, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10268', 1000, 265, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10268', 1001, 265, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10268', 1002, 261, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10268', 1005, 270, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10268', 1006, 261, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10268', 1007, 300, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10268', 1008, 360, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10269', 1000, 266, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10269', 1001, 266, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10269', 1002, 262, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10269', 1005, 271, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10269', 1006, 262, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10269', 1007, 301, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10269', 1008, 361, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10270', 1000, 267, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10270', 1001, 267, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10270', 1002, 263, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10270', 1005, 272, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10270', 1006, 263, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10270', 1007, 302, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10270', 1008, 362, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10271', 1000, 268, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10271', 1001, 268, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10271', 1002, 264, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10271', 1005, 273, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10271', 1006, 264, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10271', 1007, 303, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10271', 1008, 363, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10272', 1000, 269, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10272', 1001, 269, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10272', 1002, 265, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10272', 1005, 274, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10272', 1006, 265, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10272', 1007, 304, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10272', 1008, 364, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10273', 1000, 270, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10273', 1001, 270, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10273', 1002, 266, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10273', 1005, 275, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10273', 1006, 266, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10273', 1007, 305, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10273', 1008, 365, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10274', 1000, 271, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10274', 1001, 271, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10274', 1002, 267, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10274', 1005, 276, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10274', 1006, 267, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10274', 1007, 306, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10274', 1008, 366, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10275', 1000, 272, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10275', 1001, 272, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10275', 1002, 268, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10275', 1005, 277, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10275', 1006, 268, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10275', 1007, 307, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10275', 1008, 367, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10276', 1000, 273, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10276', 1001, 273, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10276', 1002, 269, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10276', 1005, 278, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10276', 1006, 269, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10276', 1007, 308, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10276', 1008, 368, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10277', 1000, 274, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10277', 1001, 274, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10277', 1002, 270, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10277', 1005, 279, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10277', 1006, 270, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10277', 1007, 309, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10277', 1008, 369, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10278', 1000, 275, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10278', 1001, 275, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10278', 1002, 271, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10278', 1005, 280, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10278', 1006, 271, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10278', 1007, 310, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10278', 1008, 370, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10279', 1000, 276, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10279', 1001, 276, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10279', 1002, 272, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10279', 1005, 281, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10279', 1006, 272, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10279', 1007, 311, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10279', 1008, 371, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10280', 1000, 277, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10280', 1001, 277, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10280', 1002, 273, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10280', 1005, 282, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10280', 1006, 273, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10280', 1007, 312, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10280', 1008, 372, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10281', 1000, 278, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10281', 1001, 278, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10281', 1002, 274, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10281', 1005, 283, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10281', 1006, 274, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10281', 1007, 313, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10281', 1008, 373, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10282', 1000, 279, N'A')
GO
print 'Processed 1900 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10282', 1001, 279, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10282', 1002, 275, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10282', 1005, 284, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10282', 1006, 275, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10282', 1007, 314, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10282', 1008, 374, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10283', 1000, 280, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10283', 1001, 280, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10283', 1002, 276, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10283', 1005, 285, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10283', 1006, 276, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10283', 1007, 315, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10283', 1008, 375, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10284', 1000, 281, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10284', 1001, 281, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10284', 1002, 277, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10284', 1005, 286, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10284', 1006, 277, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10284', 1007, 316, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10284', 1008, 376, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10285', 1000, 282, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10285', 1001, 282, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10285', 1002, 278, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10285', 1005, 287, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10285', 1006, 278, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10285', 1007, 317, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10285', 1008, 377, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10286', 1000, 283, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10286', 1001, 283, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10286', 1002, 279, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10286', 1005, 288, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10286', 1006, 279, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10286', 1007, 318, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10286', 1008, 378, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10287', 1000, 284, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10287', 1001, 284, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10287', 1002, 280, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10287', 1005, 289, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10287', 1006, 280, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10287', 1007, 319, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10287', 1008, 379, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10288', 1000, 285, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10288', 1001, 285, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10288', 1002, 281, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10288', 1005, 290, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10288', 1006, 281, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10288', 1007, 320, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10288', 1008, 380, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10289', 1000, 286, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10289', 1001, 286, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10289', 1002, 282, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10289', 1005, 291, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10289', 1006, 282, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10289', 1007, 321, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10289', 1008, 381, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10290', 1000, 287, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10290', 1001, 287, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10290', 1002, 283, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10290', 1005, 292, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10290', 1006, 283, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10290', 1007, 322, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10290', 1008, 382, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10291', 1000, 288, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10291', 1001, 288, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10291', 1002, 284, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10291', 1005, 293, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10291', 1006, 284, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10291', 1007, 323, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10291', 1008, 383, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10292', 1000, 289, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10292', 1001, 289, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10292', 1002, 285, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10292', 1005, 294, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10292', 1006, 285, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10292', 1007, 324, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10292', 1008, 384, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10293', 1000, 290, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10293', 1001, 290, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10293', 1002, 286, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10293', 1005, 295, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10293', 1006, 286, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10293', 1007, 325, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10293', 1008, 385, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10294', 1000, 291, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10294', 1001, 291, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10294', 1002, 287, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10294', 1005, 296, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10294', 1006, 287, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10294', 1007, 326, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10294', 1008, 386, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10295', 1000, 292, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10295', 1001, 292, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10295', 1002, 288, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10295', 1005, 297, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10295', 1006, 288, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10295', 1007, 327, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10295', 1008, 387, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10296', 1000, 293, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10296', 1001, 293, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10296', 1002, 289, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10296', 1005, 298, N'A')
GO
print 'Processed 2000 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10296', 1006, 289, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10296', 1007, 328, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10296', 1008, 388, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10297', 1000, 294, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10297', 1001, 294, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10297', 1002, 290, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10297', 1005, 299, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10297', 1006, 290, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10297', 1007, 329, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10297', 1008, 389, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10298', 1000, 295, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10298', 1001, 295, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10298', 1002, 291, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10298', 1005, 300, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10298', 1006, 291, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10298', 1007, 330, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10298', 1008, 390, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10299', 1000, 296, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10299', 1001, 296, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10299', 1002, 292, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10299', 1005, 301, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10299', 1006, 292, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10299', 1007, 331, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10299', 1008, 391, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10300', 1000, 297, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10300', 1001, 297, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10300', 1002, 293, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10300', 1005, 302, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10300', 1006, 293, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10300', 1007, 332, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10300', 1008, 392, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10301', 1000, 298, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10301', 1001, 298, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10301', 1002, 294, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10301', 1005, 303, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10301', 1006, 294, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10301', 1007, 333, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10301', 1008, 393, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10302', 1000, 299, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10302', 1001, 299, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10302', 1002, 295, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10302', 1005, 304, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10302', 1006, 295, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10302', 1007, 334, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10302', 1008, 394, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10303', 1000, 300, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10303', 1001, 300, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10303', 1002, 296, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10303', 1005, 305, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10303', 1006, 296, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10303', 1007, 335, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10303', 1008, 395, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10304', 1000, 301, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10304', 1001, 301, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10304', 1002, 297, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10304', 1005, 306, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10304', 1006, 297, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10304', 1007, 336, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10304', 1008, 396, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10305', 1000, 302, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10305', 1001, 302, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10305', 1002, 298, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10305', 1005, 307, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10305', 1006, 298, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10305', 1007, 337, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10305', 1008, 397, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10306', 1000, 303, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10306', 1001, 303, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10306', 1002, 299, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10306', 1005, 308, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10306', 1006, 299, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10306', 1007, 338, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10306', 1008, 398, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10307', 1000, 304, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10307', 1001, 304, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10307', 1002, 300, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10307', 1005, 309, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10307', 1006, 300, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10307', 1007, 339, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10307', 1008, 399, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10308', 1000, 305, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10308', 1001, 305, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10308', 1002, 301, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10308', 1005, 310, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10308', 1006, 301, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10308', 1007, 340, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10308', 1008, 400, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10309', 1000, 306, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10309', 1001, 306, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10309', 1002, 302, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10309', 1005, 311, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10309', 1006, 302, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10309', 1007, 341, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10309', 1008, 401, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10310', 1000, 307, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10310', 1001, 307, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10310', 1002, 303, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10310', 1005, 312, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10310', 1006, 303, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10310', 1007, 342, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10310', 1008, 402, N'A')
GO
print 'Processed 2100 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10311', 1000, 308, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10311', 1001, 308, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10311', 1002, 304, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10311', 1005, 313, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10311', 1006, 304, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10311', 1007, 343, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10311', 1008, 403, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10312', 1000, 309, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10312', 1001, 309, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10312', 1002, 305, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10312', 1005, 314, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10312', 1006, 305, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10312', 1007, 344, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10312', 1008, 404, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10313', 1000, 310, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10313', 1001, 310, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10313', 1002, 306, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10313', 1005, 315, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10313', 1006, 306, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10313', 1007, 345, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10313', 1008, 405, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10314', 1000, 311, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10314', 1001, 311, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10314', 1002, 307, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10314', 1005, 316, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10314', 1006, 307, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10314', 1007, 346, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10314', 1008, 406, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10315', 1000, 312, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10315', 1001, 312, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10315', 1002, 308, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10315', 1005, 317, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10315', 1006, 308, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10315', 1007, 347, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10315', 1008, 407, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10316', 1000, 313, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10316', 1001, 313, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10316', 1002, 309, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10316', 1005, 318, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10316', 1006, 309, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10316', 1007, 348, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10316', 1008, 408, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10317', 1000, 314, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10317', 1001, 314, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10317', 1002, 310, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10317', 1005, 319, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10317', 1006, 310, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10317', 1007, 349, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10317', 1008, 409, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10318', 1000, 315, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10318', 1001, 315, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10318', 1002, 311, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10318', 1005, 320, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10318', 1006, 311, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10318', 1007, 350, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10318', 1008, 410, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10319', 1000, 316, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10319', 1001, 316, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10319', 1002, 312, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10319', 1005, 321, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10319', 1006, 312, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10319', 1007, 351, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10319', 1008, 411, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10320', 1000, 317, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10320', 1001, 317, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10320', 1002, 313, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10320', 1005, 322, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10320', 1006, 313, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10320', 1007, 352, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10320', 1008, 412, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10321', 1000, 318, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10321', 1001, 318, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10321', 1002, 314, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10321', 1005, 323, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10321', 1006, 314, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10321', 1007, 353, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10321', 1008, 413, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10322', 1000, 319, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10322', 1001, 319, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10322', 1002, 315, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10322', 1005, 324, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10322', 1006, 315, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10322', 1007, 354, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10322', 1008, 414, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10323', 1000, 320, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10323', 1001, 320, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10323', 1002, 316, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10323', 1005, 325, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10323', 1006, 316, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10323', 1007, 355, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10323', 1008, 415, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10324', 1000, 321, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10324', 1001, 321, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10324', 1002, 317, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10324', 1005, 326, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10324', 1006, 317, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10324', 1007, 356, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10324', 1008, 416, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10325', 1000, 322, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10325', 1001, 322, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10325', 1002, 318, N'A')
GO
print 'Processed 2200 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10325', 1005, 327, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10325', 1006, 318, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10325', 1007, 357, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10325', 1008, 417, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10326', 1000, 323, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10326', 1001, 323, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10326', 1002, 319, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10326', 1005, 328, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10326', 1006, 319, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10326', 1007, 358, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10326', 1008, 418, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10327', 1000, 324, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10327', 1001, 324, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10327', 1002, 320, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10327', 1005, 329, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10327', 1006, 320, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10327', 1007, 359, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10327', 1008, 419, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10328', 1000, 325, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10328', 1001, 325, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10328', 1002, 321, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10328', 1005, 330, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10328', 1006, 321, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10328', 1007, 360, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10328', 1008, 420, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10329', 1000, 326, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10329', 1001, 326, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10329', 1002, 322, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10329', 1005, 331, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10329', 1006, 322, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10329', 1007, 361, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10329', 1008, 421, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10330', 1000, 327, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10330', 1001, 327, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10330', 1002, 323, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10330', 1005, 332, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10330', 1006, 323, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10330', 1007, 362, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10330', 1008, 422, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10331', 1000, 328, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10331', 1001, 328, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10331', 1002, 324, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10331', 1005, 333, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10331', 1006, 324, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10331', 1007, 363, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10331', 1008, 423, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10332', 1000, 329, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10332', 1001, 329, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10332', 1002, 325, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10332', 1005, 334, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10332', 1006, 325, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10332', 1007, 364, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10332', 1008, 424, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10333', 1000, 330, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10333', 1001, 330, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10333', 1002, 326, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10333', 1005, 335, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10333', 1006, 326, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10333', 1007, 365, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10333', 1008, 425, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10334', 1000, 331, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10334', 1001, 331, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10334', 1002, 327, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10334', 1005, 336, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10334', 1006, 327, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10334', 1007, 366, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10334', 1008, 426, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10335', 1000, 332, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10335', 1001, 332, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10335', 1002, 328, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10335', 1005, 337, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10335', 1006, 328, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10335', 1007, 367, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10335', 1008, 427, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10336', 1000, 333, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10336', 1001, 333, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10336', 1002, 329, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10336', 1005, 338, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10336', 1006, 329, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10336', 1007, 368, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10336', 1008, 428, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10337', 1000, 334, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10337', 1001, 334, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10337', 1002, 330, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10337', 1005, 339, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10337', 1006, 330, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10337', 1007, 369, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10337', 1008, 429, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10338', 1000, 335, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10338', 1001, 335, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10338', 1002, 331, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10338', 1005, 340, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10338', 1006, 331, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10338', 1007, 370, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10338', 1008, 430, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10339', 1000, 336, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10339', 1001, 336, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10339', 1002, 332, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10339', 1005, 341, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10339', 1006, 332, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10339', 1007, 371, N'A')
GO
print 'Processed 2300 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10339', 1008, 431, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10340', 1000, 337, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10340', 1001, 337, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10340', 1002, 333, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10340', 1005, 342, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10340', 1006, 333, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10340', 1007, 372, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10340', 1008, 432, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10341', 1000, 338, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10341', 1001, 338, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10341', 1002, 334, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10341', 1005, 343, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10341', 1006, 334, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10341', 1007, 373, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10341', 1008, 433, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10342', 1000, 339, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10342', 1001, 339, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10342', 1002, 335, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10342', 1005, 344, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10342', 1006, 335, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10342', 1007, 374, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10342', 1008, 434, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10343', 1000, 340, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10343', 1001, 340, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10343', 1002, 336, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10343', 1005, 345, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10343', 1006, 336, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10343', 1007, 375, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10343', 1008, 435, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10344', 1000, 341, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10344', 1001, 341, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10344', 1002, 337, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10344', 1005, 346, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10344', 1006, 337, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10344', 1007, 376, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10344', 1008, 436, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10345', 1000, 342, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10345', 1001, 342, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10345', 1002, 338, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10345', 1005, 347, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10345', 1006, 338, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10345', 1007, 377, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10345', 1008, 437, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10346', 1000, 343, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10346', 1001, 343, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10346', 1002, 339, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10346', 1005, 348, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10346', 1006, 339, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10346', 1007, 378, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10346', 1008, 438, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10347', 1000, 344, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10347', 1001, 344, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10347', 1002, 340, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10347', 1005, 349, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10347', 1006, 340, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10347', 1007, 379, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10347', 1008, 439, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10348', 1000, 345, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10348', 1001, 345, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10348', 1002, 341, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10348', 1005, 350, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10348', 1006, 341, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10348', 1007, 380, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10348', 1008, 440, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10349', 1000, 346, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10349', 1001, 346, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10349', 1002, 342, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10349', 1005, 351, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10349', 1006, 342, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10349', 1007, 381, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10349', 1008, 441, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10350', 1000, 347, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10350', 1001, 347, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10350', 1002, 343, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10350', 1005, 352, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10350', 1006, 343, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10350', 1007, 382, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10350', 1008, 442, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10351', 1000, 348, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10351', 1001, 348, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10351', 1002, 344, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10351', 1005, 353, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10351', 1006, 344, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10351', 1007, 383, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10351', 1008, 443, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10352', 1000, 349, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10352', 1001, 349, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10352', 1002, 345, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10352', 1005, 354, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10352', 1006, 345, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10352', 1007, 384, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10352', 1008, 444, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10353', 1000, 350, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10353', 1001, 350, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10353', 1002, 346, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10353', 1005, 355, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10353', 1006, 346, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10353', 1007, 385, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10353', 1008, 445, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10354', 1000, 351, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10354', 1001, 351, N'A')
GO
print 'Processed 2400 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10354', 1002, 347, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10354', 1005, 356, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10354', 1006, 347, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10354', 1007, 386, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10354', 1008, 446, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10355', 1000, 352, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10355', 1001, 352, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10355', 1002, 348, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10355', 1005, 357, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10355', 1006, 348, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10355', 1007, 387, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10355', 1008, 447, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10356', 1000, 353, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10356', 1001, 353, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10356', 1002, 349, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10356', 1005, 358, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10356', 1006, 349, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10356', 1007, 388, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10356', 1008, 448, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10357', 1000, 354, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10357', 1001, 354, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10357', 1002, 350, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10357', 1005, 359, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10357', 1006, 350, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10357', 1007, 389, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10357', 1008, 449, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10358', 1000, 355, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10358', 1001, 355, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10358', 1002, 351, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10358', 1005, 360, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10358', 1006, 351, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10358', 1007, 390, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10358', 1008, 450, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10359', 1000, 356, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10359', 1001, 356, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10359', 1002, 352, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10359', 1005, 361, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10359', 1006, 352, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10359', 1007, 391, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10359', 1008, 451, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10360', 1000, 357, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10360', 1001, 357, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10360', 1002, 353, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10360', 1005, 362, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10360', 1006, 353, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10360', 1007, 392, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10360', 1008, 452, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10361', 1000, 358, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10361', 1001, 358, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10361', 1002, 354, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10361', 1005, 363, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10361', 1006, 354, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10361', 1007, 393, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10361', 1008, 453, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10362', 1000, 359, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10362', 1001, 359, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10362', 1002, 355, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10362', 1005, 364, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10362', 1006, 355, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10362', 1007, 394, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10362', 1008, 454, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10363', 1000, 360, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10363', 1001, 360, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10363', 1002, 356, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10363', 1005, 365, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10363', 1006, 356, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10363', 1007, 395, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10363', 1008, 455, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10364', 1000, 361, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10364', 1001, 361, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10364', 1002, 357, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10364', 1005, 366, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10364', 1006, 357, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10364', 1007, 396, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10364', 1008, 456, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10365', 1000, 362, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10365', 1001, 362, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10365', 1002, 358, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10365', 1005, 367, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10365', 1006, 358, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10365', 1007, 397, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10365', 1008, 457, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10366', 1000, 363, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10366', 1001, 363, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10366', 1002, 359, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10366', 1005, 368, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10366', 1006, 359, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10366', 1007, 398, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10366', 1008, 458, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10367', 1000, 364, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10367', 1001, 364, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10367', 1002, 360, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10367', 1005, 369, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10367', 1006, 360, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10367', 1007, 399, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10367', 1008, 459, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10368', 1000, 365, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10368', 1001, 365, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10368', 1002, 361, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10368', 1005, 370, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10368', 1006, 361, N'A')
GO
print 'Processed 2500 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10368', 1007, 400, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10368', 1008, 460, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10369', 1000, 366, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10369', 1001, 366, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10369', 1002, 362, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10369', 1005, 371, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10369', 1006, 362, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10369', 1007, 401, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10369', 1008, 461, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10370', 1000, 367, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10370', 1001, 367, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10370', 1002, 363, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10370', 1005, 372, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10370', 1006, 363, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10370', 1007, 402, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10370', 1008, 462, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10371', 1000, 368, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10371', 1001, 368, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10371', 1002, 364, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10371', 1005, 373, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10371', 1006, 364, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10371', 1007, 403, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10371', 1008, 463, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10372', 1000, 369, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10372', 1001, 369, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10372', 1002, 365, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10372', 1005, 374, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10372', 1006, 365, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10372', 1007, 404, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10372', 1008, 464, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10373', 1000, 370, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10373', 1001, 370, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10373', 1002, 366, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10373', 1005, 375, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10373', 1006, 366, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10373', 1007, 405, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10373', 1008, 465, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10374', 1000, 371, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10374', 1001, 371, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10374', 1002, 367, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10374', 1005, 376, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10374', 1006, 367, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10374', 1007, 406, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10374', 1008, 466, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10375', 1000, 372, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10375', 1001, 372, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10375', 1002, 368, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10375', 1005, 377, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10375', 1006, 368, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10375', 1007, 407, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10375', 1008, 467, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10376', 1000, 373, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10376', 1001, 373, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10376', 1002, 369, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10376', 1005, 378, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10376', 1006, 369, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10376', 1007, 408, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10376', 1008, 468, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10377', 1000, 374, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10377', 1001, 374, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10377', 1002, 370, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10377', 1005, 379, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10377', 1006, 370, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10377', 1007, 409, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10377', 1008, 469, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10378', 1000, 375, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10378', 1001, 375, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10378', 1002, 371, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10378', 1005, 380, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10378', 1006, 371, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10378', 1007, 410, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10378', 1008, 470, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10379', 1000, 376, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10379', 1001, 376, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10379', 1002, 372, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10379', 1005, 381, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10379', 1006, 372, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10379', 1007, 411, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10379', 1008, 471, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10380', 1000, 377, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10380', 1001, 377, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10380', 1002, 373, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10380', 1005, 382, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10380', 1006, 373, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10380', 1007, 412, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10380', 1008, 472, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10381', 1000, 378, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10381', 1001, 378, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10381', 1002, 374, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10381', 1005, 383, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10381', 1006, 374, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10381', 1007, 413, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10381', 1008, 473, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10382', 1000, 379, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10382', 1001, 379, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10382', 1002, 375, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10382', 1005, 384, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10382', 1006, 375, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10382', 1007, 414, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10382', 1008, 474, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10383', 1000, 380, N'A')
GO
print 'Processed 2600 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10383', 1001, 380, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10383', 1002, 376, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10383', 1005, 385, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10383', 1006, 376, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10383', 1007, 415, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10383', 1008, 475, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10384', 1000, 381, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10384', 1001, 381, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10384', 1002, 377, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10384', 1005, 386, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10384', 1006, 377, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10384', 1007, 416, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10384', 1008, 476, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10385', 1000, 382, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10385', 1001, 382, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10385', 1002, 378, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10385', 1005, 387, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10385', 1006, 378, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10385', 1007, 417, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10385', 1008, 477, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10386', 1000, 383, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10386', 1001, 383, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10386', 1002, 379, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10386', 1005, 388, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10386', 1006, 379, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10386', 1007, 418, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10386', 1008, 478, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10387', 1000, 384, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10387', 1001, 384, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10387', 1002, 380, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10387', 1005, 389, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10387', 1006, 380, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10387', 1007, 419, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10387', 1008, 479, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10388', 1000, 385, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10388', 1001, 385, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10388', 1002, 381, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10388', 1005, 390, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10388', 1006, 381, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10388', 1007, 420, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10388', 1008, 480, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10389', 1000, 386, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10389', 1001, 386, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10389', 1002, 382, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10389', 1005, 391, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10389', 1006, 382, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10389', 1007, 421, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10389', 1008, 481, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10390', 1000, 387, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10390', 1001, 387, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10390', 1002, 383, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10390', 1005, 392, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10390', 1006, 383, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10390', 1007, 422, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10390', 1008, 482, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10391', 1000, 388, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10391', 1001, 388, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10391', 1002, 384, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10391', 1005, 393, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10391', 1006, 384, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10391', 1007, 423, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10391', 1008, 483, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10392', 1000, 389, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10392', 1001, 389, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10392', 1002, 385, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10392', 1005, 394, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10392', 1006, 385, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10392', 1007, 424, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10392', 1008, 484, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10393', 1000, 390, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10393', 1001, 390, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10393', 1002, 386, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10393', 1005, 395, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10393', 1006, 386, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10393', 1007, 425, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10393', 1008, 485, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10394', 1000, 391, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10394', 1001, 391, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10394', 1002, 387, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10394', 1005, 396, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10394', 1006, 387, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10394', 1007, 426, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10394', 1008, 486, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10395', 1000, 392, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10395', 1001, 392, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10395', 1002, 388, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10395', 1005, 397, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10395', 1006, 388, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10395', 1007, 427, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10395', 1008, 487, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10396', 1000, 393, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10396', 1001, 393, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10396', 1002, 389, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10396', 1005, 398, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10396', 1006, 389, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10396', 1007, 428, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10396', 1008, 488, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10397', 1000, 394, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10397', 1001, 394, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10397', 1002, 390, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10397', 1005, 399, N'A')
GO
print 'Processed 2700 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10397', 1006, 390, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10397', 1007, 429, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10397', 1008, 489, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10398', 1000, 395, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10398', 1001, 395, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10398', 1002, 391, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10398', 1005, 400, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10398', 1006, 391, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10398', 1007, 430, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10398', 1008, 490, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10399', 1000, 396, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10399', 1001, 396, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10399', 1002, 392, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10399', 1005, 401, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10399', 1006, 392, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10399', 1007, 431, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10399', 1008, 491, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10400', 1000, 397, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10400', 1001, 397, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10400', 1002, 393, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10400', 1005, 402, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10400', 1006, 393, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10400', 1007, 432, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10400', 1008, 492, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10401', 1000, 398, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10401', 1001, 398, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10401', 1002, 394, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10401', 1005, 403, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10401', 1006, 394, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10401', 1007, 433, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10401', 1008, 493, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10402', 1000, 399, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10402', 1001, 399, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10402', 1002, 395, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10402', 1005, 404, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10402', 1006, 395, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10402', 1007, 434, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10402', 1008, 494, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10403', 1000, 400, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10403', 1001, 400, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10403', 1002, 396, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10403', 1005, 405, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10403', 1006, 396, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10403', 1007, 435, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10403', 1008, 495, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10404', 1000, 401, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10404', 1001, 401, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10404', 1002, 397, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10404', 1005, 406, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10404', 1006, 397, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10404', 1007, 436, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10404', 1008, 496, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10405', 1000, 402, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10405', 1001, 402, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10405', 1002, 398, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10405', 1005, 407, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10405', 1006, 398, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10405', 1007, 437, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10405', 1008, 497, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10406', 1000, 403, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10406', 1001, 403, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10406', 1002, 399, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10406', 1005, 408, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10406', 1006, 399, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10406', 1007, 438, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10406', 1008, 498, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10407', 1000, 404, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10407', 1001, 404, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10407', 1002, 400, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10407', 1005, 409, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10407', 1006, 400, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10407', 1007, 439, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10407', 1008, 499, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10408', 1000, 405, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10408', 1001, 405, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10408', 1002, 401, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10408', 1005, 410, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10408', 1006, 401, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10408', 1007, 440, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10408', 1008, 500, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10409', 1000, 406, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10409', 1001, 406, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10409', 1002, 402, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10409', 1005, 411, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10409', 1006, 402, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10409', 1007, 441, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10409', 1008, 501, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10410', 1000, 407, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10410', 1001, 407, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10410', 1002, 403, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10410', 1005, 412, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10410', 1006, 403, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10410', 1007, 442, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10410', 1008, 502, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10411', 1000, 408, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10411', 1001, 408, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10411', 1002, 404, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10411', 1005, 413, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10411', 1006, 404, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10411', 1007, 443, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10411', 1008, 503, N'A')
GO
print 'Processed 2800 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10412', 1000, 409, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10412', 1001, 409, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10412', 1002, 405, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10412', 1005, 414, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10412', 1006, 405, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10412', 1007, 444, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10412', 1008, 504, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10413', 1000, 410, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10413', 1001, 410, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10413', 1002, 406, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10413', 1005, 415, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10413', 1006, 406, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10413', 1007, 445, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10413', 1008, 505, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10414', 1000, 411, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10414', 1001, 411, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10414', 1002, 407, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10414', 1005, 416, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10414', 1006, 407, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10414', 1007, 446, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10414', 1008, 506, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10415', 1000, 412, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10415', 1001, 412, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10415', 1002, 408, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10415', 1005, 417, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10415', 1006, 408, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10415', 1007, 447, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10415', 1008, 507, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10416', 1000, 413, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10416', 1001, 413, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10416', 1002, 409, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10416', 1005, 418, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10416', 1006, 409, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10416', 1007, 448, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10416', 1008, 508, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10417', 1000, 414, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10417', 1001, 414, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10417', 1002, 410, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10417', 1005, 419, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10417', 1006, 410, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10417', 1007, 449, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10417', 1008, 509, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10418', 1000, 415, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10418', 1001, 415, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10418', 1002, 411, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10418', 1005, 420, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10418', 1006, 411, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10418', 1007, 450, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10418', 1008, 510, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10419', 1000, 416, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10419', 1001, 416, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10419', 1002, 412, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10419', 1005, 421, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10419', 1006, 412, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10419', 1007, 451, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10419', 1008, 511, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10420', 1000, 417, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10420', 1001, 417, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10420', 1002, 413, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10420', 1005, 422, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10420', 1006, 413, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10420', 1007, 452, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10420', 1008, 512, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10421', 1000, 418, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10421', 1001, 418, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10421', 1002, 414, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10421', 1005, 423, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10421', 1006, 414, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10421', 1007, 453, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10421', 1008, 513, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10422', 1000, 419, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10422', 1001, 419, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10422', 1002, 415, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10422', 1005, 424, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10422', 1006, 415, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10422', 1007, 454, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10422', 1008, 514, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10423', 1000, 420, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10423', 1001, 420, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10423', 1002, 416, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10423', 1005, 425, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10423', 1006, 416, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10423', 1007, 455, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10423', 1008, 515, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10424', 1000, 421, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10424', 1001, 421, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10424', 1002, 417, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10424', 1005, 426, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10424', 1006, 417, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10424', 1007, 456, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10424', 1008, 516, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10425', 1000, 422, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10425', 1001, 422, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10425', 1002, 418, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10425', 1005, 427, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10425', 1006, 418, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10425', 1007, 457, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10425', 1008, 517, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10426', 1000, 423, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10426', 1001, 423, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10426', 1002, 419, N'A')
GO
print 'Processed 2900 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10426', 1005, 428, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10426', 1006, 419, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10426', 1007, 458, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10426', 1008, 518, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10427', 1000, 424, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10427', 1001, 424, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10427', 1002, 420, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10427', 1005, 429, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10427', 1006, 420, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10427', 1007, 459, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10427', 1008, 519, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10428', 1000, 425, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10428', 1001, 425, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10428', 1002, 421, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10428', 1005, 430, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10428', 1006, 421, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10428', 1007, 460, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10428', 1008, 520, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10429', 1000, 426, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10429', 1001, 426, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10429', 1002, 422, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10429', 1005, 431, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10429', 1006, 422, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10429', 1007, 461, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10429', 1008, 521, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10430', 1000, 427, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10430', 1001, 427, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10430', 1002, 423, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10430', 1005, 432, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10430', 1006, 423, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10430', 1007, 462, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10430', 1008, 522, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10431', 1000, 428, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10431', 1001, 428, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10431', 1002, 424, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10431', 1005, 433, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10431', 1006, 424, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10431', 1007, 463, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10431', 1008, 523, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10432', 1000, 429, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10432', 1001, 429, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10432', 1002, 425, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10432', 1005, 434, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10432', 1006, 425, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10432', 1007, 464, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10432', 1008, 524, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10433', 1000, 430, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10433', 1001, 430, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10433', 1002, 426, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10433', 1005, 435, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10433', 1006, 426, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10433', 1007, 465, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10433', 1008, 525, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10434', 1000, 431, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10434', 1001, 431, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10434', 1002, 427, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10434', 1005, 436, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10434', 1006, 427, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10434', 1007, 466, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10434', 1008, 526, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10435', 1000, 432, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10435', 1001, 432, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10435', 1002, 428, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10435', 1005, 437, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10435', 1006, 428, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10435', 1007, 467, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10435', 1008, 527, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10436', 1000, 433, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10436', 1001, 433, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10436', 1002, 429, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10436', 1005, 438, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10436', 1006, 429, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10436', 1007, 468, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10436', 1008, 528, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10437', 1000, 434, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10437', 1001, 434, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10437', 1002, 430, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10437', 1005, 439, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10437', 1006, 430, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10437', 1007, 469, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10437', 1008, 529, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10438', 1000, 435, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10438', 1001, 435, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10438', 1002, 431, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10438', 1005, 440, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10438', 1006, 431, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10438', 1007, 470, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10438', 1008, 530, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10439', 1000, 436, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10439', 1001, 436, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10439', 1002, 432, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10439', 1005, 441, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10439', 1006, 432, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10439', 1007, 471, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10439', 1008, 531, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10440', 1000, 437, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10440', 1001, 437, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10440', 1002, 433, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10440', 1005, 442, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10440', 1006, 433, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10440', 1007, 472, N'A')
GO
print 'Processed 3000 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10440', 1008, 532, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10441', 1000, 438, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10441', 1001, 438, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10441', 1002, 434, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10441', 1005, 443, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10441', 1006, 434, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10441', 1007, 473, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10441', 1008, 533, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10442', 1000, 439, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10442', 1001, 439, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10442', 1002, 435, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10442', 1005, 444, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10442', 1006, 435, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10442', 1007, 474, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10442', 1008, 534, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10443', 1000, 440, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10443', 1001, 440, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10443', 1002, 436, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10443', 1005, 445, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10443', 1006, 436, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10443', 1007, 475, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10443', 1008, 535, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10444', 1000, 441, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10444', 1001, 441, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10444', 1002, 437, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10444', 1005, 446, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10444', 1006, 437, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10444', 1007, 476, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10444', 1008, 536, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10445', 1000, 442, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10445', 1001, 442, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10445', 1002, 438, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10445', 1005, 447, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10445', 1006, 438, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10445', 1007, 477, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10445', 1008, 537, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10446', 1000, 443, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10446', 1001, 443, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10446', 1002, 439, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10446', 1005, 448, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10446', 1006, 439, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10446', 1007, 478, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10446', 1008, 538, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10447', 1000, 444, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10447', 1001, 444, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10447', 1002, 440, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10447', 1005, 449, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10447', 1006, 440, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10447', 1007, 479, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10447', 1008, 539, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10448', 1000, 445, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10448', 1001, 445, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10448', 1002, 441, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10448', 1005, 450, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10448', 1006, 441, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10448', 1007, 480, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10448', 1008, 540, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10449', 1000, 446, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10449', 1001, 446, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10449', 1002, 442, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10449', 1005, 451, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10449', 1006, 442, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10449', 1007, 481, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10449', 1008, 541, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10450', 1000, 447, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10450', 1001, 447, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10450', 1002, 443, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10450', 1005, 452, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10450', 1006, 443, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10450', 1007, 482, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10450', 1008, 542, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10451', 1000, 448, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10451', 1001, 448, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10451', 1002, 444, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10451', 1005, 453, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10451', 1006, 444, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10451', 1007, 483, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10451', 1008, 543, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10452', 1000, 449, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10452', 1001, 449, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10452', 1002, 445, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10452', 1005, 454, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10452', 1006, 445, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10452', 1007, 484, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10452', 1008, 544, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10453', 1000, 450, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10453', 1001, 450, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10453', 1002, 446, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10453', 1005, 455, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10453', 1006, 446, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10453', 1007, 485, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10453', 1008, 545, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10454', 1000, 451, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10454', 1001, 451, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10454', 1002, 447, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10454', 1005, 456, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10454', 1006, 447, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10454', 1007, 486, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10454', 1008, 546, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10455', 1000, 452, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10455', 1001, 452, N'A')
GO
print 'Processed 3100 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10455', 1002, 448, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10455', 1005, 457, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10455', 1006, 448, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10455', 1007, 487, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10455', 1008, 547, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10456', 1000, 453, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10456', 1001, 453, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10456', 1002, 449, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10456', 1005, 458, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10456', 1006, 449, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10456', 1007, 488, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10456', 1008, 548, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10457', 1000, 454, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10457', 1001, 454, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10457', 1002, 450, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10457', 1005, 459, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10457', 1006, 450, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10457', 1007, 489, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10457', 1008, 549, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10458', 1000, 455, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10458', 1001, 455, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10458', 1002, 451, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10458', 1005, 460, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10458', 1006, 451, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10458', 1007, 490, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10458', 1008, 550, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10459', 1000, 456, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10459', 1001, 456, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10459', 1002, 452, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10459', 1005, 461, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10459', 1006, 452, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10459', 1007, 491, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10459', 1008, 551, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10460', 1000, 457, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10460', 1001, 457, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10460', 1002, 453, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10460', 1005, 462, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10460', 1006, 453, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10460', 1007, 492, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10460', 1008, 552, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10461', 1000, 458, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10461', 1001, 458, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10461', 1002, 454, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10461', 1005, 463, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10461', 1006, 454, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10461', 1007, 493, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10461', 1008, 553, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10462', 1000, 459, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10462', 1001, 459, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10462', 1002, 455, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10462', 1005, 464, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10462', 1006, 455, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10462', 1007, 494, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10462', 1008, 554, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10463', 1000, 460, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10463', 1001, 460, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10463', 1002, 456, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10463', 1005, 465, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10463', 1006, 456, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10463', 1007, 495, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10463', 1008, 555, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10464', 1000, 461, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10464', 1001, 461, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10464', 1002, 457, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10464', 1005, 466, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10464', 1006, 457, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10464', 1007, 496, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10464', 1008, 556, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10465', 1000, 462, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10465', 1001, 462, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10465', 1002, 458, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10465', 1005, 467, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10465', 1006, 458, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10465', 1007, 497, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10465', 1008, 557, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10466', 1000, 463, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10466', 1001, 463, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10466', 1002, 459, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10466', 1005, 468, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10466', 1006, 459, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10466', 1007, 498, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10466', 1008, 558, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10467', 1000, 464, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10467', 1001, 464, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10467', 1002, 460, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10467', 1005, 469, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10467', 1006, 460, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10467', 1007, 499, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10467', 1008, 559, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10468', 1000, 465, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10468', 1001, 465, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10468', 1002, 461, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10468', 1005, 470, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10468', 1006, 461, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10468', 1007, 500, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10468', 1008, 560, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10469', 1000, 466, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10469', 1001, 466, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10469', 1002, 462, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10469', 1005, 471, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10469', 1006, 462, N'A')
GO
print 'Processed 3200 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10469', 1007, 501, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10469', 1008, 561, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10470', 1000, 467, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10470', 1001, 467, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10470', 1002, 463, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10470', 1005, 472, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10470', 1006, 463, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10470', 1007, 502, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10470', 1008, 562, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10471', 1000, 468, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10471', 1001, 468, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10471', 1002, 464, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10471', 1005, 473, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10471', 1006, 464, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10471', 1007, 503, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10471', 1008, 563, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10472', 1000, 469, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10472', 1001, 469, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10472', 1002, 465, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10472', 1005, 474, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10472', 1006, 465, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10472', 1007, 504, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10472', 1008, 564, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10473', 1000, 470, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10473', 1001, 470, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10473', 1002, 466, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10473', 1005, 475, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10473', 1006, 466, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10473', 1007, 505, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10473', 1008, 565, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10474', 1000, 471, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10474', 1001, 471, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10474', 1002, 467, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10474', 1005, 476, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10474', 1006, 467, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10474', 1007, 506, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10474', 1008, 566, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10475', 1000, 472, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10475', 1001, 472, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10475', 1002, 468, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10475', 1005, 477, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10475', 1006, 468, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10475', 1007, 507, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10475', 1008, 567, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10476', 1000, 473, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10476', 1001, 473, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10476', 1002, 469, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10476', 1005, 478, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10476', 1006, 469, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10476', 1007, 508, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10476', 1008, 568, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10477', 1000, 474, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10477', 1001, 474, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10477', 1002, 470, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10477', 1005, 479, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10477', 1006, 470, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10477', 1007, 509, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10477', 1008, 569, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10478', 1000, 475, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10478', 1001, 475, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10478', 1002, 471, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10478', 1005, 480, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10478', 1006, 471, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10478', 1007, 510, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10478', 1008, 570, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10479', 1000, 476, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10479', 1001, 476, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10479', 1002, 472, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10479', 1005, 481, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10479', 1006, 472, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10479', 1007, 511, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10479', 1008, 571, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10480', 1000, 477, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10480', 1001, 477, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10480', 1002, 473, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10480', 1005, 482, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10480', 1006, 473, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10480', 1007, 512, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10480', 1008, 572, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10481', 1000, 478, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10481', 1001, 478, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10481', 1002, 474, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10481', 1005, 483, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10481', 1006, 474, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10481', 1007, 513, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10481', 1008, 573, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10482', 1000, 479, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10482', 1001, 479, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10482', 1002, 475, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10482', 1005, 484, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10482', 1006, 475, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10482', 1007, 514, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10482', 1008, 574, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10483', 1000, 480, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10483', 1001, 480, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10483', 1002, 476, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10483', 1005, 485, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10483', 1006, 476, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10483', 1007, 515, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10483', 1008, 575, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10484', 1000, 481, N'A')
GO
print 'Processed 3300 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10484', 1001, 481, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10484', 1002, 477, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10484', 1005, 486, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10484', 1006, 477, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10484', 1007, 516, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10484', 1008, 576, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10485', 1000, 482, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10485', 1001, 482, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10485', 1002, 478, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10485', 1005, 487, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10485', 1006, 478, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10485', 1007, 517, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10485', 1008, 577, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10486', 1000, 483, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10486', 1001, 483, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10486', 1002, 479, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10486', 1005, 488, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10486', 1006, 479, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10486', 1007, 518, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10486', 1008, 578, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10487', 1000, 484, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10487', 1001, 484, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10487', 1002, 480, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10487', 1005, 489, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10487', 1006, 480, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10487', 1007, 519, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10487', 1008, 579, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10488', 1000, 485, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10488', 1001, 485, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10488', 1002, 481, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10488', 1005, 490, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10488', 1006, 481, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10488', 1007, 520, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10488', 1008, 580, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10489', 1000, 486, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10489', 1001, 486, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10489', 1002, 482, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10489', 1005, 491, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10489', 1006, 482, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10489', 1007, 521, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10489', 1008, 581, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10490', 1000, 487, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10490', 1001, 487, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10490', 1002, 483, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10490', 1005, 492, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10490', 1006, 483, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10490', 1007, 522, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10490', 1008, 582, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10491', 1000, 488, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10491', 1001, 488, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10491', 1002, 484, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10491', 1005, 493, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10491', 1006, 484, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10491', 1007, 523, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10491', 1008, 583, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10492', 1000, 489, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10492', 1001, 489, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10492', 1002, 485, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10492', 1005, 494, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10492', 1006, 485, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10492', 1007, 524, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10492', 1008, 584, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10493', 1000, 490, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10493', 1001, 490, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10493', 1002, 486, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10493', 1005, 495, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10493', 1006, 486, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10493', 1007, 525, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10493', 1008, 585, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10494', 1000, 491, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10494', 1001, 491, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10494', 1002, 487, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10494', 1005, 496, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10494', 1006, 487, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10494', 1007, 526, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10494', 1008, 586, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10495', 1000, 492, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10495', 1001, 492, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10495', 1002, 488, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10495', 1005, 497, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10495', 1006, 488, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10495', 1007, 527, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10495', 1008, 587, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10496', 1000, 493, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10496', 1001, 493, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10496', 1002, 489, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10496', 1005, 498, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10496', 1006, 489, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10496', 1007, 528, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10496', 1008, 588, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10497', 1000, 494, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10497', 1001, 494, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10497', 1002, 490, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10497', 1005, 499, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10497', 1006, 490, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10497', 1007, 529, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10497', 1008, 589, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10498', 1000, 495, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10498', 1001, 495, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10498', 1002, 491, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10498', 1005, 500, N'A')
GO
print 'Processed 3400 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10498', 1006, 491, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10498', 1007, 530, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10498', 1008, 590, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10499', 1000, 496, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10499', 1001, 496, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10499', 1002, 492, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10499', 1005, 501, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10499', 1006, 492, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10499', 1007, 531, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10499', 1008, 591, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10500', 1000, 497, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10500', 1001, 497, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10500', 1002, 493, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10500', 1005, 502, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10500', 1006, 493, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10500', 1007, 532, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10500', 1008, 592, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10501', 1000, 498, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10501', 1001, 498, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10501', 1002, 494, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10501', 1005, 503, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10501', 1006, 494, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10501', 1007, 533, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10501', 1008, 593, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10502', 1000, 499, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10502', 1001, 499, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10502', 1002, 495, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10502', 1005, 504, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10502', 1006, 495, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10502', 1007, 534, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10502', 1008, 594, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10503', 1000, 500, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10503', 1001, 500, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10503', 1002, 496, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10503', 1005, 505, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10503', 1006, 496, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10503', 1007, 535, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10503', 1008, 595, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10504', 1000, 501, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10504', 1001, 501, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10504', 1002, 497, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10504', 1005, 506, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10504', 1006, 497, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10504', 1007, 536, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10504', 1008, 596, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10505', 1000, 502, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10505', 1001, 502, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10505', 1002, 498, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10505', 1005, 507, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10505', 1006, 498, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10505', 1007, 537, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10505', 1008, 597, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10506', 1000, 503, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10506', 1001, 503, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10506', 1002, 499, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10506', 1005, 508, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10506', 1006, 499, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10506', 1007, 538, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10506', 1008, 598, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10507', 1000, 504, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10507', 1001, 504, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10507', 1002, 500, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10507', 1005, 509, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10507', 1006, 500, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10507', 1007, 539, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10507', 1008, 599, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10508', 1000, 505, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10508', 1001, 505, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10508', 1002, 501, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10508', 1005, 510, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10508', 1006, 501, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10508', 1007, 540, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10508', 1008, 600, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10509', 1000, 506, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10509', 1001, 506, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10509', 1002, 502, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10509', 1005, 511, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10509', 1006, 502, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10509', 1007, 541, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10509', 1008, 601, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10510', 1000, 507, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10510', 1001, 507, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10510', 1002, 503, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10510', 1005, 512, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10510', 1006, 503, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10510', 1007, 542, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10510', 1008, 602, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10511', 1000, 508, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10511', 1001, 508, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10511', 1002, 504, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10511', 1005, 513, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10511', 1006, 504, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10511', 1007, 543, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10511', 1008, 603, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10512', 1000, 509, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10512', 1001, 509, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10512', 1002, 505, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10512', 1005, 514, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10512', 1006, 505, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10512', 1007, 544, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10512', 1008, 604, N'A')
GO
print 'Processed 3500 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10513', 1000, 510, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10513', 1001, 510, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10513', 1002, 506, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10513', 1005, 515, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10513', 1006, 506, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10513', 1007, 545, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10513', 1008, 605, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10514', 1000, 511, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10514', 1001, 511, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10514', 1002, 507, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10514', 1005, 516, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10514', 1006, 507, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10514', 1007, 546, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10514', 1008, 606, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10515', 1000, 512, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10515', 1001, 512, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10515', 1002, 508, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10515', 1005, 517, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10515', 1006, 508, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10515', 1007, 547, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10515', 1008, 607, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10516', 1000, 513, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10516', 1001, 513, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10516', 1002, 509, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10516', 1005, 518, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10516', 1006, 509, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10516', 1007, 548, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10516', 1008, 608, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10517', 1000, 514, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10517', 1001, 514, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10517', 1002, 510, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10517', 1005, 519, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10517', 1006, 510, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10517', 1007, 549, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10517', 1008, 609, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10518', 1000, 515, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10518', 1001, 515, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10518', 1002, 511, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10518', 1005, 520, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10518', 1006, 511, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10518', 1007, 550, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10518', 1008, 610, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10519', 1000, 516, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10519', 1001, 516, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10519', 1002, 512, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10519', 1005, 521, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10519', 1006, 512, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10519', 1007, 551, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10519', 1008, 611, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10520', 1000, 517, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10520', 1001, 517, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10520', 1002, 513, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10520', 1005, 522, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10520', 1006, 513, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10520', 1007, 552, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10520', 1008, 612, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10521', 1000, 518, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10521', 1001, 518, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10521', 1002, 514, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10521', 1005, 523, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10521', 1006, 514, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10521', 1007, 553, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10521', 1008, 613, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10522', 1000, 519, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10522', 1001, 519, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10522', 1002, 515, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10522', 1005, 524, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10522', 1006, 515, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10522', 1007, 554, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10522', 1008, 614, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10523', 1000, 520, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10523', 1001, 520, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10523', 1002, 516, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10523', 1005, 525, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10523', 1006, 516, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10523', 1007, 555, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10523', 1008, 615, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10524', 1000, 521, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10524', 1001, 521, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10524', 1002, 517, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10524', 1005, 526, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10524', 1006, 517, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10524', 1007, 556, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10524', 1008, 616, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10525', 1000, 522, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10525', 1001, 522, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10525', 1002, 518, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10525', 1005, 527, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10525', 1006, 518, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10525', 1007, 557, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10525', 1008, 617, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10526', 1000, 523, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10526', 1001, 523, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10526', 1002, 519, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10526', 1005, 528, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10526', 1006, 519, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10526', 1007, 558, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10526', 1008, 618, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10527', 1000, 524, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10527', 1001, 524, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10527', 1002, 520, N'A')
GO
print 'Processed 3600 total records'
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10527', 1005, 529, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10527', 1006, 520, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10527', 1007, 559, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10527', 1008, 619, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10528', 1000, 525, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10528', 1001, 525, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10528', 1002, 521, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10528', 1005, 530, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10528', 1006, 521, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10528', 1007, 560, N'A')
INSERT [dbo].[PRODUCTO_ALMACEN] ([pal_pro_id], [pal_alm_id], [pal_stock], [pal_est_id]) VALUES (N'10528', 1008, 620, N'A')
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[pro_id] [nvarchar](50) NOT NULL,
	[pro_descripcion] [nvarchar](100) NOT NULL,
	[pro_precio] [int] NOT NULL,
	[pro_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PRODUCTO] PRIMARY KEY CLUSTERED 
(
	[pro_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10000', N'Aereo café moldura 2 cuerpos', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10001', N'Aereo blanco moldura 2 cuerpos', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10002', N'Aereo cedro  de melamina 2 cuerpos liso', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10003', N'Aereo nogal melamina 2 cuerpos liso', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10004', N'Aereo chocolate  melamina 2 cuerpos liso', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10005', N'Aereo Nogal con vidrio 2 cuerpos', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10006', N'Aéreos 2 Ptas. Melamina c/Vidrio', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10007', N'Aereo melamina blanco  3 cuerpos liso', 55000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10008', N'Aereo melamina cedro/vidrio 3 cuerpos', 55000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10009', N'Aereo melamina blanco  con vidrio 3 cpos', 55000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10010', N'Aereo moldura blanca 3 cpos', 55000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10011', N'Aereo moldura café 3 cpos', 55000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10012', N'Aereo chocolate melamina 3 cpos liso', 55000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10013', N'Aereo melamina cerezo 4 cpos / vidrio', 69900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10014', N'Aereo moldura café 4 cpos', 69900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10015', N'Aereo moldura blanca 4 cpos', 69900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10016', N'Base 3 Cajones 50 x 50 cm. Moldura', 60000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10017', N'Base 50 x 1,10 cm. 2 Ptas. 3 caj. Moldura', 115000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10018', N'Base 75 x 50 moldura color café', 78000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10019', N' BASE  CON MOLDURA 2 PUERTAS   40X75X85', 58000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10020', N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85', 85000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10021', N'Base 1,40 x 40 cm. Moldura Café / Blanca', 108000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10022', N'Bases 1,40 x 50 cm. Moldura / Melamina', 144000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10023', N'Bases 50 x 80 cm. Melamina', 78000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10024', N'Muebles de Gas Moldura Blanco / Nogal', 58000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10025', N'Verdulero Simple Melamina Blanco', 34000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10026', N'Verduleros Simple Moldura', 35000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10027', N'Verduleros c/ puerta Melamina Cedro / Chocolate', 59000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10028', N'Verduleros Doble con Cajón', 62000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10029', N'Botellero 40 x 1,40  Moldura Blanco 4 ptas.', 189900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10030', N'BOTELLERO MICROONDA  DE 50X140X180 BLANCO Y DE EUCALIPTUS ', 199900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10031', N'Botelleros 35 x 1,10 Pta. Larga Moldura Blanco Pta. Larga', 135000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10032', N'Botelleros Doble Microondas 35 x 1,40 ', 185000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10033', N'Botiquín Chico Blanco', 26000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10034', N'Botiquín Grande Modura Banco/ Café', 32000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10035', N'Compacto 3 ptas. 50 x 1,10 cm. Moldura Blanca', 160000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10036', N'Compacto 3 ptas. Melamina Blanco 1,30 x 50 cm.', 165000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10037', N'COMPACTO  MICROONDA 3 CUERPOS 40X110X180CM  BLANCO Y DE EUCA', 135000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10038', N'Compacto 4 ptas. Moldura Café', 185000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10039', N'Compacto Pta Larga 1,10 x 40 Moldura Café / Blanco ', 135000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10040', N'COMPACTO CON PUERTA LARGA DE MELAMINA 40X120X180 ', 150000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10041', N'Compacto Pta. Larga 35 x 1,40 cm. Moldura Café', 189900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10042', N'compacto d4 cuerpos   DE 40X140X180 BLANCO Y DE EUCALIPTUS ', 189900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10043', N'Compacto pta. Larga 50 x 1,45 Chocolate, Cedro', 195000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10044', N'Compacto Pta. Larga 50 x 1.20 Melamina Chocolate', 150000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10045', N'Compactos Moldura  3 ptas. Café y blanco ', 129900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10046', N'Mueble Tipo Americano Moldura Café', 245000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10047', N'Despensa Chica Blanca', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10048', N'Despensa Doble Moldura con Cajón y Canastillos ', 92000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10049', N'Despensa Moldura Blanca c/cajón ', 57000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10050', N'Despensas 1 Pta. Melamina', 53000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10051', N'Despensas Doble Melamina Chocolate/ Blanca ', 85000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10053', N'Despensa para baño', 37000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10054', N'Doble Microondas Melamina / Trupán', 89900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10055', N'Microondas Melamina 1 Cubierta ', 89000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10056', N'Microondas 2 ptas. Melamina con Vidrio Liso', 89000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10057', N'Microondas Moldura Café c/cajón ', 92000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10058', N'VITRIAL frutero  BLANCO Y DE EUCALIPTUS 35X60X180 ', 92000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10059', N'Vitriales Moldura Café/ Blanco', 92000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10060', N'Fuente 80 cm. Lioi', 27900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10061', N'Fuentes 1 mt. Lioi', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10062', N'Fuentes 1,20 cm. Lioi', 52000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10063', N'FUENTE DE 80 CM TRAMONTINA', 35000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10064', N'Mueble Lavaplatos 1 mt. Melamina 2 ptas. Blanco', 52000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10065', N'Mueble Lavaplatos 1,20 cms. Melamina Blanca, Chocolate', 79000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10066', N'Mueble Lavaplatos 80 cm. Melamina 2 ptas. ', 52000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10067', N'Muebles Lavaplatos 1 mt.  c/cajón  Melamina/ Moldura', 58000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10068', N'Muebles Lavaplatos 80 cm. c/cajón Moldura, Melamina ', 55000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10069', N'Mueble lavaplato 80cm. s/cajón  Melamina', 49000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10070', N'Mueble Lavaplatos 1 mt. Sin Cajón', 55000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10071', N'combinacion lavaplatos antonela ', 14900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10072', N'Combinación Lavaplatos Hahn', 14900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10073', N'COMBINACION  STRETO ', 14900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10075', N'Bar Esquina Chico', 139000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10076', N'Bar Grande Eco-Cuero', 295000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10077', N'Bar', 240000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10078', N'Perchero Madera', 35000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10079', N'Escritorio Melamina Chico', 45000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10080', N'Escritorio Melamina Grande', 72000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10081', N'Espejo Madera Alerce', 15000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10082', N'ESPEJO DE CERAMICA ', 18000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10083', N'Esquinero Madera con Ruedas', 33000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10085', N'Esquineros Metálicos c/ Luz', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10086', N'Librero Melamina Nogal / Cedro', 69000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10087', N'Living Chico 3 cpos.Montecarlo', 195000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10088', N'Living Imperio', 299900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10089', N'Living L Terminaciones Madera', 335000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10090', N'Living Mediano 3 cpos. Venecia', 229900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10091', N'Mesa Arrimo 1 Piña y Cajón', 36000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10092', N'Mesa Arrimo 2 Piñas y Cajón', 47000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10093', N'Mesa Arrimo Cerámico', 149900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10094', N'Mesa Arrimo Redondo ', 22000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10095', N'Mesa centro pino', 52000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10096', N'Mesa Centro 2 Piñas', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10097', N'Mesas Centro Medianas', 47000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10098', N'Mesa Centro Ceramico', 92000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10099', N'Mesa Centro Vidrio', 92000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10100', N'Mesa Centro Cuadrada Pino con Palitos', 48000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10101', N'Mesa Comedor Cuadrada ', 110000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10102', N'Mesa Comedor Rectanguar', 110000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10103', N'Mesa Comedor Trébol', 169000, N'A')
GO
print 'Processed 100 total records'
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10104', N'Mesa Comedor Rectanguar 2 Piñas', 169000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10105', N'Mesa Lateral Cerámico', 62000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10106', N'Mesa Modelo Imperio', 178000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10107', N'Mesa Ovalada 2 Piñas con Extención', 169000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10108', N'Mesa Redonda Chica con Extención', 155000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10109', N'Mesa Cocina Plegable Chica', 26000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10110', N'Mesa Cocina Plegable Grande', 29000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10111', N'Mesa Metálica 4 Persona', 62000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10112', N'Mesa Metálica 6 Personas', 79900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10113', N'Modular 32" melamina', 185000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10114', N'Modular 43" Enchapado Eucalipto', 310000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10115', N'Modular 43" Trupán', 245000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10116', N'Modular 50" Enchapada Eucalipto', 279900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10117', N'Piso Bar Madera', 28000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10118', N'Rack Bajo Pino', 125000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10119', N'Rack Bajo Melamina', 78000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10120', N'Rack Bajo Trupán', 62000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10121', N'Rack Bajo Trupán Chico', 49900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10122', N'Rack Elevación 32" Trupán', 115000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10123', N'Rack Elevación 43" Trupán', 145000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10124', N'Vitrina Chica Enchapada Eucalipto', 210000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10125', N'Vitrina Grande con Vidrio', 299900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10126', N'Silla Bebe', 26000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10127', N'Silla Escritorio', 49000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10128', N'Silla Planchar', 65000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10129', N'Sillas Modelo Imperio ', 36000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10130', N'Sillas Pino con respado tapizado', 22500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10131', N'Sillas Pino con Varilla', 22500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10132', N'Sillas pino palitos horizonales', 32000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10133', N'Sillas Rauli Tornadas', 28000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10134', N'Sillas Metálicas ', 15000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10135', N'Sillones Infantiles', 32000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10136', N'Colchón 1 pl. Resorte Sublime', 85000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10137', N'Colchón 1 pl. Espuma Sublime', 55000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10138', N'Colchón 1 pl. Espuma Simple', 56000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10139', N'Colchón 1 pl. Reposso Resorte', 94000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10140', N'COLCHON 1 PL. REPOSO ESPONJA ', 74000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10141', N'Colchon 1 pl.Resorte rosen', 93000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10142', N'Colchon resorte 1 pl spomo', 97000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10143', N'Colchón 11/2  pl. Reposso Invierno - Verano espuma', 79900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10144', N'Colchón 11/2 pl. Espuma 20 cm.', 59000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10145', N'Colchón 11/2 pl. Espuma Sublime', 59900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10146', N'Colchón 11/2 pl. Resorte Sublime', 99000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10147', N'Colchón 11/2 pl. Espuma Simple', 59000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10148', N'Colchon 1 1/2pl Espuma acolchado', 79900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10149', N'Colchon 1 1/2 pl. resorte reposso', 105000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10150', N'COLCHON 11/2 REPOSO ESPONJA ', 79900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10151', N'Colchón 2 pl. Espuma 20 cm.', 90000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10152', N'Colchón 2 pl. Mosso Resorte', 155000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10153', N'Colchón 2 pl. Reposso Resorte', 155000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10154', N'Colchón 2 pl. Sublime Resorte', 139900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10155', N'Colchón 2 pl. Espuma Acolchado Invierno-Verano', 160000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10156', N'COLCHON 2 PLAZA KINETICO', 189000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10157', N'COLCHON 2 PLAZA GEO', 99000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10158', N'Colchón 2 pl. Resorte ', 185000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10159', N'COLCHON 2 PLZA REPOSO ESPONJA ', 109900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10160', N'Colchon 2 pl. espuma Termiflex 15"', 79000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10161', N'Colchones 1 pl. Espuma 20 cm.', 52000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10162', N'Colchones 1 pl. Rosen', 89000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10163', N'Colchones 11/2 pl. Reposso Resorte Invierno-Verano', 105000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10164', N'Colchones 2 pl. Acolchado Reposso Invierno-Verano', 109000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10165', N'CAMA AMERICANA DE 11/2 ', 229000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10166', N'Combo Cama Americana 2 pl. Spomo', 269000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10167', N'Combo Cama Americana Full', 289000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10168', N'Combo Cama Americana 11/2 pl. Spomo', 239000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10169', N'Cuna Pino Oregón', 85000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10170', N'Litera 1 Pl. Pino', 105000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10171', N'Litera 1 pl. Raulí', 120000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10172', N'Literas 11/2 pl. Pino', 115000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10173', N'Literas 11/2 pl. Raulí', 129000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10174', N'Marqueza 1 pl. Pino', 64000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10175', N'Marqueza 11/2 Enchapada Eucalipto', 74000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10176', N'Marqueza 11/2 pl. Modelo Imperio', 110000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10177', N'Marqueza 11/2 pl. Raulí', 69000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10178', N'marquesa 1 1/2 pl.pino', 62000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10179', N'Marqueza 1 1/2 plaza tallada en rauli', 155000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10180', N'Marqueza 2 pl. Enchapada Eucalipto', 97000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10181', N'Marqueza 2 pl. Modelo Imperio', 130000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10182', N'Marqueza 2 pl. Pino Roja', 82000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10183', N'Marqueza 2 pl. Raulí', 89900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10184', N'Marquezas 1 pl. Enchapada Eucalipto', 69900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10185', N'Marquezas 1 pl. Raulí', 65000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10186', N'Veladores Enchapados Eucalipto', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10187', N'Veladores Infantil / Adulto / Melamina', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10188', N'Veladores Trupán con Puerta', 25000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10189', N'veladores sin puerta', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10190', N'Veladores madera', 89000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10191', N'Veladores Pino 3 cajones', 85000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10192', N'COMODA INFANTIL', 72000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10193', N'COMODAS MELAMINA', 82000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10194', N'Comoda melamina DvD', 92000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10195', N'Baúl Madera', 89000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10196', N'Cajonera Melamina', 68000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10197', N'Cajonera Trupán Lisa', 62000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10198', N'Cajoneras Veteadas', 62000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10199', N'Cajoneras Infantiles', 62000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10200', N'Callampa DVD melamina color cedro', 139000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10201', N'Callampita Melamina Chocolate', 105000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10202', N'Callampitas infantiles', 95000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10206', N'Ropero 2 cpos. Melamina Chocolate / Cedro', 105000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10207', N'Ropero corredera melamina', 155000, N'A')
GO
print 'Processed 200 total records'
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10208', N'Ropero 3 cpos. Melamina Cedro, Chocolate', 155000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10209', N'Ropero trupan 4 cajones', 119900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10210', N'Roperos 2 cpos. Trupán Infantil, Veteado', 94900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10211', N'ROPERO 3 CUERPOS DE TRUPAN CON Y DOS ESPEJOS  47X110X170', 119900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10212', N'Ropero 3 cpos. Rosado / Trupán / Celeste', 114900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10215', N'Almohadas 50 x 70 Soft Plus Rosen', 7900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10216', N'ALMOHADA CANNON 50 X 50 ', 4900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10217', N'Almohadas rosen ', 6900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10218', N'Almohadas valencia', 4900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10219', N'Cojines 50 x 50 ', 3900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10220', N'Cojin princesa ', 6500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10221', N'Cojines 40 X 40 colo colo', 6700, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10222', N'Cojines polar colo colo', 3900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10223', N'Cojin canotex 50x 32  equipo de futbol', 6500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10224', N'Pack Almohadas Illusons Oferta', 4500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10225', N'Cobertor 2 pl. Mashinni', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10226', N'Cobertores 11/2 pl. Mashinni', 14900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10227', N'Cobertores 11/2 pl. Valencia ', 15900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10228', N'Cobertor equipo 1 1/2 pl', 22000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10229', N'Cobertores 2 pl. Illusion', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10230', N'COBERTOR de 2 PLAZA equipo de futbol', 36000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10231', N'Plumon 11/2 pl. Disney  Princesa', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10232', N'Plumon 1 1/2 pl. illusion', 22900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10233', N'Plumon 11/2 pl.Infantil ', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10234', N'Plumon 1 1/2 pl. plumetti', 24900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10235', N'Plumón 2 pl. Cannon', 39900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10236', N'Plumon Rosen 2 pl. ', 48000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10237', N'Plumones 11/2 Cannon', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10238', N'Plumones 11/2 Rosen Oferta ', 22000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10239', N'PLUMON HOME DE 11/2', 17900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10240', N'PLUMON HOME DE 2 PLAZA', 18900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10241', N'Plumon 1 1/2 americam FAMILY ', 36000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10242', N'Plumon 2 pl. illusion', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10243', N'Plumones 2 pl.Valencia', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10244', N'Plumones Cannon 2 pl.', 39900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10245', N'Plumon de 2 plaza americam FAMILY', 39000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10246', N'Plumones Home Beauty 2 pl.', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10247', N'Plumones Home Beauty Single 1 pl.', 15900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10248', N'Plumones Home Beauty Single 11/2 pl', 17900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10249', N'Plumones Pluma 11/2 pl.', 33000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10250', N'Plumones Pluma 2 pl.', 44000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10251', N'plumon 2 plaza deportivo ', 36000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10252', N'Plumones  11/2  Rosen', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10253', N'Plumones 1 1/2Single Valencia ', 15900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10254', N'Cortinas Mashinni con Visillos', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10255', N'Cortinas Royal Supreme', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10256', N'Kit 1 1/2 pl. mashini', 14900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10257', N'Kit 2 pl. mashini', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10258', N'Fundas Noteboock Hello Kitty', 9900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10259', N'Juego Toallas Anaís ', 18900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10260', N'Toallones 80 x 1,60 cm.', 7900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10261', N'Toallas cannon', 4900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10262', N'Set Toallas Bordadas', 11900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10263', N'Sábana Polar Single Infantil Peppa', 19600, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10264', N'Sabanas 1 pl. Cannon', 15000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10265', N'SABANA DE 1 PLAZA AMERCAN', 13900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10266', N'Sabanas Single Disney Soy Luna, Paw, Princesita Sofía', 14900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10267', N'Sábanas Nickeleodón', 14900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10268', N'Sabanas 11/2 pl. Cannon', 16900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10269', N'Sábanas 11/2 Pl. Mashini', 14900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10270', N'SABANA 1 1/2 ROSEN TFX', 9000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10271', N'SABANA 11/2 PLUMETTI', 9900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10272', N'SABANA DE 11/2 AMERICAN ', 16900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10273', N'SABANA DE 2 PLAZA AMERICAN ', 24900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10274', N'Sabanas 2 pl. Cannon ', 24900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10275', N'Sábanas 2 pl. Mashini', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10276', N'Sábanas 2 pl. Rosen ', 34900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10277', N'Sabana de 2 plaza plumetti ', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10278', N'Sabanas 2 pl. economicas', 8900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10279', N'Sabanas Illusion 2 pl.', 8900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10280', N'Sábanas Illusions 11/2 ', 8500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10281', N'Sabanas 1 1/2 pl. rosen', 24990, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10282', N'Sabanas 1 1/2 pl. infantil / equipo futbol', 15900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10283', N'Sabanas 1 1/2 pl. economicas', 6900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10284', N'Sabana 1 1/2 pl. polar infantil tolucci', 16900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10285', N'Sabanas 1 1/2 pl.infantil mickelodeon', 14900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10286', N'Sabanas polar 1 1/2 pl. ( minnie mouse)', 20900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10287', N'Sabanas Infantil Disney 11/2 pl.', 14900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10288', N'Sábanas Single Cannon Tfx 1 1/2 pl', 9900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10289', N'Set cortina baño ', 19500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10290', N'Set cortina baño ', 20900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10291', N'Set Cortina Baño 8 Piezas Mashini', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10292', N'Set Toallas Annais', 6500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10293', N'Frazada 11/2 pl. Económica Plumetti', 6900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10294', N'Frazadas 1 Pl. Económica', 8450, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10295', N'Frazadas 11/ 2 pl. Oveja', 15900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10296', N'Frazadas 11/2 pl. El Castillo', 32900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10297', N'Frazada 1 1/2 pl polar', 14990, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10298', N'Frazadas 2 pl. Económicas Plumetti', 9900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10299', N'Frazadas 2 pl. El Castillo ', 39900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10300', N'Frazada 2 pl. polar', 18900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10301', N'Frazadas 2 pl. Oveja', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10302', N'Alfombras Mashinni Viena 1,50 x 2,20 cm. ', 49900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10303', N'Alfombra 1,50 x 2,20 mashini praga', 49900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10304', N'Alfombra 1,50 x 2,00 mashini ', 39900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10305', N'Alfombras 1.50x2.00 mt vienna', 49900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10306', N'Alfombras 1,20 x 170', 34900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10307', N'Alfombras 1,33 x 1,80', 57000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10308', N'Alfombra pasillo 66x1.10 mt', 15900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10309', N'Alfombra 1,20x 80 cm. Idetex ', 34900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10310', N'Alfombra Mashinni 50 x 2,00', 13900, N'A')
GO
print 'Processed 300 total records'
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10311', N'Alfombra 1,50 x 2,20 cm. Praga', 39900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10312', N'Alfombra Mashinni Praga 1,33 x 1,80 cm.', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10313', N'Alfombras Mashinni Viena 1,33 x 1,80 cm.', 39900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10314', N'alfombras 133x190', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10315', N'Alfombra disney', 17900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10316', N'Alfombras con diseño 1.33x1.80 mt', 55900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10317', N'Alfombra Chagy  1,33 X 180 MASHINI + OTRA MARCA ', 42000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10318', N'Alfombra Chagy  1,33 X 180 Idetex', 56000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10319', N'Alfombra masihini 1.33x190', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10320', N'Bajada Cama Cannon Plenitud 66 x 1,10 ', 10900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10321', N'Bajada Cama Quality 50 x 90 cm.', 5900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10322', N'Bajada de cama', 15900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10323', N'Bajadas de cama 40 x 70', 4900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10324', N'Bajadas de cama mashini', 5900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10325', N'Limpiapie Cannon 40 x 60 ', 1900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10326', N'Limpiapie Cannon 48 x 70 ', 3800, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10327', N'Limpia pies peludos', 2900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10328', N'Cubre pasillo', 24000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10329', N'Pisos', 1900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10330', N'Pisos', 3900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10331', N'Piso de baño color naranjo', 3900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10332', N'Piso de baño infantil', 6500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10333', N'PISO DE BAÑO 40X 64 INFANTIL', 3250, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10334', N'PISO DE BAÑO 50 X80 INFANTIL', 4700, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10335', N'Pasillo 50 x 2mts mashini', 13900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10336', N'PASILLO MASHINI 2.00X 50', 11900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10337', N'PASILLO CANNON 67X 115', 8900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10338', N'PASILLO CHAGY  40 X 70 IDETEX', 2500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10339', N'Pasillo Chicos 40 x 70 cm. Idetex', 4900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10340', N'Aspiradora Daewoo', 62000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10341', N'Aspiradora somela', 54900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10342', N'Batidoras de Varilla Magefesa', 24990, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10343', N'Cocina Gas Fensa Titanium', 209000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10344', N'Cocina gas Mabe', 169000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10345', N'Cocina Mademsa Diva', 219900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10346', N'Fogon a gas 2 platos', 99000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10347', N'Fogon a gas 2 platos', 109900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10348', N'Fogon a gas 1 platos', 58000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10349', N'Cocinillas 1 plato', 29000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10350', N'Cocinillas 2 platos ', 39000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10351', N'Estufa Cuarzo ', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10352', N'Lavadora Daewoo 8 kg. ', 189900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10353', N'Lavadora Electrolux 7 kg.', 179000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10354', N'Lavadora Fensa 17 KG.', 345000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10355', N'Refrigerador Hisense', 249000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10356', N'Refrigerador Whirpool', 209900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10357', N'Secadora Ropa', 179899, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10358', N'Valvulas gas', 6900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10359', N'Equipo Musica LG CM 4350', 99900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10360', N'Equipos Música LG CM 4350', 139900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10361', N'Espumadera Grande', 3500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10362', N'Extenciónes 6 mt.', 4900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10363', N'Frascos Vidrios Chicos', 6400, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10364', N'Frascos Vidrios Grandes', 9300, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10365', N'Fuente Vidrio Lenon', 3400, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10366', N'Televisor 32" onn', 159900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10367', N'Soporte TV', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10368', N'Hervidores Magefesa 1,5Lt', 16900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10369', N'Hervidor sindelen 1 .5 lts', 15900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10370', N'Hervidores Magefesa 2 Lt', 18900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10371', N'Hervidores Scarlet', 9900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10372', N'Hervidor somela', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10373', N'Hervidor Thomas 1.8 Lt', 17900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10374', N'Hervidores Black Decker', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10375', N'Horno Electrico Valory', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10376', N'Hornos Eléctricos Magefesa', 45900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10377', N'Juego Arroceras Home Star', 72000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10378', N'Juegos de Vajilla 30 Piezas', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10379', N'Jugueras Magefesa Vaso Vidrio', 32500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10380', N'Juegos de taza', 10500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10381', N'Licuadoras Magefesa', 26900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10382', N'Licuadoras Black+Decker', 34900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10383', N'Microondas Mi Edea', 69900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10384', N'Microonda somela ', 65000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10385', N'Plancha Vapor Magefesa Cod. 6295', 24900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10386', N'Planchas Seca Magefesa', 9900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10387', N'Planchas Vapor Magefesa Cod. 6282 (1 Uso Local)', 16500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10388', N'PLANCHA MAGEFESA 6161', 16900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10389', N'PLANCHA SOMELA ', 14000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10390', N'Secador de Pelo Gama', 14900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10391', N'Secador de Pelo Philips', 18900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10392', N'Secadores Pelo Bopai', 11900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10393', N'Termo Ventiladores Groven (1 Uso Local)', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10394', N'Balones Fútbol', 6900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10395', N'Batería 5 Piezas Fantuzzi', 27500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10396', N'Colgador Ducha Super Plus', 4800, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10397', N'Colgadores Combustión Lenta', 17900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10398', N'Colgadores Ducha', 3900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10399', N'Colgadores Ropa Mural', 26000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10400', N'Colgador de ropa cocina ', 7000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10401', N'Colgador ducha super plus', 4800, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10402', N'Cucharon Grande', 3800, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10403', N'Linterna recargable', 4900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10404', N'Linterna Led', 5500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10405', N'Manteles con Servilletas Rectangulares', 4900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10406', N'Manteles Plumetti Rectangulares 1,50 x 2,10 cm.', 4900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10407', N'Manteles Mashinni Country 1,50 x 2,10 cm.', 5900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10408', N'Mantel mesa plumetti', 5900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10409', N'Olla 18 cm. Aleppo', 8900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10410', N'Olla 22 cm. Aleppo', 11200, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10411', N'Olla 28 Montero', 9990, N'A')
GO
print 'Processed 400 total records'
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10412', N'Olla 30 Montero', 11400, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10413', N'Ollas 24 cms. Fantuzzi', 13750, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10414', N'Ollas 24 cm', 22500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10415', N'Ollas 26 cm. Royal Magefesa', 25300, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10416', N'Ollas 26 cms. Fantuzzi', 15750, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10417', N'Olla enlosada 18 cm ', 8900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10418', N'Olla enlosada de  20 cm ', 10900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10419', N'Ollas enlozadas 22 cm', 11200, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10420', N'Olla enlosada 24 cm ', 13900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10421', N'Ollas enlozadas 26 cm', 16200, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10422', N'Olla freir ', 9600, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10423', N'Ollas aluminio Nº 24', 7150, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10424', N'Platos Burguer 18 cm', 2300, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10425', N'Platos Burguer 33 cm', 4200, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10426', N'Platos Burguer 28 cm', 2700, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10427', N'Platos 18 cm gt 6702', 4300, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10428', N'Platos 33 cm gt 6711', 10900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10429', N'Reloj Chico Quartz', 2400, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10430', N'Reloj Semilla', 5800, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10431', N'Reloj Semilla (roto)', 3900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10432', N'Relojes Marino', 9500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10433', N'Reloj redondo', 2400, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10434', N'Reloj cuadrado grande', 20400, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10435', N'Reloj cuadrado grande', 26500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10436', N'Reloj master', 24000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10437', N'Repisas multiuso practik', 5700, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10438', N'Sartenes 24 cm. Fantuzzi', 6900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10439', N'Bateria cocina 8 piezas fantuzzi', 49000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10440', N'Espumadores', 3500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10441', N'Secador de Vajilla', 9900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10442', N'Secador Platos Chico', 4700, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10443', N'Secador Platos con Porta Vasos', 12800, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10444', N'Secador Platos Grande', 6700, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10445', N'Set Cubiertos 30 Piiezas Düssel', 18900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10446', N'Set de Cubiertos 24 piezas', 15900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10447', N'Sarten antiadherente 26cm. Fantuzzi', 8900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10448', N'Set Sartenes 20 y 24 cm. Magefesa', 13750, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10449', N'Set Tazas 12 Piezas', 10500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10450', N'Tabla Planchar con Hombrera', 26000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10451', N'Tablas de Planchar', 22000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10452', N'Tetéra Aleppo 1,8 lt. ', 12900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10453', N'Teteras acero2.20 lts', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10454', N'Tetéra Aleppo 2,5 lt.', 16400, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10455', N'Teteras 3.3 lts', 18700, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10456', N'Teteras Magefesa con Pito', 19900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10457', N'Lampara solar con linterna', 4900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10458', N'Lamparas 0612', 7500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10459', N'Lamparas 3146', 10900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10460', N'Lamparas con radio', 15900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10461', N'Lamparas solar grande', 5500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10462', N'Lamparas TL 031', 8800, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10463', N'Lamparas infantil', 9900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10464', N'Lámpara Dorada', 10500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10465', N'Lámparas Halux', 14900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10466', N'lampara de camping simple ', 4900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10467', N'lampara camping  linterna ', 5500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10468', N'Quitasol chico', 5500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10469', N'Quitasol grande', 8900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10470', N'Porta rollo grande', 3900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10471', N'Secador ropa para el cañon', 8000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10472', N'Ventilador Computador', 3500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10473', N'Ventilador Pedestal Recco', 32900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10474', N'Autos Chicos', 1000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10475', N'Autos Grandes', 1500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10476', N'Baúl Princesa', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10477', N'Camión Tolva', 3900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10478', N'Juegos Luces Led', 1500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10479', N'Línea Ferrocarril Militar', 5900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10480', N'Pistolas Agua', 3500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10481', N'Set Doctora', 2500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10482', N'Baúl Infantil ', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10483', N'Muñecas chicas', 1500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10484', N'Pelotas futbol', 7900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10485', N'Muñecas grande', 2500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10486', N'Set tren', 5900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10487', N'Sillon Infantil', 29900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10488', N'Boquillas 4 1/2', 1600, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10489', N'Boquillas 4 1/4', 1600, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10490', N'Boquillas 4 3/4', 1600, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10491', N'Boquillas 4"', 1600, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10492', N'Boquillas 5 1/2', 1600, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10493', N'Boquillas 5"', 1600, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10494', N'Cañones 4"', 3500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10495', N'Cañones 4 1/2', 3700, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10496', N'Cañon 4 1/4"', 3500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10497', N'Cañones 4 3/4', 3700, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10498', N'Cañones 5" ', 4000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10499', N'Cañones 6" Combustion Lenta', 12500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10500', N'Cocina Leña 70 x 56 cm.', 255000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10501', N'Cocina Leña 90 x 60 cm. ', 299000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10502', N'Cocinas Leña 65 x 45 cm.', 249000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10503', N'Cocian a leña de 80x56 ', 279900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10504', N'Cocinillas chicas 2 platos', 39000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10505', N'Codos 4 1/2', 4800, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10506', N'Codos 4 1/4', 4800, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10507', N'Codos 4 3/4', 4800, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10508', N'Codos 4"', 4800, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10509', N'Codos 5"', 4800, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10510', N'Disco Enlozado', 48000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10511', N'Disco Fierro', 35000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10512', N'Estufa a Leña Tradicional', 149000, N'A')
GO
print 'Processed 500 total records'
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10513', N'Estufa Leña', 139000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10514', N'Gorros cocina a leña', 2200, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10515', N'Gorros Chino Simples', 2500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10516', N'Gorros Doble ', 12500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10517', N'Horno Leña', 355000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10518', N'HORNO DE PIEDRA', 350000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10519', N'Rosetas 4 1/2', 1900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10520', N'Rosetas 4 1/4', 1900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10521', N'Rosetas 4 3/4', 1900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10522', N'Rosetas 4"', 1900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10523', N'Rosetas 5"', 1900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10524', N'Rosetas 6"', 1900, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10525', N'Tejas 4 - 4 1/4', 4300, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10526', N'Tejas 4 1/2 - 4 3/4', 4300, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10527', N'Tejas 5 - 5 1/4', 4300, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'10528', N'Parrilla Completa con Espada', 55000, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'11111', N'fabian', 500, N'A')
INSERT [dbo].[PRODUCTO] ([pro_id], [pro_descripcion], [pro_precio], [pro_est_id]) VALUES (N'fabian', N'fabian', 500, N'A')
/****** Object:  Table [dbo].[PRIVILEGIO]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRIVILEGIO](
	[pri_formulario] [nvarchar](50) NOT NULL,
	[pri_lectura] [char](1) NOT NULL,
	[pri_escritura] [char](1) NOT NULL,
	[pri_usu_correo] [nvarchar](50) NOT NULL,
	[pri_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PRIVILEGIO] PRIMARY KEY CLUSTERED 
(
	[pri_formulario] ASC,
	[pri_usu_correo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PRIVILEGIO] ([pri_formulario], [pri_lectura], [pri_escritura], [pri_usu_correo], [pri_est_id]) VALUES (N'/cliente.aspx', N'A', N'A', N'roberto_briones@live.com', N'A')
INSERT [dbo].[PRIVILEGIO] ([pri_formulario], [pri_lectura], [pri_escritura], [pri_usu_correo], [pri_est_id]) VALUES (N'/cliente.aspx', N'A', N'A', N'ruthgutierrez1307@gmail.com', N'A')
INSERT [dbo].[PRIVILEGIO] ([pri_formulario], [pri_lectura], [pri_escritura], [pri_usu_correo], [pri_est_id]) VALUES (N'/Producto.aspx', N'A', N'A', N'roberto_briones@live.com', N'A')
INSERT [dbo].[PRIVILEGIO] ([pri_formulario], [pri_lectura], [pri_escritura], [pri_usu_correo], [pri_est_id]) VALUES (N'/Producto.aspx', N'A', N'E', N'ruthgutierrez1307@gmail.com', N'A')
INSERT [dbo].[PRIVILEGIO] ([pri_formulario], [pri_lectura], [pri_escritura], [pri_usu_correo], [pri_est_id]) VALUES (N'/venta.aspx', N'A', N'A', N'roberto_briones@live.com', N'A')
INSERT [dbo].[PRIVILEGIO] ([pri_formulario], [pri_lectura], [pri_escritura], [pri_usu_correo], [pri_est_id]) VALUES (N'/venta.aspx', N'A', N'E', N'ruthgutierrez1307@gmail.com', N'A')
/****** Object:  Table [dbo].[PAGO_TRANFERENCIA]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO_TRANFERENCIA](
	[ptr_id] [int] IDENTITY(1,1) NOT NULL,
	[ptr_vca_id] [int] NOT NULL,
	[ptr_fecha_docto] [datetime] NOT NULL,
	[ptr_importe] [numeric](19, 6) NOT NULL,
	[ptr_ban_id] [int] NOT NULL,
	[ptr_numero_tran] [numeric](18, 0) NOT NULL,
	[ptr_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PAGO_TRANFERENCIA] PRIMARY KEY CLUSTERED 
(
	[ptr_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PAGO_TRANFERENCIA] ON
INSERT [dbo].[PAGO_TRANFERENCIA] ([ptr_id], [ptr_vca_id], [ptr_fecha_docto], [ptr_importe], [ptr_ban_id], [ptr_numero_tran], [ptr_est_id]) VALUES (1, 1, CAST(0x0000A87100000000 AS DateTime), CAST(10000.000000 AS Numeric(19, 6)), 31, CAST(100000 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_TRANFERENCIA] ([ptr_id], [ptr_vca_id], [ptr_fecha_docto], [ptr_importe], [ptr_ban_id], [ptr_numero_tran], [ptr_est_id]) VALUES (4, 2, CAST(0x0000A87100000000 AS DateTime), CAST(10000.000000 AS Numeric(19, 6)), 31, CAST(100000 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_TRANFERENCIA] ([ptr_id], [ptr_vca_id], [ptr_fecha_docto], [ptr_importe], [ptr_ban_id], [ptr_numero_tran], [ptr_est_id]) VALUES (6, 14, CAST(0x0000A87E00000000 AS DateTime), CAST(458850.000000 AS Numeric(19, 6)), 19, CAST(123 AS Numeric(18, 0)), N'A')
SET IDENTITY_INSERT [dbo].[PAGO_TRANFERENCIA] OFF
/****** Object:  Table [dbo].[PAGO_TARJETA_DEBITO]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO_TARJETA_DEBITO](
	[ptd_id] [int] IDENTITY(1,1) NOT NULL,
	[ptd_vca_id] [int] NOT NULL,
	[ptd_fecha_docto] [datetime] NOT NULL,
	[ptd_importe] [numeric](19, 6) NOT NULL,
	[ptd_numero_tran] [numeric](18, 0) NOT NULL,
	[ptd_ban_id] [int] NOT NULL,
	[ptd_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PAGO_TARJETA_DEBITO] PRIMARY KEY CLUSTERED 
(
	[ptd_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PAGO_TARJETA_DEBITO] ON
INSERT [dbo].[PAGO_TARJETA_DEBITO] ([ptd_id], [ptd_vca_id], [ptd_fecha_docto], [ptd_importe], [ptd_numero_tran], [ptd_ban_id], [ptd_est_id]) VALUES (1, 1, CAST(0x0000A87100000000 AS DateTime), CAST(2500.000000 AS Numeric(19, 6)), CAST(1234 AS Numeric(18, 0)), 23, N'A')
INSERT [dbo].[PAGO_TARJETA_DEBITO] ([ptd_id], [ptd_vca_id], [ptd_fecha_docto], [ptd_importe], [ptd_numero_tran], [ptd_ban_id], [ptd_est_id]) VALUES (4, 2, CAST(0x0000A87100000000 AS DateTime), CAST(2500.000000 AS Numeric(19, 6)), CAST(1234 AS Numeric(18, 0)), 23, N'A')
INSERT [dbo].[PAGO_TARJETA_DEBITO] ([ptd_id], [ptd_vca_id], [ptd_fecha_docto], [ptd_importe], [ptd_numero_tran], [ptd_ban_id], [ptd_est_id]) VALUES (5, 8, CAST(0x0000A87E00000000 AS DateTime), CAST(458850.000000 AS Numeric(19, 6)), CAST(12 AS Numeric(18, 0)), 23, N'A')
INSERT [dbo].[PAGO_TARJETA_DEBITO] ([ptd_id], [ptd_vca_id], [ptd_fecha_docto], [ptd_importe], [ptd_numero_tran], [ptd_ban_id], [ptd_est_id]) VALUES (6, 9, CAST(0x0000A87E00000000 AS DateTime), CAST(458850.000000 AS Numeric(19, 6)), CAST(1 AS Numeric(18, 0)), 31, N'A')
INSERT [dbo].[PAGO_TARJETA_DEBITO] ([ptd_id], [ptd_vca_id], [ptd_fecha_docto], [ptd_importe], [ptd_numero_tran], [ptd_ban_id], [ptd_est_id]) VALUES (7, 10, CAST(0x0000A87E00000000 AS DateTime), CAST(458850.000000 AS Numeric(19, 6)), CAST(12 AS Numeric(18, 0)), 31, N'A')
INSERT [dbo].[PAGO_TARJETA_DEBITO] ([ptd_id], [ptd_vca_id], [ptd_fecha_docto], [ptd_importe], [ptd_numero_tran], [ptd_ban_id], [ptd_est_id]) VALUES (8, 11, CAST(0x0000A87E00000000 AS DateTime), CAST(458850.000000 AS Numeric(19, 6)), CAST(12 AS Numeric(18, 0)), 31, N'A')
SET IDENTITY_INSERT [dbo].[PAGO_TARJETA_DEBITO] OFF
/****** Object:  Table [dbo].[PAGO_TARJETA_CREDITO]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO_TARJETA_CREDITO](
	[ptc_id] [int] IDENTITY(1,1) NOT NULL,
	[ptc_vca_id] [int] NOT NULL,
	[ptc_fecha_docto] [datetime] NOT NULL,
	[ptc_numero_cuota] [int] NOT NULL,
	[ptc_importe] [numeric](19, 6) NOT NULL,
	[ptc_numero_tran] [numeric](18, 0) NOT NULL,
	[ptc_ban_id] [int] NOT NULL,
	[ptc_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PAGO_TARJETA_CREDITO] PRIMARY KEY CLUSTERED 
(
	[ptc_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PAGO_TARJETA_CREDITO] ON
INSERT [dbo].[PAGO_TARJETA_CREDITO] ([ptc_id], [ptc_vca_id], [ptc_fecha_docto], [ptc_numero_cuota], [ptc_importe], [ptc_numero_tran], [ptc_ban_id], [ptc_est_id]) VALUES (1, 1, CAST(0x0000A87100000000 AS DateTime), 2, CAST(2500.000000 AS Numeric(19, 6)), CAST(123 AS Numeric(18, 0)), 31, N'A')
INSERT [dbo].[PAGO_TARJETA_CREDITO] ([ptc_id], [ptc_vca_id], [ptc_fecha_docto], [ptc_numero_cuota], [ptc_importe], [ptc_numero_tran], [ptc_ban_id], [ptc_est_id]) VALUES (4, 2, CAST(0x0000A87100000000 AS DateTime), 2, CAST(2500.000000 AS Numeric(19, 6)), CAST(123 AS Numeric(18, 0)), 31, N'A')
INSERT [dbo].[PAGO_TARJETA_CREDITO] ([ptc_id], [ptc_vca_id], [ptc_fecha_docto], [ptc_numero_cuota], [ptc_importe], [ptc_numero_tran], [ptc_ban_id], [ptc_est_id]) VALUES (6, 12, CAST(0x0000A87E00000000 AS DateTime), 12, CAST(458850.000000 AS Numeric(19, 6)), CAST(123 AS Numeric(18, 0)), 32, N'A')
SET IDENTITY_INSERT [dbo].[PAGO_TARJETA_CREDITO] OFF
/****** Object:  Table [dbo].[PAGO_EFECTIVO]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO_EFECTIVO](
	[pef_id] [int] IDENTITY(1,1) NOT NULL,
	[pef_vca_id] [int] NULL,
	[pef_fecha_docto] [datetime] NULL,
	[pef_importe] [numeric](19, 6) NULL,
	[pef_est_id] [char](1) NULL,
 CONSTRAINT [PK_PAGO_EFECTIVO] PRIMARY KEY CLUSTERED 
(
	[pef_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PAGO_EFECTIVO] ON
INSERT [dbo].[PAGO_EFECTIVO] ([pef_id], [pef_vca_id], [pef_fecha_docto], [pef_importe], [pef_est_id]) VALUES (1, 1, CAST(0x0000A87100000000 AS DateTime), CAST(5000.000000 AS Numeric(19, 6)), N'A')
INSERT [dbo].[PAGO_EFECTIVO] ([pef_id], [pef_vca_id], [pef_fecha_docto], [pef_importe], [pef_est_id]) VALUES (4, 2, CAST(0x0000A87100000000 AS DateTime), CAST(5000.000000 AS Numeric(19, 6)), N'A')
INSERT [dbo].[PAGO_EFECTIVO] ([pef_id], [pef_vca_id], [pef_fecha_docto], [pef_importe], [pef_est_id]) VALUES (6, 13, CAST(0x0000A87E00000000 AS DateTime), CAST(458850.000000 AS Numeric(19, 6)), N'A')
SET IDENTITY_INSERT [dbo].[PAGO_EFECTIVO] OFF
/****** Object:  Table [dbo].[PAGO_CREDITO_SIMPLE]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO_CREDITO_SIMPLE](
	[pcs_id] [int] IDENTITY(1,1) NOT NULL,
	[pcs_vca_id] [int] NOT NULL,
	[pcs_fecha_docto] [datetime] NOT NULL,
	[pcs_numero_cuota] [int] NOT NULL,
	[pcs_importe] [numeric](19, 6) NOT NULL,
	[pcs_cuota_pagada] [int] NOT NULL,
	[pcs_est_id] [char](1) NOT NULL,
	[pcs_monto_cuota] [numeric](19, 6) NULL,
 CONSTRAINT [PK_PAGO_CREDITO_SIMPLE] PRIMARY KEY CLUSTERED 
(
	[pcs_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PAGO_CREDITO_SIMPLE] ON
INSERT [dbo].[PAGO_CREDITO_SIMPLE] ([pcs_id], [pcs_vca_id], [pcs_fecha_docto], [pcs_numero_cuota], [pcs_importe], [pcs_cuota_pagada], [pcs_est_id], [pcs_monto_cuota]) VALUES (1, 1, CAST(0x0000A87100000000 AS DateTime), 5, CAST(10000.000000 AS Numeric(19, 6)), 0, N'A', CAST(2000.000000 AS Numeric(19, 6)))
INSERT [dbo].[PAGO_CREDITO_SIMPLE] ([pcs_id], [pcs_vca_id], [pcs_fecha_docto], [pcs_numero_cuota], [pcs_importe], [pcs_cuota_pagada], [pcs_est_id], [pcs_monto_cuota]) VALUES (4, 2, CAST(0x0000A87100000000 AS DateTime), 5, CAST(10000.000000 AS Numeric(19, 6)), 5, N'A', CAST(2000.000000 AS Numeric(19, 6)))
INSERT [dbo].[PAGO_CREDITO_SIMPLE] ([pcs_id], [pcs_vca_id], [pcs_fecha_docto], [pcs_numero_cuota], [pcs_importe], [pcs_cuota_pagada], [pcs_est_id], [pcs_monto_cuota]) VALUES (5, 16, CAST(0x0000A87E00000000 AS DateTime), 5, CAST(458850.000000 AS Numeric(19, 6)), 1, N'A', CAST(91770.000000 AS Numeric(19, 6)))
SET IDENTITY_INSERT [dbo].[PAGO_CREDITO_SIMPLE] OFF
/****** Object:  Table [dbo].[PAGO_CHEQUE]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO_CHEQUE](
	[pch_id] [int] IDENTITY(1,1) NOT NULL,
	[pch_vca_id] [int] NOT NULL,
	[pch_fecha_docto] [datetime] NOT NULL,
	[pch_importe] [numeric](19, 6) NOT NULL,
	[pch_ban_id] [int] NOT NULL,
	[pch_numero_docto] [numeric](18, 0) NOT NULL,
	[pch_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PAGO_CHEQUE] PRIMARY KEY CLUSTERED 
(
	[pch_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PAGO_CHEQUE] ON
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (1, 1, CAST(0x0000A87100000000 AS DateTime), CAST(10000.000000 AS Numeric(19, 6)), 23, CAST(1 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (2, 1, CAST(0x0000A89000000000 AS DateTime), CAST(10000.000000 AS Numeric(19, 6)), 29, CAST(2 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (7, 2, CAST(0x0000A87100000000 AS DateTime), CAST(10000.000000 AS Numeric(19, 6)), 23, CAST(1 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (8, 2, CAST(0x0000A89000000000 AS DateTime), CAST(10000.000000 AS Numeric(19, 6)), 29, CAST(2 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (10, 3, CAST(0x0000A87E00000000 AS DateTime), CAST(458850.000000 AS Numeric(19, 6)), 19, CAST(1 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (11, 4, CAST(0x0000A87E00000000 AS DateTime), CAST(458850.000000 AS Numeric(19, 6)), 28, CAST(2 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (12, 5, CAST(0x0000A87E00000000 AS DateTime), CAST(458849.000000 AS Numeric(19, 6)), 23, CAST(1 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (13, 5, CAST(0x0000A87F00000000 AS DateTime), CAST(1.000000 AS Numeric(19, 6)), 31, CAST(2 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (14, 6, CAST(0x0000A87F00000000 AS DateTime), CAST(458849.000000 AS Numeric(19, 6)), 23, CAST(1 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (15, 6, CAST(0x0000A87F00000000 AS DateTime), CAST(1.000000 AS Numeric(19, 6)), 31, CAST(2 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (20, 15, CAST(0x0000A87F00000000 AS DateTime), CAST(458840.000000 AS Numeric(19, 6)), 31, CAST(1 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (21, 15, CAST(0x0000A89B00000000 AS DateTime), CAST(5.000000 AS Numeric(19, 6)), 32, CAST(2 AS Numeric(18, 0)), N'A')
INSERT [dbo].[PAGO_CHEQUE] ([pch_id], [pch_vca_id], [pch_fecha_docto], [pch_importe], [pch_ban_id], [pch_numero_docto], [pch_est_id]) VALUES (22, 15, CAST(0x0000A8B700000000 AS DateTime), CAST(5.000000 AS Numeric(19, 6)), 30, CAST(3 AS Numeric(18, 0)), N'A')
SET IDENTITY_INSERT [dbo].[PAGO_CHEQUE] OFF
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[cli_rut] [nvarchar](11) NOT NULL,
	[cli_nombre] [nvarchar](100) NOT NULL,
	[cli_giro] [nvarchar](25) NULL,
	[cli_email] [nvarchar](50) NULL,
	[cli_telefono] [int] NULL,
	[cli_calle] [nvarchar](100) NULL,
	[cli_numero] [int] NULL,
	[cli_departamento] [nvarchar](25) NULL,
	[cli_est_id] [char](1) NULL,
	[cli_com_id] [nvarchar](5) NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[cli_rut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CLIENTE] ([cli_rut], [cli_nombre], [cli_giro], [cli_email], [cli_telefono], [cli_calle], [cli_numero], [cli_departamento], [cli_est_id], [cli_com_id]) VALUES (N'15191062-9', N'FABIAN OLIVA', N'PARTICULAR', N'asd@asd.cl', 955556666, N'VOLCAN OSORNO', 1436, N'0', N'A', N'8109')
INSERT [dbo].[CLIENTE] ([cli_rut], [cli_nombre], [cli_giro], [cli_email], [cli_telefono], [cli_calle], [cli_numero], [cli_departamento], [cli_est_id], [cli_com_id]) VALUES (N'16514103-2', N'ROBERTO BRIONES', N'PARTICULAR', N'ROBERTO_BRIONES@LIVE.COM', 952074574, N'UNION', 210, N'406C', N'A', N'13127')
INSERT [dbo].[CLIENTE] ([cli_rut], [cli_nombre], [cli_giro], [cli_email], [cli_telefono], [cli_calle], [cli_numero], [cli_departamento], [cli_est_id], [cli_com_id]) VALUES (N'17574446-0', N'RUTH GUTIERREZ', N'PARTICULAR', N'RUTHGUTIERREZ1307@GMAIL.COM', 967861123, N'union', 210, N'406C', N'A', N'13127')
/****** Object:  Table [dbo].[ALMACEN]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ALMACEN](
	[alm_id] [int] IDENTITY(1000,1) NOT NULL,
	[alm_nombre] [nvarchar](100) NOT NULL,
	[alm_calle] [nvarchar](100) NOT NULL,
	[alm_numero] [int] NOT NULL,
	[alm_suc_id] [int] NOT NULL,
	[alm_com_id] [nvarchar](5) NOT NULL,
	[alm_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_ALMACENN] PRIMARY KEY CLUSTERED 
(
	[alm_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ALMACEN] ON
INSERT [dbo].[ALMACEN] ([alm_id], [alm_nombre], [alm_calle], [alm_numero], [alm_suc_id], [alm_com_id], [alm_est_id]) VALUES (1000, N'Almacen Quillón', N'El Roble', 399, 4, N'8413', N'A')
INSERT [dbo].[ALMACEN] ([alm_id], [alm_nombre], [alm_calle], [alm_numero], [alm_suc_id], [alm_com_id], [alm_est_id]) VALUES (1001, N'Almacen Florida', N'Eleuterio Ramirez', 587, 5, N'8104', N'A')
INSERT [dbo].[ALMACEN] ([alm_id], [alm_nombre], [alm_calle], [alm_numero], [alm_suc_id], [alm_com_id], [alm_est_id]) VALUES (1002, N'Almacen Santa Juana', N'direccion sta. Juana', 338, 6, N'8109', N'A')
INSERT [dbo].[ALMACEN] ([alm_id], [alm_nombre], [alm_calle], [alm_numero], [alm_suc_id], [alm_com_id], [alm_est_id]) VALUES (1005, N'Almacen Nacimiento', N'Prieto ', 471, 7, N'8306', N'A')
INSERT [dbo].[ALMACEN] ([alm_id], [alm_nombre], [alm_calle], [alm_numero], [alm_suc_id], [alm_com_id], [alm_est_id]) VALUES (1006, N'Almacen Negrete', N'Ignacio Carrera Pinto #103', 103, 8, N'8307', N'A')
INSERT [dbo].[ALMACEN] ([alm_id], [alm_nombre], [alm_calle], [alm_numero], [alm_suc_id], [alm_com_id], [alm_est_id]) VALUES (1007, N'Almacen Renaico', N'Santiago Watts #215 C-', 215, 9, N'9209', N'A')
INSERT [dbo].[ALMACEN] ([alm_id], [alm_nombre], [alm_calle], [alm_numero], [alm_suc_id], [alm_com_id], [alm_est_id]) VALUES (1008, N'Almacen Ángol', N'Avenida O''Higgins #461', 461, 10, N'9201', N'A')
SET IDENTITY_INSERT [dbo].[ALMACEN] OFF
/****** Object:  Table [dbo].[BANCO]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BANCO](
	[ban_id] [int] IDENTITY(1,1) NOT NULL,
	[ban_descripcion] [nvarchar](100) NULL,
	[ban_est_id] [char](1) NULL,
 CONSTRAINT [PK_BANCO] PRIMARY KEY CLUSTERED 
(
	[ban_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BANCO] ON
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (18, N'BANCO DEL ESTADO DE CHILE ', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (19, N'BANCO DE CHILE', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (20, N'BANCO INTERNACIONAL ', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (21, N'SCOTIABANK CHILE', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (22, N'BANCO DE CREDITO E INVERSIONES ', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (23, N'BANCO BICE', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (24, N'HSBC BANK (CHILE) ', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (25, N'BANCO SANTANDER-CHILE ', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (26, N'ITAÚ CORPBANCA', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (27, N'BANCO SECURITY', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (28, N'BANCO FALABELLA', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (29, N'BANCO RIPLEY', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (30, N'BANCO CONSORCIO', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (31, N'BANCO BILBAO VIZCAYA ARGENTARIA, CHILE (BBVA) ', N'A')
INSERT [dbo].[BANCO] ([ban_id], [ban_descripcion], [ban_est_id]) VALUES (32, N'BANCO BTG PACTUAL CHILE ', N'A')
SET IDENTITY_INSERT [dbo].[BANCO] OFF
/****** Object:  Table [dbo].[COMUNA]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMUNA](
	[com_id] [nchar](5) NOT NULL,
	[com_descripcion] [nvarchar](30) NOT NULL,
	[com_reg_id] [nchar](2) NOT NULL,
	[com_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_COMUNA] PRIMARY KEY CLUSTERED 
(
	[com_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10101', N'Puerto Montt', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10102', N'Calbuco', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10103', N'Cochamó', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10104', N'Fresia', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10105', N'Frutillar', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10106', N'Los Muermos', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10107', N'Llanquihue', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10108', N'Maullín', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10109', N'Puerto Varas', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10201', N'Castro', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10202', N'Ancud', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10203', N'Chonchi', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10204', N'Curaco de Vélez', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10205', N'Dalcahue', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10206', N'Puqueldón', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10207', N'Queilén', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10208', N'Quellón', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10209', N'Quemchi', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10210', N'Quinchao', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10301', N'Osorno', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10302', N'Puerto Octay', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10303', N'Purranque', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10304', N'Puyehue', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10305', N'Río Negro', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10306', N'San Juan de la Costa', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10307', N'San Pablo', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10401', N'Chaitén', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10402', N'Futaleufú', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10403', N'Hualaihué', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10404', N'Palena', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1101 ', N'Iquique', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1107 ', N'Alto Hospicio', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11101', N'Coihaique', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11102', N'Lago Verde', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11201', N'Aisén', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11202', N'Cisnes', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11203', N'Guaitecas', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11301', N'Cochrane', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11302', N'O''Higgins', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11303', N'Tortel', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11401', N'Chile Chico', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11402', N'Río Ibáñez', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12101', N'Punta Arenas', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12102', N'Laguna Blanca', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12103', N'Río Verde', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12104', N'San Gregorio', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12201', N'Cabo de Hornos', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12202', N'Antártica', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12301', N'Porvenir', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12302', N'Primavera', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12303', N'Timaukel', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12401', N'Natales', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12402', N'Torres del Paine', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13101', N'Santiago', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13102', N'Cerrillos', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13103', N'Cerro Navia', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13104', N'Conchalí', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13105', N'El Bosque', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13106', N'Estación Central', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13107', N'Huechuraba', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13108', N'Independencia', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13109', N'La Cisterna', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13110', N'La Florida', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13111', N'La Granja', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13112', N'La Pintana', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13113', N'La Reina', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13114', N'Las Condes', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13115', N'Lo Barnechea', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13116', N'Lo Espejo', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13117', N'Lo Prado', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13118', N'Macul', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13119', N'Maipú', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13120', N'Ñuñoa', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13121', N'Pedro Aguirre Cerda', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13122', N'Peñalolén', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13123', N'Providencia', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13124', N'Pudahuel', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13125', N'Quilicura', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13126', N'Quinta Normal', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13127', N'Recoleta', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13128', N'Renca', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13129', N'San Joaquín', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13130', N'San Miguel', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13131', N'San Ramón', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13132', N'Vitacura', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13201', N'Puente Alto', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13202', N'Pirque', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13203', N'San José de Maipo', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13301', N'Colina', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13302', N'Lampa', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13303', N'Tiltil', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13401', N'San Bernardo', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13402', N'Buin', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13403', N'Calera de Tango', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13404', N'Paine', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13501', N'Melipilla', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13502', N'Alhué', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13503', N'Curacaví', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13504', N'María Pinto', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13505', N'San Pedro', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13601', N'Talagante', N'13', N'A')
GO
print 'Processed 100 total records'
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13602', N'El Monte', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13603', N'Isla de Maipo', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13604', N'Padre Hurtado', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13605', N'Peñaflor', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1401 ', N'Pozo Almonte', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1402 ', N'Camiña', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1403 ', N'Colchane', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1404 ', N'Huara', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1405 ', N'Pica', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14101', N'Valdivia', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14102', N'Corral', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14103', N'Lanco', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14104', N'Los Lagos', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14105', N'Máfil', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14106', N'Mariquina', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14107', N'Paillaco', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14108', N'Panguipulli', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14201', N'La Unión', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14202', N'Futrono', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14203', N'Lago Ranco', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14204', N'Río Bueno', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'15101', N'Arica', N'15', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'15102', N'Camarones', N'15', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'15201', N'Putre', N'15', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'15202', N'General Lagos', N'15', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2101 ', N'Antofagasta', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2102 ', N'Mejillones', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2103 ', N'Sierra Gorda', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2104 ', N'Taltal', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2201 ', N'Calama', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2202 ', N'Ollagüe', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2203 ', N'San Pedro de Atacama', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2301 ', N'Tocopilla', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2302 ', N'María Elena', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3101 ', N'Copiapó', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3102 ', N'Caldera', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3103 ', N'Tierra Amarilla', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3201 ', N'Chañaral', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3202 ', N'Diego de Almagro', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3301 ', N'Vallenar', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3302 ', N'Alto del Carmen', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3303 ', N'Freirina', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3304 ', N'Huasco', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4101 ', N'La Serena', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4102 ', N'Coquimbo', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4103 ', N'Andacollo', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4104 ', N'La Higuera', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4105 ', N'Paiguano', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4106 ', N'Vicuña', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4201 ', N'Illapel', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4202 ', N'Canela', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4203 ', N'Los Vilos', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4204 ', N'Salamanca', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4301 ', N'Ovalle', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4302 ', N'Combarbalá', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4303 ', N'Monte Patria', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4304 ', N'Punitaqui', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4305 ', N'Río Hurtado', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5101 ', N'Valparaíso', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5102 ', N'Casablanca', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5103 ', N'Concón', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5104 ', N'Juan Fernández', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5105 ', N'Puchuncaví', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5107 ', N'Quintero', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5109 ', N'Viña del Mar', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5201 ', N'Isla  de Pascua', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5301 ', N'Los Andes', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5302 ', N'Calle Larga', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5303 ', N'Rinconada', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5304 ', N'San Esteban', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5401 ', N'La Ligua', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5402 ', N'Cabildo', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5403 ', N'Papudo', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5404 ', N'Petorca', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5405 ', N'Zapallar', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5501 ', N'Quillota', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5502 ', N'Calera', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5503 ', N'Hijuelas', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5504 ', N'La Cruz', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5506 ', N'Nogales', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5601 ', N'San Antonio', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5602 ', N'Algarrobo', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5603 ', N'Cartagena', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5604 ', N'El Quisco', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5605 ', N'El Tabo', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5606 ', N'Santo Domingo', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5701 ', N'San Felipe', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5702 ', N'Catemu', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5703 ', N'Llaillay', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5704 ', N'Panquehue', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5705 ', N'Putaendo', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5706 ', N'Santa María', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5801 ', N'Quilpué', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5802 ', N'Limache', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5803 ', N'Olmué', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5804 ', N'Villa Alemana', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6101 ', N'Rancagua', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6102 ', N'Codegua', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6103 ', N'Coinco', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6104 ', N'Coltauco', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6105 ', N'Doñihue', N'6 ', N'A')
GO
print 'Processed 200 total records'
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6106 ', N'Graneros', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6107 ', N'Las Cabras', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6108 ', N'Machalí', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6109 ', N'Malloa', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6110 ', N'Mostazal', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6111 ', N'Olivar', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6112 ', N'Peumo', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6113 ', N'Pichidegua', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6114 ', N'Quinta de Tilcoco', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6115 ', N'Rengo', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6116 ', N'Requínoa', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6117 ', N'San Vicente', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6201 ', N'Pichilemu', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6202 ', N'La Estrella', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6203 ', N'Litueche', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6204 ', N'Marchihue', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6205 ', N'Navidad', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6206 ', N'Paredones', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6301 ', N'San Fernando', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6302 ', N'Chépica', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6303 ', N'Chimbarongo', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6304 ', N'Lolol', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6305 ', N'Nancagua', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6306 ', N'Palmilla', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6307 ', N'Peralillo', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6308 ', N'Placilla', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6309 ', N'Pumanque', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6310 ', N'Santa Cruz', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7101 ', N'Talca', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7102 ', N'Constitución', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7103 ', N'Curepto', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7104 ', N'Empedrado', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7105 ', N'Maule', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7106 ', N'Pelarco', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7107 ', N'Pencahue', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7108 ', N'Río Claro', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7109 ', N'San Clemente', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7110 ', N'San Rafael', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7201 ', N'Cauquenes', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7202 ', N'Chanco', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7203 ', N'Pelluhue', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7301 ', N'Curicó', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7302 ', N'Hualañé', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7303 ', N'Licantén', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7304 ', N'Molina', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7305 ', N'Rauco', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7306 ', N'Romeral', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7307 ', N'Sagrada Familia', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7308 ', N'Teno', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7309 ', N'Vichuquén', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7401 ', N'Linares', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7402 ', N'Colbún', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7403 ', N'Longaví', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7404 ', N'Parral', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7405 ', N'Retiro', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7406 ', N'San Javier', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7407 ', N'Villa Alegre', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7408 ', N'Yerbas Buenas', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8101 ', N'Concepción', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8102 ', N'Coronel', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8103 ', N'Chiguayante', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8104 ', N'Florida', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8105 ', N'Hualqui', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8106 ', N'Lota', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8107 ', N'Penco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8108 ', N'San Pedro de la Paz', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8109 ', N'Santa Juana', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8110 ', N'Talcahuano', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8111 ', N'Tomé', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8112 ', N'Hualpén', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8201 ', N'Lebu', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8202 ', N'Arauco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8203 ', N'Cañete', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8204 ', N'Contulmo', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8205 ', N'Curanilahue', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8206 ', N'Los Álamos', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8207 ', N'Tirúa', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8301 ', N'Los Ángeles', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8302 ', N'Antuco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8303 ', N'Cabrero', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8304 ', N'Laja', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8305 ', N'Mulchén', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8306 ', N'Nacimiento', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8307 ', N'Negrete', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8308 ', N'Quilaco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8309 ', N'Quilleco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8310 ', N'San Rosendo', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8311 ', N'Santa Bárbara', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8312 ', N'Tucapel', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8313 ', N'Yumbel', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8314 ', N'Alto Biobío', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8401 ', N'Chillán', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8402 ', N'Bulnes', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8403 ', N'Cobquecura', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8404 ', N'Coelemu', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8405 ', N'Coihueco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8406 ', N'Chillán Viejo', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8407 ', N'El Carmen', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8408 ', N'Ninhue', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8409 ', N'Ñiquén', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8410 ', N'Pemuco', N'8 ', N'A')
GO
print 'Processed 300 total records'
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8411 ', N'Pinto', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8412 ', N'Portezuelo', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8413 ', N'Quillón', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8414 ', N'Quirihue', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8415 ', N'Ránquil', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8416 ', N'San Carlos', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8417 ', N'San Fabián', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8418 ', N'San Ignacio', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8419 ', N'San Nicolás', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8420 ', N'Treguaco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8421 ', N'Yungay', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9101 ', N'Temuco', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9102 ', N'Carahue', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9103 ', N'Cunco', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9104 ', N'Curarrehue', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9105 ', N'Freire', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9106 ', N'Galvarino', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9107 ', N'Gorbea', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9108 ', N'Lautaro', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9109 ', N'Loncoche', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9110 ', N'Melipeuco', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9111 ', N'Nueva Imperial', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9112 ', N'Padre Las Casas', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9113 ', N'Perquenco', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9114 ', N'Pitrufquén', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9115 ', N'Pucón', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9116 ', N'Saavedra', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9117 ', N'Teodoro Schmidt', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9118 ', N'Toltén', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9119 ', N'Vilcún', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9120 ', N'Villarrica', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9121 ', N'Cholchol', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9201 ', N'Angol', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9202 ', N'Collipulli', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9203 ', N'Curacautín', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9204 ', N'Ercilla', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9205 ', N'Lonquimay', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9206 ', N'Los Sauces', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9207 ', N'Lumaco', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9208 ', N'Purén', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9209 ', N'Renaico', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9210 ', N'Traiguén', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9211 ', N'Victoria', N'9 ', N'A')
/****** Object:  Table [dbo].[VENTA_DETALLE]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VENTA_DETALLE](
	[vde_id] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[vde_vca_id] [numeric](19, 0) NOT NULL,
	[vde_pro_id] [nvarchar](50) NOT NULL,
	[vde_cantidad] [int] NOT NULL,
	[vde_total] [numeric](19, 6) NOT NULL,
	[vde_est_id] [char](1) NOT NULL,
	[vde_precio_unitario] [int] NOT NULL,
	[vde_pro_descripcion] [nvarchar](100) NULL,
 CONSTRAINT [PK_VENTA_DETALLE] PRIMARY KEY CLUSTERED 
(
	[vde_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[VENTA_DETALLE] ON
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(1 AS Numeric(19, 0)), CAST(1 AS Numeric(19, 0)), N'11111', 100, CAST(50000.000000 AS Numeric(19, 6)), N'A', 500, N'fabian')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(4 AS Numeric(19, 0)), CAST(2 AS Numeric(19, 0)), N'11111', 100, CAST(50000.000000 AS Numeric(19, 6)), N'A', 500, N'fabian')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(9 AS Numeric(19, 0)), CAST(3 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(10 AS Numeric(19, 0)), CAST(3 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(13 AS Numeric(19, 0)), CAST(4 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(14 AS Numeric(19, 0)), CAST(4 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(17 AS Numeric(19, 0)), CAST(5 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(18 AS Numeric(19, 0)), CAST(5 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(21 AS Numeric(19, 0)), CAST(6 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(22 AS Numeric(19, 0)), CAST(6 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(23 AS Numeric(19, 0)), CAST(7 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(24 AS Numeric(19, 0)), CAST(7 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(35 AS Numeric(19, 0)), CAST(8 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(36 AS Numeric(19, 0)), CAST(8 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(39 AS Numeric(19, 0)), CAST(9 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(40 AS Numeric(19, 0)), CAST(9 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(43 AS Numeric(19, 0)), CAST(10 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(44 AS Numeric(19, 0)), CAST(10 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(45 AS Numeric(19, 0)), CAST(11 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(46 AS Numeric(19, 0)), CAST(11 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(47 AS Numeric(19, 0)), CAST(12 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(48 AS Numeric(19, 0)), CAST(12 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(49 AS Numeric(19, 0)), CAST(13 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(50 AS Numeric(19, 0)), CAST(13 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(51 AS Numeric(19, 0)), CAST(14 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(52 AS Numeric(19, 0)), CAST(14 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(53 AS Numeric(19, 0)), CAST(15 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(54 AS Numeric(19, 0)), CAST(15 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(55 AS Numeric(19, 0)), CAST(16 AS Numeric(19, 0)), N'10019', 1, CAST(58000.000000 AS Numeric(19, 6)), N'A', 58000, N' BASE  CON MOLDURA 2 PUERTAS   40X75X85')
INSERT [dbo].[VENTA_DETALLE] ([vde_id], [vde_vca_id], [vde_pro_id], [vde_cantidad], [vde_total], [vde_est_id], [vde_precio_unitario], [vde_pro_descripcion]) VALUES (CAST(56 AS Numeric(19, 0)), CAST(16 AS Numeric(19, 0)), N'10020', 5, CAST(425000.000000 AS Numeric(19, 6)), N'A', 85000, N' BASE  CON MOLDURA 2 PUERTAS Y TRES CAJONES   40X110X85')
SET IDENTITY_INSERT [dbo].[VENTA_DETALLE] OFF
/****** Object:  Table [dbo].[VENTA_CABECERA]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VENTA_CABECERA](
	[vca_id] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[vca_folio] [int] NULL,
	[vca_cli_rut] [nvarchar](11) NOT NULL,
	[vca_fecha_docto] [datetime] NOT NULL,
	[vca_suc_id] [int] NOT NULL,
	[vca_comentario] [text] NULL,
	[vca_tipo_docto] [nvarchar](10) NOT NULL,
	[vca_impuesto] [numeric](19, 6) NOT NULL,
	[vca_total] [numeric](19, 6) NOT NULL,
	[vca_est_id] [char](1) NOT NULL,
	[vca_estado_docto] [char](1) NOT NULL,
	[vca_emp_rut] [nvarchar](11) NOT NULL,
	[vca_TotalDescuento] [numeric](19, 6) NOT NULL,
	[vca_PorcDescuento] [int] NOT NULL,
 CONSTRAINT [PK_VENTA_CABECERA] PRIMARY KEY CLUSTERED 
(
	[vca_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[VENTA_CABECERA] ON
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(1 AS Numeric(19, 0)), 12, N'16514103-2', CAST(0x0000A87100000000 AS DateTime), 6, N'ASD', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(50000.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(0.000000 AS Numeric(19, 6)), 0)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(2 AS Numeric(19, 0)), 1, N'16514103-2', CAST(0x0000A87100000000 AS DateTime), 6, N'ASD', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(50000.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(0.000000 AS Numeric(19, 6)), 0)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(3 AS Numeric(19, 0)), 123, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(4 AS Numeric(19, 0)), 1234, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(5 AS Numeric(19, 0)), 12345, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(6 AS Numeric(19, 0)), 123456, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(7 AS Numeric(19, 0)), 321, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(8 AS Numeric(19, 0)), 123454, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(9 AS Numeric(19, 0)), 9, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(10 AS Numeric(19, 0)), 10, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(11 AS Numeric(19, 0)), 11, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(12 AS Numeric(19, 0)), 13, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(13 AS Numeric(19, 0)), 14, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(14 AS Numeric(19, 0)), 15, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(15 AS Numeric(19, 0)), 16, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
INSERT [dbo].[VENTA_CABECERA] ([vca_id], [vca_folio], [vca_cli_rut], [vca_fecha_docto], [vca_suc_id], [vca_comentario], [vca_tipo_docto], [vca_impuesto], [vca_total], [vca_est_id], [vca_estado_docto], [vca_emp_rut], [vca_TotalDescuento], [vca_PorcDescuento]) VALUES (CAST(16 AS Numeric(19, 0)), 17, N'16514103-2', CAST(0x0000A88700000000 AS DateTime), 5, N'hola mundo mundo', N'Boleta', CAST(0.000000 AS Numeric(19, 6)), CAST(458850.000000 AS Numeric(19, 6)), N'A', N'O', N'Empleado 1', CAST(24150.000000 AS Numeric(19, 6)), 5)
SET IDENTITY_INSERT [dbo].[VENTA_CABECERA] OFF
/****** Object:  Table [dbo].[USUARIO]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIO](
	[usu_correo] [nvarchar](50) NOT NULL,
	[usu_contrasena] [nvarchar](25) NOT NULL,
	[usu_emp_rut] [nchar](11) NOT NULL,
	[usu_est_id] [char](1) NOT NULL,
	[usu_max_descuento] [int] NULL,
	[usu_suc_id] [int] NULL,
 CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED 
(
	[usu_correo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[USUARIO] ([usu_correo], [usu_contrasena], [usu_emp_rut], [usu_est_id], [usu_max_descuento], [usu_suc_id]) VALUES (N'roberto_briones@live.com', N'emilia,.-123', N'16514103-2 ', N'A', 5, 5)
INSERT [dbo].[USUARIO] ([usu_correo], [usu_contrasena], [usu_emp_rut], [usu_est_id], [usu_max_descuento], [usu_suc_id]) VALUES (N'ruthgutierrez1307@gmail.com', N'emilia1', N'17574446-0 ', N'A', 5, 4)
/****** Object:  Table [dbo].[REGION]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REGION](
	[reg_id] [nchar](2) NOT NULL,
	[reg_descripcion] [nvarchar](50) NOT NULL,
	[reg_orden] [nchar](2) NOT NULL,
	[reg_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_REGION] PRIMARY KEY CLUSTERED 
(
	[reg_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'1 ', N'Tarapacá', N'1 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'10', N'Los Lagos', N'10', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'11', N'Aisén C. Ibañez del Campo', N'11', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'12', N'Magallanes y de La Antartica Chilena', N'12', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'13', N'Metropolitana de Santiago', N'13', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'14', N'Los Ríos', N'14', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'15', N'Arica y Parinacota', N'15', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'2 ', N'Antofagasta', N'2 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'3 ', N'Atacama', N'3 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'4 ', N'Coquimbo', N'4 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'5 ', N'Valparaíso', N'5 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'6 ', N'Libertador B. O''Higgins', N'6 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'7 ', N'Maule', N'7 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'8 ', N'Bíobío', N'8 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'9 ', N'La Araucanía', N'9 ', N'A')
/****** Object:  Table [dbo].[ESTADO]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ESTADO](
	[est_id] [char](1) NOT NULL,
	[est_descripcion] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[est_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[emp_rut] [nvarchar](11) NOT NULL,
	[emp_nombre] [nvarchar](100) NOT NULL,
	[emp_telefono] [int] NULL,
	[emp_est_id] [char](1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[EMPLEADO] ([emp_rut], [emp_nombre], [emp_telefono], [emp_est_id]) VALUES (N'16514103-2', N'ROBERTO BRIONES', 952074574, N'A')
INSERT [dbo].[EMPLEADO] ([emp_rut], [emp_nombre], [emp_telefono], [emp_est_id]) VALUES (N'17574446-0', N'RUTH GUTIERREZ', 988965753, N'A')
/****** Object:  Table [dbo].[LOG]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clase] [nvarchar](50) NOT NULL,
	[metodo] [nvarchar](50) NOT NULL,
	[error] [text] NOT NULL,
	[fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LOG] ON
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (1, N'Cliente.cs', N'GetByRut', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csCliente.armaObjeto(DataTable dt) en c:\Users\win\Documents\GitHub\Inmobiliaria\App_Code\csCliente.cs:línea 109
   en csCliente.GetByRut(String rut) en c:\Users\win\Documents\GitHub\Inmobiliaria\App_Code\csCliente.cs:línea 83', CAST(0x0000A84F01222CA5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (2, N'Cliente.cs', N'GetByRut', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csCliente.armaObjeto(DataTable dt) en c:\Users\win\Documents\GitHub\Inmobiliaria\App_Code\csCliente.cs:línea 111
   en csCliente.GetByRut(String rut) en c:\Users\win\Documents\GitHub\Inmobiliaria\App_Code\csCliente.cs:línea 85', CAST(0x0000A84F0123FC4D AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (3, N'csVentaCabecera.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): Error al convertir el tipo de datos nvarchar a datetime.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csVentaCabecera.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 101
ClientConnectionId:3076d287-db1a-4bfb-985d-89677b62dc63
Error Number:8114,State:5,Class:16', CAST(0x0000A85D0176AFB3 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (4, N'csVentaCabecera.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): Error al convertir el tipo de datos nvarchar a datetime.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csVentaCabecera.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 101
ClientConnectionId:fe3c0048-8ed5-4728-aa5b-5039b997b97c
Error Number:8114,State:5,Class:16', CAST(0x0000A85D017882FF AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (5, N'csVentaCabecera.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''VentaCabecera_Insert'' esperaba el parámetro ''@vca_fecha_docto'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csVentaCabecera.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 101
ClientConnectionId:0b668f0e-814e-405c-8b55-6cba03285944
Error Number:201,State:4,Class:16', CAST(0x0000A85D0179E0EC AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (6, N'csVentaCabecera.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''VentaCabecera_Insert'' esperaba el parámetro ''@vca_fecha_docto'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csVentaCabecera.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 101
ClientConnectionId:b1760244-a19f-471d-8b55-281e275b13a8
Error Number:201,State:4,Class:16', CAST(0x0000A85D0179FEAB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (7, N'csVentaCabecera.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''VentaCabecera_Insert'' esperaba el parámetro ''@retorno'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csVentaCabecera.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 101
ClientConnectionId:3ec6e19c-71d1-441b-aca3-3d37ded7fec0
Error Number:201,State:4,Class:16', CAST(0x0000A85D017AE68F AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (8, N'csVentaCabecera.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): La función o el procedimiento VentaCabecera_Insert tiene demasiados argumentos.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csVentaCabecera.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 105
ClientConnectionId:d0c4da4a-cc9b-4cab-9ff8-2951b340193a
Error Number:8144,State:2,Class:16', CAST(0x0000A85D01823CCD AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (9, N'csVentaCabecera.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): La función o el procedimiento VentaCabecera_Insert tiene demasiados argumentos.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csVentaCabecera.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 105
ClientConnectionId:e9d6649f-e35f-4138-877b-cddce841c599
Error Number:8144,State:2,Class:16', CAST(0x0000A85D0182E51C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (10, N'csVentaCabecera.cs', N'Insert', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 120', CAST(0x0000A85D0184662C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (11, N'Banco.cs', N'GetAll', N'System.IndexOutOfRangeException: No se puede encontrar la columna 2.
   en System.Data.DataColumnCollection.get_Item(Int32 index)
   en System.Data.DataRow.get_Item(Int32 columnIndex)
   en csBanco.GetAll() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csBanco.cs:línea 45', CAST(0x0000A861011F8FA0 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (12, N'Banco.cs', N'GetAll', N'System.IndexOutOfRangeException: No se puede encontrar la columna 2.
   en System.Data.DataColumnCollection.get_Item(Int32 index)
   en System.Data.DataRow.get_Item(Int32 columnIndex)
   en csBanco.GetAll() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csBanco.cs:línea 45', CAST(0x0000A8610120501A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (13, N'Banco.cs', N'GetAll', N'System.IndexOutOfRangeException: No se puede encontrar la columna 2.
   en System.Data.DataColumnCollection.get_Item(Int32 index)
   en System.Data.DataRow.get_Item(Int32 columnIndex)
   en csBanco.GetAll() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csBanco.cs:línea 45', CAST(0x0000A8610120A36A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (14, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861013BEF10 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (15, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861013BEF15 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (16, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861013C411C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (17, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861013C412F AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (18, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861013C5FD2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (19, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861013C5FE6 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (20, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861013C7EB8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (21, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861013C7ECF AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (22, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861013CA9A5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (23, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861013CA9BD AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (24, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861013CB753 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (25, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861013CB76B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (26, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861014645D1 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (27, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861014645EB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (28, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A86101465DFE AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (29, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A86101465E15 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (30, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A8610146E9D4 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (31, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A8610146E9ED AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (32, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A86101471E87 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (33, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A86101471E9F AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (34, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A86101474553 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (35, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A86101474566 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (36, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A8610147816C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (37, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861014781BB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (38, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A86101483B01 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (39, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A86101483B15 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (40, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861014907CD AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (41, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861014907E9 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (42, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A86101492323 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (43, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A86101492336 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (44, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A86101494753 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (45, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A86101494767 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (46, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861014971D6 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (47, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A861014971ED AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (48, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A862017160E8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (49, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 73', CAST(0x0000A862017160E8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (50, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 74', CAST(0x0000A862017195AD AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (51, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 74', CAST(0x0000A862017195AD AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (52, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 74', CAST(0x0000A86201719CED AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (53, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 74', CAST(0x0000A86201719CFC AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (54, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 74', CAST(0x0000A862017218D9 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (55, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 74', CAST(0x0000A862017218D9 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (56, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 76', CAST(0x0000A8620173D9F3 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (57, N'csVentaCabecera.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.GetMaxDocNum() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 76', CAST(0x0000A8620173D9F4 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (58, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''MedioPagoCH_Insert'' esperaba el parámetro ''@fechaDocto'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCH.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCH.cs:línea 84
ClientConnectionId:395d7af4-ddf4-424d-a247-e7ab0f777c59
Error Number:201,State:4,Class:16', CAST(0x0000A86401151C93 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (59, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''MedioPagoCH_Insert'' esperaba el parámetro ''@fechaDocto'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCH.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCH.cs:línea 84
ClientConnectionId:2c2d05f1-408b-4a2d-8b05-974983d407ef
Error Number:201,State:4,Class:16', CAST(0x0000A86401151CDB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (60, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''MedioPagoCH_Insert'' esperaba el parámetro ''@fechaDocto'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCH.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCH.cs:línea 84
ClientConnectionId:c01c7dd4-4564-4549-bc15-96c386553dfd
Error Number:201,State:4,Class:16', CAST(0x0000A86401151D33 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (61, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''MedioPagoCH_Insert'' esperaba el parámetro ''@fechaDocto'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCH.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCH.cs:línea 84
ClientConnectionId:3a8cf938-8e49-4570-b28e-89850f461b7e
Error Number:201,State:4,Class:16', CAST(0x0000A86401176AA0 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (62, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''MedioPagoCH_Insert'' esperaba el parámetro ''@fechaDocto'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCH.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCH.cs:línea 84
ClientConnectionId:b1fe2231-f1c1-47da-bddb-6283d05e5682
Error Number:201,State:4,Class:16', CAST(0x0000A86401176AF1 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (63, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''MedioPagoCH_Insert'' esperaba el parámetro ''@est_id'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCH.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCH.cs:línea 85
ClientConnectionId:f608916c-0054-4f2c-bd3b-b51a598c463f
Error Number:201,State:4,Class:16', CAST(0x0000A8640118C56C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (64, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''MedioPagoCH_Insert'' esperaba el parámetro ''@est_id'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCH.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCH.cs:línea 85
ClientConnectionId:66271ea0-dd6e-4ff4-a1aa-efea5cbd0947
Error Number:201,State:4,Class:16', CAST(0x0000A8640118C5A9 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (65, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''MedioPagoCH_Insert'' esperaba el parámetro ''@est_id'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCH.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCH.cs:línea 85
ClientConnectionId:12cc1e49-82e8-401a-94b0-9a4c56ab0c6a
Error Number:201,State:4,Class:16', CAST(0x0000A864011998AB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (66, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''MedioPagoCH_Insert'' esperaba el parámetro ''@est_id'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCH.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCH.cs:línea 85
ClientConnectionId:5c7b76f2-62f2-4414-9aef-bb28ec5d38f5
Error Number:201,State:4,Class:16', CAST(0x0000A864011998C5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (67, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 208', CAST(0x0000A8640173B67C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (68, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 208', CAST(0x0000A864017525E4 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (69, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 208', CAST(0x0000A86401760283 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (70, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 208', CAST(0x0000A8640176C433 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (71, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 208', CAST(0x0000A86401772AB6 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (72, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 208', CAST(0x0000A86401780375 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (73, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 208', CAST(0x0000A8640178310D AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (74, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 208', CAST(0x0000A8640178C15E AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (75, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): No se encontró el procedimiento almacenado ''MedioPagoTR_Insert''.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoTR.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTR.cs:línea 94
ClientConnectionId:dfd2500e-bcf9-451c-b802-fb88ecf55a01
Error Number:2812,State:62,Class:16', CAST(0x0000A86401792F01 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (76, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): No se encontró el procedimiento almacenado ''MedioPagoTR_Insert''.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoTR.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTR.cs:línea 94
ClientConnectionId:41a8cf69-bc63-40bc-98a7-739fc2149bb6
Error Number:2812,State:62,Class:16', CAST(0x0000A864017AB7E8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (77, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): No se encontró el procedimiento almacenado ''MedioPagoTR_Insert''.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoTR.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTR.cs:línea 94
ClientConnectionId:a0a6768b-d56e-49ee-8fe2-f80c53ae2dfe
Error Number:2812,State:62,Class:16', CAST(0x0000A864017BA838 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (78, N'MedioPagoCH.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): No se encontró el procedimiento almacenado ''MedioPagoTR_Insert''.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoTR.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTR.cs:línea 94
ClientConnectionId:3507fe1f-7f7c-47ad-905d-5802ddb7c610
Error Number:2812,State:62,Class:16', CAST(0x0000A864017D062E AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (79, N'VentaCabecera.cs', N'ClienteGetByRut', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.armaObjeto(DataTable dt) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 281
   en csVentaCabecera.ClienteGetByRut(String rut) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 173', CAST(0x0000A864018787EF AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (80, N'VentaCabecera.cs', N'ClienteGetByRut', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.armaObjeto(DataTable dt) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 281
   en csVentaCabecera.ClienteGetByRut(String rut) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 173', CAST(0x0000A8640187D037 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (81, N'VentaCabecera.cs', N'ClienteGetByRut', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.armaObjeto(DataTable dt) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 281
   en csVentaCabecera.ClienteGetByRut(String rut) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 173', CAST(0x0000A86401890157 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (82, N'MedioPagoEF.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): La función o el procedimiento MedioPagoEF_Insert tiene demasiados argumentos.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoEF.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoEF.cs:línea 84
ClientConnectionId:003808bd-6512-4c51-9e01-2ce2074bf5db
Error Number:8144,State:2,Class:16', CAST(0x0000A86601475764 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (83, N'MedioPagoEF.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): La función o el procedimiento MedioPagoEF_Insert tiene demasiados argumentos.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoEF.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoEF.cs:línea 84
ClientConnectionId:755c61da-d284-4acf-8faa-784ce1b46cc5
Error Number:8144,State:2,Class:16', CAST(0x0000A8660148F819 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (84, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 213', CAST(0x0000A86900DEA84E AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (85, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 213', CAST(0x0000A86900F751DE AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (86, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 217', CAST(0x0000A86900F87497 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (87, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 217', CAST(0x0000A86900F91DD5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (88, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 220', CAST(0x0000A8690104EC02 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (89, N'csVentaCabecera.cs', N'DeleteByVcaId', N'System.Data.SqlClient.SqlException (0x80131904): El nombre de columna ''tcr_vca_id'' no es válido.
El nombre de columna ''tde_vca_id'' no es válido.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csVentaCabecera.DeleteByVcaId() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 181
ClientConnectionId:86a801f8-e5f7-4b20-ae43-068904750fce
Error Number:207,State:1,Class:16', CAST(0x0000A8690109B0E8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (90, N'csVentaCabecera.cs', N'GetByParams', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.armaObjeto(DataTable dt) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 299
   en csVentaCabecera.GetByParams() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 278', CAST(0x0000A86901281EE2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (91, N'csVentaCabecera.cs', N'GetByParams', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.armaObjeto(DataTable dt) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 299
   en csVentaCabecera.GetByParams() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 278', CAST(0x0000A86901295555 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (92, N'csVentaCabecera.cs', N'GetByParams', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.armaObjeto(DataTable dt) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 299
   en csVentaCabecera.GetByParams() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 278', CAST(0x0000A8690129D547 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (93, N'csVentaCabecera.cs', N'GetByParams', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.armaObjeto(DataTable dt) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 302
   en csVentaCabecera.GetByParams() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 278', CAST(0x0000A869012BAF4D AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (94, N'csVentaCabecera.cs', N'GetByParams', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.armaObjeto(DataTable dt) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 302
   en csVentaCabecera.GetByParams() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 278', CAST(0x0000A869012BD796 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (95, N'csVentaCabecera.cs', N'GetByParams', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csVentaCabecera.armaObjeto(DataTable dt) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 303
   en csVentaCabecera.GetByParams() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 278', CAST(0x0000A869012BF346 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (96, N'csMedioPagoTR.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTR.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTR.cs:línea 61', CAST(0x0000A86901552BCA AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (97, N'MedioPagoEF.cs', N'GetById', N'System.IndexOutOfRangeException: No hay ninguna fila en la posición 0.
   en System.Data.RBTree`1.GetNodeByIndex(Int32 userIndex)
   en System.Data.DataRowCollection.get_Item(Int32 index)
   en csMedioPagoEF.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoEF.cs:línea 53', CAST(0x0000A86901552BEA AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (98, N'csMedioPagoTR.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTR.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTR.cs:línea 61', CAST(0x0000A8690156CFFA AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (99, N'MedioPagoEF.cs', N'GetById', N'System.IndexOutOfRangeException: No hay ninguna fila en la posición 0.
   en System.Data.RBTree`1.GetNodeByIndex(Int32 userIndex)
   en System.Data.DataRowCollection.get_Item(Int32 index)
   en csMedioPagoEF.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoEF.cs:línea 53', CAST(0x0000A86901570E60 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (100, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00D2D986 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (101, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00D2D9AB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (102, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00D2ECF8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (103, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00D4553B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (104, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00D45549 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (105, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00D47F38 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (106, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00D47F46 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (107, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00D504A0 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (108, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00D504CA AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (109, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00D58D1A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (110, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00D5E595 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (111, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00D64417 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (112, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00D68F5A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (113, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00D68F89 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (114, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00D7C62D AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (115, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00D7C63B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (116, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00D8F7EC AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (117, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00D8F824 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (118, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00D959F5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (119, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00D95A02 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (120, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00D98EFD AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (121, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00D98F26 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (122, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00DAA187 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (123, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00DAA194 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (124, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00DB2A68 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (125, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00DB2A9A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (126, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00DB639C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (127, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00DB63A9 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (128, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00DBC7C8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (129, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00DBC7D6 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (130, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00DCF3DB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (131, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00DCF3E8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (132, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00DF475B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (133, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00DF4769 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (134, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00E007DC AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (135, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00E007E5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (136, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00E0E14E AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (137, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00E0E15C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (138, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00E12EF5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (139, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00E12F03 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (140, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 224', CAST(0x0000A86A00E61FDC AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (141, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 244', CAST(0x0000A86A00E61FEA AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (142, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00E648C5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (143, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00E703BE AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (144, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00E71732 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (145, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00E921AC AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (146, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00E921BA AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (147, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00E93580 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (148, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00E95B1B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (149, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00E95B31 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (150, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00E9C8C2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (151, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00E9C8D0 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (152, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00EA24DB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (153, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00EA24E9 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (154, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00EA46A3 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (155, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00EA46B2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (156, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00EA71E4 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (157, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00EAAF09 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (158, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00EAAF1C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (159, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00EAF644 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (160, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00EB6F4F AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (161, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00EBE5A8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (162, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00EBFB42 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (163, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00EC0525 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (164, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00EC0533 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (165, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00EC1F13 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (166, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00EC1F21 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (167, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00EC27F5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (168, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 224', CAST(0x0000A86A00F95605 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (169, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 244', CAST(0x0000A86A00F95634 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (170, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 254', CAST(0x0000A86A00F9565A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (171, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00FCE926 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (172, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00FCE971 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (173, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00FD614D AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (174, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00FD6181 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (175, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00FD90A3 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (176, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00FD90D2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (177, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00FD9E12 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (178, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00FD9E25 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (179, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00FDA337 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (180, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00FDA34A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (181, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00FE5C75 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (182, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00FE5C9B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (183, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00FE64DD AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (184, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00FE64ED AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (185, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A00FE95E3 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (186, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A00FE9620 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (187, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A0100E8F1 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (188, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A0100E904 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (189, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A01016605 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (190, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A0101662A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (191, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A01019AF2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (192, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A01019B00 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (193, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A0101C7E7 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (194, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A0101C7F5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (195, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A01022FFD AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (196, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A0102300B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (197, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A01028FB2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (198, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A01028FC4 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (199, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A0102CF2C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (200, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A0102CF69 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (201, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A01031642 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (202, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A01031655 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (203, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A010372EE AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (204, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A01037301 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (205, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A0103E2C2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (206, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A0103E2D4 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (207, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A01040CDD AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (208, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A01040D00 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (209, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A01065EF5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (210, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A01065F07 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (211, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A01072224 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (212, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A01072237 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (213, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A010758A8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (214, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A010758D7 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (215, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A010793C2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (216, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A010793D5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (217, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A0107D30D AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (218, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A0107D31B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (219, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A010839A4 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (220, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A010839D8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (221, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A010880E9 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (222, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A010880FC AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (223, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A0108B572 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (224, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A0108B585 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (225, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A01097E5C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (226, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A01097E6A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (227, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A010A7CA2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (228, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A010A7CAB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (229, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A010ACADE AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (230, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A010ACAEC AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (231, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A010AFB5B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (232, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A0112E966 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (233, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A0112E9C9 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (234, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A0113413A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (235, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A01134152 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (236, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A01135120 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (237, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A0113512E AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (238, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A0113653B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (239, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A01136549 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (240, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A0116AB02 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (241, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A0116AB30 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (242, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A0117C1CE AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (243, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 211', CAST(0x0000A86A0117F9BC AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (244, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 234', CAST(0x0000A86A0117F9CA AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (245, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 244', CAST(0x0000A86A0117F9D4 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (246, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 254', CAST(0x0000A86A0117F9DD AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (247, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A011851C7 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (248, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 211', CAST(0x0000A86A01187069 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (249, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 234', CAST(0x0000A86A01187098 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (250, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 244', CAST(0x0000A86A011870B0 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (251, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 254', CAST(0x0000A86A011870BE AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (252, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A011945CE AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (253, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A011945E1 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (254, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A011B7F8F AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (255, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A011B7FA2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (256, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A011C100C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (257, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A011C101A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (258, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A011C4922 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (259, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A011C4947 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (260, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A011E1BFA AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (261, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A011E1C24 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (262, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A011E5A7F AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (263, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A011E5A8E AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (264, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A011ECBCD AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (265, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A011ECBFC AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (266, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A011F46B1 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (267, N'csMedioPagoTD.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTD.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTD.cs:línea 62', CAST(0x0000A86A011F4840 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (268, N'csMedioPagoTC.cs', N'GetById', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoTC.GetByVcaId(Int32 _vca_id) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoTC.cs:línea 64', CAST(0x0000A86A01200056 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (269, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 211', CAST(0x0000A86A012311E1 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (270, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 234', CAST(0x0000A86A012311EF AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (271, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 244', CAST(0x0000A86A012311F9 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (272, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 224', CAST(0x0000A86A018B58A3 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (273, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 234', CAST(0x0000A86A018B58CD AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (274, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 244', CAST(0x0000A86A018B58F2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (275, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 254', CAST(0x0000A86A018B591C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (276, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 234', CAST(0x0000A86B000066EA AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (277, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 244', CAST(0x0000A86B000066F8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (278, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 254', CAST(0x0000A86B00006701 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (279, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 211', CAST(0x0000A86B00DA256E AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (280, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 234', CAST(0x0000A86B00DA2585 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (281, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 244', CAST(0x0000A86B00DA2593 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (282, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 230', CAST(0x0000A86C0142ECFB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (283, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 240', CAST(0x0000A86C0142ED21 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (284, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 250', CAST(0x0000A86C0142ED4B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (285, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 260', CAST(0x0000A86C0142ED75 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (286, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCS_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 270', CAST(0x0000A86C0142EDA9 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (287, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 217', CAST(0x0000A86C014328B8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (288, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 230', CAST(0x0000A86C014328DE AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (289, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 250', CAST(0x0000A86C01432911 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (290, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 260', CAST(0x0000A86C01432932 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (291, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCS_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 270', CAST(0x0000A86C01432945 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (292, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 225', CAST(0x0000A86C014C3E40 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (293, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 238', CAST(0x0000A86C014C3E53 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (294, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 258', CAST(0x0000A86C014C3E58 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (295, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 268', CAST(0x0000A86C014C3E58 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (296, N'MedioPagoCS.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): No se encontró el procedimiento almacenado ''MedioPagoCS_Insert''.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCS.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCS.cs:línea 105
ClientConnectionId:4a2dae3e-ace4-4d88-bb0d-878c6ca88293
Error Number:2812,State:62,Class:16', CAST(0x0000A86C014C3E66 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (297, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 224', CAST(0x0000A86C01552059 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (298, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 237', CAST(0x0000A86C01552067 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (299, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 247', CAST(0x0000A86C01552075 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (300, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 257', CAST(0x0000A86C01552083 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (301, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 267', CAST(0x0000A86C01552091 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (302, N'MedioPagoCS.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): La función o el procedimiento MedioPagoCS_Insert tiene demasiados argumentos.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCS.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCS.cs:línea 109
ClientConnectionId:dd75609a-c35b-4534-8890-8d6e75c52587
Error Number:8144,State:2,Class:16', CAST(0x0000A86C015520EA AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (303, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 224', CAST(0x0000A86C0156AE14 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (304, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 237', CAST(0x0000A86C0156AE22 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (305, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 247', CAST(0x0000A86C0156AE30 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (306, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 257', CAST(0x0000A86C0156AE3A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (307, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 267', CAST(0x0000A86C0156AE48 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (308, N'MedioPagoCS.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): La función o el procedimiento MedioPagoCS_Insert tiene demasiados argumentos.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCS.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCS.cs:línea 109
ClientConnectionId:d392752b-2324-4172-95c1-2224ddf21393
Error Number:8144,State:2,Class:16', CAST(0x0000A86C0156AE98 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (309, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 224', CAST(0x0000A86C0158B42A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (310, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 237', CAST(0x0000A86C0158B438 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (311, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 247', CAST(0x0000A86C0158B446 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (312, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 257', CAST(0x0000A86C0158B47E AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (313, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 267', CAST(0x0000A86C0158B49F AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (314, N'MedioPagoCS.cs', N'Insert', N'System.Data.SqlClient.SqlException (0x80131904): La función o el procedimiento MedioPagoCS_Insert tiene demasiados argumentos.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en csMedioPagoCS.Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCS.cs:línea 109
ClientConnectionId:70bd2a93-4f26-4859-ac5f-b439f8215b11
Error Number:8144,State:2,Class:16', CAST(0x0000A86C0159C111 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (315, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 224', CAST(0x0000A86C015A0FED AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (316, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 237', CAST(0x0000A86C015A0FF6 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (317, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 247', CAST(0x0000A86C015A1004 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (318, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 257', CAST(0x0000A86C015A100E AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (319, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 267', CAST(0x0000A86C015A1017 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (320, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 224', CAST(0x0000A86C015A7B0B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (321, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 237', CAST(0x0000A86C015A7B14 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (322, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 247', CAST(0x0000A86C015A7B1D AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (323, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 257', CAST(0x0000A86C015A7B4C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (324, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 267', CAST(0x0000A86C015A7B56 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (325, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 226', CAST(0x0000A86D00D56E69 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (326, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 239', CAST(0x0000A86D00D56E97 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (327, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 249', CAST(0x0000A86D00D56EA6 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (328, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 259', CAST(0x0000A86D00D56EB8 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (329, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 269', CAST(0x0000A86D00D56EC2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (330, N'csMedioPagoCS.cs', N'GetByParams', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''MedioPagoCS_GetByParams'' esperaba el parámetro ''@cli_rut'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   en System.Data.SqlClient.SqlDataReader.get_MetaData()
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   en System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   en System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   en System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   en System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   en System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   en System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   en csMedioPagoCS.GetByParams() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCS.cs:línea 185
ClientConnectionId:25e790d8-5dc3-44bb-a155-95ed899635f9
Error Number:201,State:4,Class:16', CAST(0x0000A86D00F65500 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (331, N'csMedioPagoCS.cs', N'GetByParams', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''MedioPagoCS_GetByParams'' esperaba el parámetro ''@cli_rut'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   en System.Data.SqlClient.SqlDataReader.get_MetaData()
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   en System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   en System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   en System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   en System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   en System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   en System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   en csMedioPagoCS.GetByParams() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCS.cs:línea 185
ClientConnectionId:59fc843f-423f-455f-8144-ec28e56c5d82
Error Number:201,State:4,Class:16', CAST(0x0000A86D00F76F9A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (332, N'csMedioPagoCS.cs', N'GetByParams', N'System.Data.SqlClient.SqlException (0x80131904): El procedimiento o la función ''MedioPagoCS_GetByParams'' esperaba el parámetro ''@cli_rut'', que no se ha especificado.
   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   en System.Data.SqlClient.SqlDataReader.get_MetaData()
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   en System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   en System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   en System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   en System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   en System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   en System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   en csMedioPagoCS.GetByParams() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCS.cs:línea 185
ClientConnectionId:36d0f09f-904a-4115-aa27-b7c11e48f9a7
Error Number:201,State:4,Class:16', CAST(0x0000A86D00F797D3 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (333, N'csMedioPagoCS.cs', N'GetByParams', N'System.FormatException: La cadena de entrada no tiene el formato correcto.
   en System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   en System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   en System.Int32.Parse(String s)
   en csMedioPagoCS.armaObjeto(DataTable dt) en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCS.cs:línea 206
   en csMedioPagoCS.GetByParams() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csMedioPagoCS.cs:línea 189', CAST(0x0000A86D00F8052F AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (334, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 226', CAST(0x0000A87000FD35C6 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (335, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 239', CAST(0x0000A87000FD35EF AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (336, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 249', CAST(0x0000A87000FD3616 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (337, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 259', CAST(0x0000A87000FD363C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (338, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 269', CAST(0x0000A87000FD3663 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (339, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 226', CAST(0x0000A87000FEF45C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (340, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 239', CAST(0x0000A87000FEF473 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (341, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 249', CAST(0x0000A87000FEF48B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (342, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 259', CAST(0x0000A87000FEF4A2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (343, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 269', CAST(0x0000A87000FEF4D1 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (344, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 226', CAST(0x0000A87000FF0D40 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (345, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 239', CAST(0x0000A87000FF0D49 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (346, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 249', CAST(0x0000A87000FF0D57 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (347, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 259', CAST(0x0000A87000FF0D61 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (348, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 269', CAST(0x0000A87000FF0D6F AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (349, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 226', CAST(0x0000A87000FF2254 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (350, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 239', CAST(0x0000A87000FF2262 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (351, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 249', CAST(0x0000A87000FF226B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (352, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 259', CAST(0x0000A87000FF2279 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (353, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 269', CAST(0x0000A87000FF2283 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (354, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 226', CAST(0x0000A87000FF454A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (355, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 239', CAST(0x0000A87000FF4558 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (356, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 249', CAST(0x0000A87000FF4574 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (357, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 259', CAST(0x0000A87000FF4590 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (358, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 269', CAST(0x0000A87000FF45B6 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (359, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 226', CAST(0x0000A8700100A436 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (360, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 239', CAST(0x0000A8700100A456 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (361, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 259', CAST(0x0000A8700100A48A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (362, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 269', CAST(0x0000A8700100A4AB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (363, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 226', CAST(0x0000A87001015F6C AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (364, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 239', CAST(0x0000A87001015F7A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (365, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 259', CAST(0x0000A87001015F88 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (366, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 269', CAST(0x0000A87001015FBC AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (367, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 226', CAST(0x0000A8700103BE1D AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (368, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 239', CAST(0x0000A8700103BE46 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (369, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 249', CAST(0x0000A8700103BE6A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (370, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 259', CAST(0x0000A8700103BE8D AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (371, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 269', CAST(0x0000A8700103BEB0 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (372, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 231', CAST(0x0000A87001065088 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (373, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 244', CAST(0x0000A87001065096 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (374, N'csVentaCabecera.cs', N'MedioPagoEF_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoEF_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 254', CAST(0x0000A870010650A4 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (375, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 264', CAST(0x0000A870010650B2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (376, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 274', CAST(0x0000A870010650C0 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (377, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 231', CAST(0x0000A87001110DB6 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (378, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 244', CAST(0x0000A87001110DC4 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (379, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 264', CAST(0x0000A87001110DD2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (380, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 274', CAST(0x0000A87001110DDB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (381, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 234', CAST(0x0000A870011CA0EE AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (382, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 247', CAST(0x0000A870011CA0FB AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (383, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 267', CAST(0x0000A870011CA104 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (384, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 277', CAST(0x0000A870011CA111 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (385, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 234', CAST(0x0000A87001261303 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (386, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 247', CAST(0x0000A8700126132B AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (387, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 267', CAST(0x0000A8700126133A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (388, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 277', CAST(0x0000A87001261344 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (389, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 234', CAST(0x0000A8700126665F AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (390, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 247', CAST(0x0000A8700126666A AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (391, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 267', CAST(0x0000A87001266676 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (392, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 277', CAST(0x0000A8700126667D AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (393, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 234', CAST(0x0000A870012686B2 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (394, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 247', CAST(0x0000A870012686BC AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (395, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 267', CAST(0x0000A870012686C5 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (396, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 277', CAST(0x0000A870012686D1 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (397, N'csVentaCabecera.cs', N'MedioPagoCH_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoCH_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 234', CAST(0x0000A8700126EE35 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (398, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 247', CAST(0x0000A8700126EE3D AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (399, N'csVentaCabecera.cs', N'MedioPagoTC_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTC_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 267', CAST(0x0000A8700126EE69 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (400, N'csVentaCabecera.cs', N'MedioPagoTD_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTD_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 277', CAST(0x0000A8700126EE72 AS DateTime))
INSERT [dbo].[LOG] ([id], [clase], [metodo], [error], [fecha]) VALUES (401, N'csVentaCabecera.cs', N'MedioPagoTR_Insert', N'System.NullReferenceException: Referencia a objeto no establecida como instancia de un objeto.
   en csVentaCabecera.MedioPagoTR_Insert() en c:\Users\Roberto Briones\Documents\Visual Studio 2012\WebSites\Inmobiliaria\App_Code\csVentaCabecera.cs:línea 269', CAST(0x0000A87E016B0B76 AS DateTime))
SET IDENTITY_INSERT [dbo].[LOG] OFF
/****** Object:  Table [dbo].[SUCURSAL]    Script Date: 02/06/2018 21:15:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SUCURSAL](
	[suc_id] [int] IDENTITY(1,1) NOT NULL,
	[suc_descripcion] [nvarchar](50) NOT NULL,
	[suc_direccion] [nvarchar](50) NOT NULL,
	[suc_est_id] [char](1) NOT NULL,
	[suc_com_id] [nchar](5) NULL,
 CONSTRAINT [PK_SUCURSAL] PRIMARY KEY CLUSTERED 
(
	[suc_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SUCURSAL] ON
INSERT [dbo].[SUCURSAL] ([suc_id], [suc_descripcion], [suc_direccion], [suc_est_id], [suc_com_id]) VALUES (4, N'Sucursal Quillón', N'El Roble #399', N'A', N'8413 ')
INSERT [dbo].[SUCURSAL] ([suc_id], [suc_descripcion], [suc_direccion], [suc_est_id], [suc_com_id]) VALUES (5, N'Sucursal Florida', N'Eleuterio Ramirez #587', N'A', N'8104 ')
INSERT [dbo].[SUCURSAL] ([suc_id], [suc_descripcion], [suc_direccion], [suc_est_id], [suc_com_id]) VALUES (6, N'Sucursal Santa Juana', N'Villagran #152', N'A', N'8109 ')
INSERT [dbo].[SUCURSAL] ([suc_id], [suc_descripcion], [suc_direccion], [suc_est_id], [suc_com_id]) VALUES (7, N'Sucursal Nacimiento', N'Prieto #471', N'A', N'8306 ')
INSERT [dbo].[SUCURSAL] ([suc_id], [suc_descripcion], [suc_direccion], [suc_est_id], [suc_com_id]) VALUES (8, N'Sucursal Negrete', N'Ignacio Carrera Pinto #103', N'A', N'8307 ')
INSERT [dbo].[SUCURSAL] ([suc_id], [suc_descripcion], [suc_direccion], [suc_est_id], [suc_com_id]) VALUES (9, N'Sucursal Renaico', N'Santiago Watts #215 C-', N'A', N'9209 ')
INSERT [dbo].[SUCURSAL] ([suc_id], [suc_descripcion], [suc_direccion], [suc_est_id], [suc_com_id]) VALUES (10, N'Sucursal Ángol', N'Avenida O''Higgins #461', N'A', N'9201 ')
SET IDENTITY_INSERT [dbo].[SUCURSAL] OFF
/****** Object:  StoredProcedure [dbo].[Region_GetAll]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Region_GetAll]
as
begin
select t0.reg_id
      ,t0.reg_descripcion
      ,t0.reg_orden
      ,t0.reg_est_id
      
from REGION t0
where t0.reg_est_id = 'A'
order by convert(int,t0.reg_orden)
end
GO
/****** Object:  StoredProcedure [dbo].[VentaDetalle_Insert]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[VentaDetalle_Insert](@vde_id as numeric(19,0),
                                         @vde_vca_id as numeric(19,0),
                                         @vde_pro_id as nvarchar(50),
                                         @vde_cantidad as int,
                                         @vde_total as numeric(19,6),
                                         @vde_est_id as char(1),
                                         @vde_precio_unitario as int,
                                         @vde_pro_descripcion as nvarchar(100))
as
begin

	
	insert into VENTA_DETALLE (vde_vca_id, vde_pro_id, vde_cantidad,vde_total,vde_est_id,vde_precio_unitario,vde_pro_descripcion)
	values(@vde_vca_id, @vde_pro_id, @vde_cantidad,@vde_total,@vde_est_id,@vde_precio_unitario,@vde_pro_descripcion)
	


end
GO
/****** Object:  StoredProcedure [dbo].[VentaDetalle_GetByVcaId]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[VentaDetalle_GetByVcaId](@vca_id as int)
as
begin

select vde_id,
       vde_vca_id,
       vde_pro_id,
       vde_cantidad,
       vde_total,
       vde_est_id,
       vde_precio_unitario,
       vde_pro_descripcion
        
from VENTA_DETALLE 
where vde_vca_id = @vca_id
and vde_est_id = 'A' 

end
GO
/****** Object:  StoredProcedure [dbo].[VentaDetalle_DeleteByVcaId]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[VentaDetalle_DeleteByVcaId](@vca_id as int)
as

begin

delete VENTA_DETALLE
where vde_vca_id = @vca_id

delete PAGO_CHEQUE
where pch_vca_id = @vca_id

delete PAGO_TRANFERENCIA
where ptr_vca_id = @vca_id

delete PAGO_CREDITO_SIMPLE
where pcs_vca_id = @vca_id

delete PAGO_EFECTIVO
where pef_vca_id = @vca_id

delete PAGO_TARJETA_CREDITO
where ptc_vca_id = @vca_id

delete PAGO_TARJETA_DEBITO
where ptd_vca_id = @vca_id

end
GO
/****** Object:  StoredProcedure [dbo].[VentaCabecera_Insert]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VentaCabecera_Insert](@vca_id as numeric(19,0),
                                          @vca_folio as int,
                                          @vca_cli_rut as nvarchar(11),
                                          @vca_fecha_docto as datetime,
                                          @vca_suc_id as int,
                                          @vca_comentario as text,
                                          @vca_tipo_docto as nvarchar(10),
                                          @vca_impuesto as numeric(19,6),
                                          @vca_total as numeric(19,6),
                                          @vca_est_id as char(1),
                                          @vca_estado_docto as char(1),
                                          @vca_emp_rut as nvarchar(11),
                                          @vca_totalDescuento as numeric(19,6),
                                          @vca_porcDescuento as int,
                                          @retorno as int output)
 
as
begin
 if exists(select t0.vca_id from VENTA_CABECERA t0 where vca_id = @vca_id)	
	begin
		update VENTA_CABECERA
		set vca_folio = @vca_folio,
		    vca_cli_rut = @vca_cli_rut,
		    vca_fecha_docto = @vca_fecha_docto,
		    vca_suc_id = @vca_suc_id,
		    vca_comentario = @vca_comentario,
		    vca_tipo_docto = @vca_tipo_docto,
		    vca_impuesto = @vca_impuesto,
		    vca_total = @vca_total,
		    vca_est_id = @vca_est_id,
		    vca_estado_docto = @vca_estado_docto,
		    vca_emp_rut = @vca_emp_rut,
		    vca_totalDescuento = @vca_totalDescuento,
		    vca_PorcDescuento = @vca_porcDescuento
		    
		    where vca_id = @vca_id
		    set @retorno = -1 -- Actualizado exitosamente
	   return
	end
else if exists(select t0.vca_id from VENTA_CABECERA t0 where vca_folio = @vca_folio and vca_cli_rut = @vca_cli_rut)
	begin
	set @retorno = -2 --'Ya existe este folio y rut en otra Venta'
	return 
	end
else
	begin
		insert into VENTA_CABECERA (vca_folio,vca_cli_rut,vca_fecha_docto,vca_suc_id,vca_comentario,vca_tipo_docto,
		                            vca_impuesto,vca_total,vca_est_id,vca_estado_docto,vca_emp_rut, vca_totalDescuento,
		                            vca_PorcDescuento)
		values(@vca_folio,@vca_cli_rut,@vca_fecha_docto,@vca_suc_id,@vca_comentario,@vca_tipo_docto,
		       @vca_impuesto,@vca_total,@vca_est_id,@vca_estado_docto, @vca_emp_rut, @vca_totalDescuento,
		       @vca_porcDescuento)
		       
	    set @retorno = @@identity
	    return
	end
end
GO
/****** Object:  StoredProcedure [dbo].[VentaCabecera_GetMaxDocNum]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[VentaCabecera_GetMaxDocNum]
as
begin

select MAX(vca_id) from VENTA_CABECERA

end
GO
/****** Object:  StoredProcedure [dbo].[VentaCabecera_GetByParams]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[VentaCabecera_GetByParams](@vca_id as int,
                                               @vca_folio as int,
                                               @vca_cli_rut as nvarchar(12))
as
begin

	if(isnull(@vca_id,0) <> 0 and isnull(@vca_folio,0) <> 0 and isnull(@vca_cli_rut,'') <> '')
	begin
		select t0.vca_id,
		       t0.vca_folio,
		       t0.vca_cli_rut,
		       convert(nvarchar(10),t0.vca_fecha_docto,105) vca_fecha_docto,
		       t0.vca_suc_id,
		       t0.vca_comentario,
		       t0.vca_tipo_docto,
		       t0.vca_impuesto,
		       t0.vca_total,
		       t0.vca_est_id,
		       t0.vca_estado_docto,
		       t0.vca_emp_rut,
		       t0.vca_TotalDescuento,
		       t0.vca_PorcDescuento
		        
		from VENTA_CABECERA t0
		where t0.vca_id = @vca_id
		and t0.vca_folio = @vca_folio
		and t0.vca_cli_rut = @vca_cli_rut
	end

	if(isnull(@vca_id,0) <> 0 and isnull(@vca_folio,0) <> 0 and isnull(@vca_cli_rut,'') = '')
	begin
		select t0.vca_id,
		       t0.vca_folio,
		       t0.vca_cli_rut,
		        convert(nvarchar(10),t0.vca_fecha_docto,105) vca_fecha_docto,
		       t0.vca_suc_id,
		       t0.vca_comentario,
		       t0.vca_tipo_docto,
		       t0.vca_impuesto,
		       t0.vca_total,
		       t0.vca_est_id,
		       t0.vca_estado_docto,
		       t0.vca_emp_rut,
		       t0.vca_TotalDescuento,
		       t0.vca_PorcDescuento 
		from VENTA_CABECERA t0
		where t0.vca_id = @vca_id
		and t0.vca_folio = @vca_folio
	
	end
	
	else if(isnull(@vca_id,0) <> 0 and isnull(@vca_folio,0) = 0 and isnull(@vca_cli_rut,'') = '')
	begin
	    select t0.vca_id,
		       t0.vca_folio,
		       t0.vca_cli_rut,
		       convert(nvarchar(10),t0.vca_fecha_docto,105) vca_fecha_docto,
		       t0.vca_suc_id,
		       t0.vca_comentario,
		       t0.vca_tipo_docto,
		       t0.vca_impuesto,
		       t0.vca_total,
		       t0.vca_est_id,
		       t0.vca_estado_docto,
		       t0.vca_emp_rut,
		       t0.vca_TotalDescuento,
		       t0.vca_PorcDescuento 
		from VENTA_CABECERA t0
		where t0.vca_id = @vca_id
		
	end
	
	else if(isnull(@vca_id,0) <> 0 and isnull(@vca_folio,0) = 0 and isnull(@vca_cli_rut,'') <> '')
	begin
	    select t0.vca_id,
		       t0.vca_folio,
		       t0.vca_cli_rut,
		        convert(nvarchar(10),t0.vca_fecha_docto,105) vca_fecha_docto,
		       t0.vca_suc_id,
		       t0.vca_comentario,
		       t0.vca_tipo_docto,
		       t0.vca_impuesto,
		       t0.vca_total,
		       t0.vca_est_id,
		       t0.vca_estado_docto,
		       t0.vca_emp_rut,
		       t0.vca_TotalDescuento,
		       t0.vca_PorcDescuento 
		from VENTA_CABECERA t0
		where t0.vca_folio = @vca_folio
		and t0.vca_cli_rut = @vca_cli_rut
	end
	
	else if(isnull(@vca_id,0) = 0 and isnull(@vca_folio,0) = 0 and isnull(@vca_cli_rut,'') <> '')
	begin
	    select t0.vca_id,
		       t0.vca_folio,
		       t0.vca_cli_rut,
		        convert(nvarchar(10),t0.vca_fecha_docto,105) vca_fecha_docto,
		       t0.vca_suc_id,
		       t0.vca_comentario,
		       t0.vca_tipo_docto,
		       t0.vca_impuesto,
		       t0.vca_total,
		       t0.vca_est_id,
		       t0.vca_estado_docto,
		       t0.vca_emp_rut,
		       t0.vca_TotalDescuento,
		       t0.vca_PorcDescuento 
		from VENTA_CABECERA t0
		where t0.vca_cli_rut = @vca_cli_rut
		
	end
	
	else if(isnull(@vca_id,0) = 0 and isnull(@vca_folio,0) <> 0 and isnull(@vca_cli_rut,'') = '')
	begin
	    select t0.vca_id,
		       t0.vca_folio,
		       t0.vca_cli_rut,
		        convert(nvarchar(10),t0.vca_fecha_docto,105) vca_fecha_docto,
		       t0.vca_suc_id,
		       t0.vca_comentario,
		       t0.vca_tipo_docto,
		       t0.vca_impuesto,
		       t0.vca_total,
		       t0.vca_est_id,
		       t0.vca_estado_docto,
		       t0.vca_emp_rut,
		       t0.vca_TotalDescuento,
		       t0.vca_PorcDescuento 
		from VENTA_CABECERA t0
		where t0.vca_folio = @vca_folio
		
	end

	else if(isnull(@vca_id,0) = 0 and isnull(@vca_folio,0) <> 0 and isnull(@vca_cli_rut,'') <> '')
	begin
	    select t0.vca_id,
		       t0.vca_folio,
		       t0.vca_cli_rut,
		       convert(nvarchar(10),t0.vca_fecha_docto,105) vca_fecha_docto,
		       t0.vca_suc_id,
		       t0.vca_comentario,
		       t0.vca_tipo_docto,
		       t0.vca_impuesto,
		       t0.vca_total,
		       t0.vca_est_id,
		       t0.vca_estado_docto,
		       t0.vca_emp_rut,
		       t0.vca_TotalDescuento,
		       t0.vca_PorcDescuento 
		from VENTA_CABECERA t0
		where t0.vca_folio = @vca_folio
		and vca_cli_rut = @vca_cli_rut
	end
end
GO
/****** Object:  StoredProcedure [dbo].[VentaCabecera_GetById]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[VentaCabecera_GetById](@vca_id as int)
as
begin

select * 
from VENTA_CABECERA
where vca_id = @vca_id

end
GO
/****** Object:  StoredProcedure [dbo].[LoadPerfilByUser]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[LoadPerfilByUser](@email nvarchar(50),
                                         @contrasena nvarchar(25))
as
begin
if exists(select m0.usu_emp_rut from USUARIO m0 where m0.usu_correo = @email 
                                               and m0.usu_contrasena = @contrasena 
                                               and m0.usu_est_id = 'A')
	begin
		select t1.pri_formulario 'formulario',
			   t1.pri_lectura 'lectura',
			   t1.pri_escritura 'escritura',
			   t0.usu_suc_id 'sucursal'
		from usuario t0  
		inner join PRIVILEGIO t1 
				  on t0.usu_correo = t1.pri_usu_correo 
		where t1.pri_est_id = 'A'
		and t1.pri_usu_correo = @email
	end

end
GO
/****** Object:  StoredProcedure [dbo].[Comuna_GetAll]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Comuna_GetAll]
as
begin
select t0.com_id
      ,t0.com_descripcion
      ,t0.com_reg_id
      ,t0.com_est_id
      
from COMUNA t0
where t0.com_est_id = 'A'
end
GO
/****** Object:  StoredProcedure [dbo].[Producto_Insert]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Producto_Insert](@pro_id as nvarchar(50),
                                    @pro_descripcion as nvarchar(100),
                                    @pro_precio as numeric(19,6),
                                    @pro_est_id as char(1) )
AS
BEGIN

	IF exists(select pro_descripcion from PRODUCTO t0 with(nolock) where t0.pro_id = @pro_id)
	BEGIN
		update PRODUCTO
		set pro_id = @pro_id,
		    pro_descripcion = @pro_descripcion,
		    pro_precio = @pro_precio,
		    pro_est_id = @pro_est_id
		    
		where pro_id = @pro_id
		 
	END
	
	ELSE
	BEGIN
		insert into PRODUCTO (pro_id,pro_descripcion,pro_precio,pro_est_id)
		       values (@pro_id,@pro_descripcion,@pro_precio,@pro_est_id)
		
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Producto_GetBySucursal]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Producto_GetBySucursal](@sucursal as int)
as
begin

select t0.pro_id
      ,t0.pro_descripcion
      ,t0.pro_precio
      ,isnull(t1.pal_stock,0) pal_stock 
from PRODUCTO t0
left join PRODUCTO_ALMACEN t1 on t0.pro_id = t1.pal_pro_id
inner join ALMACEN t2 on t1.pal_alm_id = t2.alm_id 
                      and t2.alm_suc_id = @sucursal
where t0.pro_est_id = 'A'
order by t0.pro_descripcion
end
GO
/****** Object:  StoredProcedure [dbo].[Producto_GetById]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Producto_GetById](@id as nvarchar(50))
as
begin
select t0.pro_id
      ,t0.pro_descripcion
      ,t0.pro_precio
      ,t0.pro_est_id
from PRODUCTO t0
where t0.pro_id = @id

end
GO
/****** Object:  StoredProcedure [dbo].[Producto_GetAll]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Producto_GetAll]
as
begin

select t0.pro_id
      ,t0.pro_descripcion
      ,t0.pro_precio
      ,isnull(t1.pal_stock,0) pal_stock 
from PRODUCTO t0
left join PRODUCTO_ALMACEN t1 on t0.pro_id = t1.pal_pro_id
where t0.pro_est_id = 'A'
order by t0.pro_descripcion
end
GO
/****** Object:  StoredProcedure [dbo].[Sucursal_GetByUser]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sucursal_GetByUser](@email as nvarchar(50))
as
begin

select usu_suc_id
from USUARIO
where usu_correo = @email
end
GO
/****** Object:  StoredProcedure [dbo].[Sucursal_GetAll]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sucursal_GetAll]
as
begin

select t0.suc_id
      ,t0.suc_descripcion
      ,t0.suc_direccion
      ,t0.suc_est_id
from SUCURSAL t0
where t0.suc_est_id = 'A'
end
GO
/****** Object:  StoredProcedure [dbo].[Cliente_Insert]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Cliente_Insert](@cli_rut as nvarchar(11),
                                    @cli_nombre as nvarchar(100),
                                    @cli_giro as nvarchar(25),
                                    @cli_email as nvarchar(50),
                                    @cli_telefono as int,
                                    @cli_departamento as nvarchar(25),
                                    @cli_est_id as char(1),
                                    @cli_calle as nvarchar(100),
                                    @cli_numero as int,
                                    @cli_com_id as nvarchar(5))
AS
BEGIN

	IF exists(select cli_nombre from CLIENTE t0 with(nolock) where t0.cli_rut = @cli_rut)
	BEGIN
		update CLIENTE
		set cli_nombre = @cli_nombre,
		    cli_giro = @cli_giro,
		    cli_email = @cli_email,
		    cli_telefono = @cli_telefono,
		    cli_calle = @cli_calle,
		    cli_numero = @cli_numero,
		    cli_departamento = @cli_departamento,
		    cli_est_id = @cli_est_id,
		    cli_com_id = @cli_com_id
		    
		where cli_rut = @cli_rut
		 
	END
	
	ELSE
	BEGIN
		insert into CLIENTE (cli_rut,cli_nombre,cli_giro,cli_email,cli_telefono,cli_calle,cli_numero
		                    ,cli_departamento,cli_est_id,cli_com_id)
		       values (@cli_rut,@cli_nombre,@cli_giro,@cli_email,@cli_telefono,@cli_calle,@cli_numero, 
		               @cli_departamento,@cli_est_id,@cli_com_id)
		
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Cliente_GetByRutActive]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Cliente_GetByRutActive](@rut as nvarchar(12))
as
begin
select t0.cli_rut
      ,t0.cli_nombre
      ,t0.cli_email
      ,t0.cli_giro
      ,t0.cli_telefono
      ,t0.cli_est_id
      ,t0.cli_com_id
      ,t2.reg_id
      ,t0.cli_calle
      ,t0.cli_numero
      ,t0.cli_departamento
from CLIENTE t0
inner join COMUNA t1 on t0.cli_com_id = t1.com_id
inner join REGION t2 on t1.com_reg_id = t2.reg_id
where cli_rut = @rut
and cli_est_id = 'A'
end
GO
/****** Object:  StoredProcedure [dbo].[Cliente_GetByRut]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Cliente_GetByRut](@rut as nvarchar(12))
as
begin
select t0.cli_rut
      ,t0.cli_nombre
      ,t0.cli_email
      ,t0.cli_giro
      ,t0.cli_telefono
      ,t0.cli_est_id
      ,t0.cli_com_id
      ,t2.reg_id
      ,t0.cli_calle
      ,t0.cli_numero
      ,t0.cli_departamento
from CLIENTE t0
inner join COMUNA t1 on t0.cli_com_id = t1.com_id
inner join REGION t2 on t1.com_reg_id = t2.reg_id
where cli_rut = @rut

end
GO
/****** Object:  StoredProcedure [dbo].[Almacen_GetByProductoId]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Almacen_GetByProductoId](@pro_id as nvarchar(50))
as
begin
select t2.alm_id
      ,t2.alm_nombre
      ,t2.alm_est_id
      ,t1.pal_stock
from PRODUCTO t0
inner JOIN PRODUCTO_ALMACEN t1 on t0.pro_id = t1.pal_pro_id
inner JOIN ALMACEN t2 on t1.pal_alm_id = t2.alm_id
where t0.pro_id = @pro_id
end
GO
/****** Object:  StoredProcedure [dbo].[Banco_GetAll]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Banco_GetAll]
as
begin

select t0.ban_id
      ,t0.ban_descripcion
      ,T0.ban_est_id
 
from BANCO t0
where t0.ban_est_id = 'A'
order by t0.ban_descripcion
end
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoTR_Insert]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[MedioPagoTR_Insert](@numeroTransaccion as int,
                                        @fechaDocto as datetime,
                                        @importe as numeric(19,0),
                                        @banco as int,
                                        @vca_id as int,
                                        @est_id as char(1))
	
AS
BEGIN
	
	insert into PAGO_TRANFERENCIA(ptr_vca_id, ptr_fecha_docto, ptr_importe, ptr_ban_id, ptr_numero_tran,ptr_est_id)
	values (@vca_id,@fechaDocto,@importe,@banco,@numeroTransaccion,@est_id)
	
END
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoTR_GetByVcaId]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MedioPagoTR_GetByVcaId](@vca_id as int)
as

begin

select 
       convert(nvarchar(10),t0.ptr_fecha_docto,105) ptr_fecha_docto,
       t0.ptr_importe,
       t0.ptr_ban_id,
       t0.ptr_vca_id,
       t0.ptr_numero_tran
       
       
from PAGO_TRANFERENCIA t0
where t0.ptr_vca_id = @vca_id
and ptr_est_id = 'A'

end
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoTD_Insert]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[MedioPagoTD_Insert](@fechaDocto as datetime,
                                        @importe as numeric(19,6),
                                        @banco as int,
                                        @vca_id as int,
                                        @numero_tran as numeric(18,0),
                                        @est_id as char(1))
	
AS
BEGIN
	
	insert into PAGO_TARJETA_DEBITO(ptd_vca_id, ptd_fecha_docto,ptd_importe,ptd_numero_tran,ptd_ban_id,ptd_est_id)
	values (@vca_id,@fechaDocto,@importe,@numero_tran,@banco,@est_id)
	
END
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoTD_GetByVcaId]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MedioPagoTD_GetByVcaId](@vca_id as int)
as

begin

select t0.ptd_vca_id,
       convert(nvarchar(10),t0.ptd_fecha_docto,105) ptd_fecha_docto,
       t0.ptd_importe,
       t0.ptd_numero_tran,
       t0.ptd_ban_id
       
from PAGO_TARJETA_DEBITO t0
where t0.ptd_vca_id = @vca_id
and ptd_est_id = 'A'

end
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoTC_Insert]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[MedioPagoTC_Insert](@numerocuota as int,
                                        @fechaDocto as datetime,
                                        @importe as numeric(19,6),
                                        @banco as int,
                                        @vca_id as int,
                                        @numero_tran as numeric(18,0),
                                        @est_id as char(1))
	
AS
BEGIN
	
	insert into PAGO_TARJETA_CREDITO(ptc_vca_id, ptc_fecha_docto,ptc_numero_cuota,ptc_importe,ptc_numero_tran,ptc_ban_id,ptc_est_id)
	values (@vca_id,@fechaDocto,@numerocuota,@importe,@numero_tran,@banco,@est_id)
	
END
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoTC_GetByVcaId]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MedioPagoTC_GetByVcaId](@vca_id as int)
as

begin

select t0.ptc_vca_id,
       convert(nvarchar(10),t0.ptc_fecha_docto,105) ptc_fecha_docto,
       t0.ptc_importe,
       t0.ptc_numero_cuota,
       t0.ptc_numero_tran,
       t0.ptc_ban_id
       
from PAGO_TARJETA_CREDITO t0
where t0.ptc_vca_id = @vca_id
and ptc_est_id = 'A'

end
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoEF_Insert]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MedioPagoEF_Insert](@fechaDocto as datetime,
                                        @importe as numeric(19,0),                                       
                                        @vca_id as int,
                                        @est_id as char(1))
	
AS
BEGIN
	
	insert into PAGO_EFECTIVO(pef_vca_id, pef_fecha_docto,pef_importe,pef_est_id)
	values (@vca_id,@fechaDocto,@importe,@est_id)
	
END
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoEF_GetByVcaId]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MedioPagoEF_GetByVcaId](@vca_id as int)
as

begin

select t0.pef_vca_id,
       convert(nvarchar(10),t0.pef_fecha_docto,105) pef_fecha_docto,
       t0.pef_importe
from PAGO_EFECTIVO t0
where t0.pef_vca_id = @vca_id
and pef_est_id = 'A'

end
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoCS_ValidaCredito]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MedioPagoCS_ValidaCredito](@cli_rut as nvarchar(10),
                                                  @vca_id as int,
                                                  @retorno as nvarchar output)
as

begin



set @retorno = (

select count(t2.cli_rut) as numero_credito

from PAGO_CREDITO_SIMPLE t0
inner join VENTA_CABECERA t1 on t0.pcs_vca_id = t1.vca_id
inner join CLIENTE t2 on t1.vca_cli_rut = t2.cli_rut 

where t0.pcs_numero_cuota <> t0.pcs_cuota_pagada
and t2.cli_rut = @cli_rut
and @vca_id not in (select pcs_vca_id from PAGO_CREDITO_SIMPLE)

)

end
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoCS_Insert]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MedioPagoCS_Insert](@vca_id as int,                                        
                                        @fechaDocto as datetime,
                                        @importe as numeric(19,6),
                                        @numero_cuota as int,
                                        @numero_cuota_pagada as int,
                                        @monto_cuota as numeric(19,6),
                                        @est_id as char(1),
                                        @retorno as int output)
	
AS
BEGIN
	
	if exists(select t0.pcs_id from PAGO_CREDITO_SIMPLE t0 where t0.pcs_vca_id = @vca_id)
	begin
		update PAGO_CREDITO_SIMPLE
		set pcs_cuota_pagada = @numero_cuota_pagada
		where pcs_vca_id = @vca_id
		
		set @retorno = -2 --Actualizado correctamente
	end
	else
	begin
		insert into PAGO_CREDITO_SIMPLE(pcs_vca_id, pcs_fecha_docto,pcs_importe,pcs_numero_cuota,pcs_cuota_pagada,pcs_monto_cuota,pcs_est_id)
	values (@vca_id,@fechaDocto,@importe,@numero_cuota,@numero_cuota_pagada,@monto_cuota,@est_id)
	
		set @retorno = -1 --Registrado Correctamente
	
	end
	
END
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoCS_GetByVcaId]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[MedioPagoCS_GetByVcaId](@vca_id as int)
as

begin

select t1.vca_id
      ,convert(nvarchar(10),t0.pcs_fecha_docto,105) pcs_fecha_docto
      ,t2.cli_rut
      ,t2.cli_nombre
      ,t0.pcs_importe
      ,t0.pcs_numero_cuota
      ,t0.pcs_cuota_pagada
      ,t0.pcs_monto_cuota
      
from PAGO_CREDITO_SIMPLE t0
inner join VENTA_CABECERA t1 on t0.pcs_vca_id = t1.vca_id
inner join CLIENTE t2 on t1.vca_cli_rut = t2.cli_rut
where t0.pcs_vca_id = @vca_id
and pcs_est_id = 'A'

end
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoCS_GetByParams]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[MedioPagoCS_GetByParams](@vca_id as int,
                                               @cli_rut as nvarchar(12))
as
begin

	if(isnull(@vca_id,0) <> 0 and isnull(@cli_rut,'') <> '')
	begin
		select t0.pcs_vca_id,	       
		       t1.vca_cli_rut,
		       t2.cli_nombre,
		       convert(nvarchar(10),t0.pcs_fecha_docto,105) pcs_fecha_docto,
		       t0.pcs_importe,
		       t0.pcs_numero_cuota,
		       t0.pcs_cuota_pagada,
		       t0.pcs_monto_cuota

		        
		from PAGO_CREDITO_SIMPLE t0
		inner join venta_cabecera t1 on t0.pcs_vca_id = t1.vca_id
		inner join cliente t2 on t1.vca_cli_rut = t2.cli_rut
		where t0.pcs_vca_id = @vca_id
		and t1.vca_cli_rut = @cli_rut
	end

	else if(isnull(@vca_id,0) <> 0 and isnull(@cli_rut,'') = '')
		begin
			select t0.pcs_vca_id,	       
				   t1.vca_cli_rut,
				   t2.cli_nombre,
				   convert(nvarchar(10),t0.pcs_fecha_docto,105) pcs_fecha_docto,
				   t0.pcs_importe,
				   t0.pcs_numero_cuota,
				   t0.pcs_cuota_pagada,
				   t0.pcs_monto_cuota

			        
			from PAGO_CREDITO_SIMPLE t0
			inner join venta_cabecera t1 on t0.pcs_vca_id = t1.vca_id
			inner join cliente t2 on t1.vca_cli_rut = t2.cli_rut
			where t0.pcs_vca_id = @vca_id		
		end

	else if(isnull(@vca_id,0) = 0 and isnull(@cli_rut,'') <> '')
	begin
		select t0.pcs_vca_id,	       
			   t1.vca_cli_rut,
			   t2.cli_nombre,
			   convert(nvarchar(10),t0.pcs_fecha_docto,105) pcs_fecha_docto,
			   t0.pcs_importe,
			   t0.pcs_numero_cuota,
			   t0.pcs_cuota_pagada,
			   t0.pcs_monto_cuota

		        
		from PAGO_CREDITO_SIMPLE t0
		inner join venta_cabecera t1 on t0.pcs_vca_id = t1.vca_id
		inner join cliente t2 on t1.vca_cli_rut = t2.cli_rut
		where t1.vca_cli_rut = @cli_rut
		
	end
	
	
end
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoCH_Insert]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MedioPagoCH_Insert](@numeroCheque as int,
                                        @fechaDocto as datetime,
                                        @importe as numeric(19,0),
                                        @banco as int,
                                        @vca_id as int,
                                        @est_id as char(1))
	
AS
BEGIN
	
	insert into pago_cheque(pch_vca_id, pch_fecha_docto, pch_importe, pch_ban_id, pch_numero_docto,pch_est_id)
	values (@vca_id,@fechaDocto,@importe,@banco,@numeroCheque,@est_id)
	
END
GO
/****** Object:  StoredProcedure [dbo].[MedioPagoCH_GetByVcaId]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MedioPagoCH_GetByVcaId](@vca_id as int)
as

begin

select t0.pch_numero_docto,
       convert(nvarchar(10),t0.pch_fecha_docto,105) pch_fecha_docto,
       t0.pch_importe,
       t0.pch_ban_id,
       t0.pch_vca_id
from PAGO_CHEQUE t0
where t0.pch_vca_id = @vca_id
and pch_est_id = 'A'

end
GO
/****** Object:  StoredProcedure [dbo].[Log_Insert]    Script Date: 02/06/2018 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Log_Insert] (@clase as nvarchar(50),
                                @metodo as nvarchar(50),
                                @error as text,
                                @fecha as datetime)
as
begin

insert into [LOG] (clase,metodo,ERROR,fecha) values (@clase,@metodo,@error,@fecha)

end
GO
