USE [master]
GO
/****** Object:  Database [roomBooking]    Script Date: 17/03/2021 1:28:48 AM ******/
CREATE DATABASE [roomBooking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'roomBooking_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\roomBooking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'roomBooking_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\roomBooking.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [roomBooking] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [roomBooking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [roomBooking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [roomBooking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [roomBooking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [roomBooking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [roomBooking] SET ARITHABORT OFF 
GO
ALTER DATABASE [roomBooking] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [roomBooking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [roomBooking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [roomBooking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [roomBooking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [roomBooking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [roomBooking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [roomBooking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [roomBooking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [roomBooking] SET  DISABLE_BROKER 
GO
ALTER DATABASE [roomBooking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [roomBooking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [roomBooking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [roomBooking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [roomBooking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [roomBooking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [roomBooking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [roomBooking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [roomBooking] SET  MULTI_USER 
GO
ALTER DATABASE [roomBooking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [roomBooking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [roomBooking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [roomBooking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [roomBooking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [roomBooking] SET QUERY_STORE = OFF
GO
USE [roomBooking]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 17/03/2021 1:28:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 17/03/2021 1:28:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[RoomBooking] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 17/03/2021 1:28:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Customer] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
	[PaymentDate] [varchar](50) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 17/03/2021 1:28:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoomNo] [varchar](50) NULL,
	[RoomType] [varchar](50) NULL,
	[Fair] [varchar](50) NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [roomBooking] SET  READ_WRITE 
GO
