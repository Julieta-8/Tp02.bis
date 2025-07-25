USE [master]
GO
/****** Object:  Database [Presentación]    Script Date: 8/7/2025 12:08:40 ******/
CREATE DATABASE [Presentación]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Presentación', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Presentación.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Presentación_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Presentación_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Presentación] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Presentación].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Presentación] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Presentación] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Presentación] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Presentación] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Presentación] SET ARITHABORT OFF 
GO
ALTER DATABASE [Presentación] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Presentación] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Presentación] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Presentación] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Presentación] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Presentación] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Presentación] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Presentación] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Presentación] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Presentación] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Presentación] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Presentación] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Presentación] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Presentación] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Presentación] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Presentación] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Presentación] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Presentación] SET RECOVERY FULL 
GO
ALTER DATABASE [Presentación] SET  MULTI_USER 
GO
ALTER DATABASE [Presentación] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Presentación] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Presentación] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Presentación] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Presentación] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Presentación', N'ON'
GO
ALTER DATABASE [Presentación] SET QUERY_STORE = OFF
GO
USE [Presentación]
GO
/****** Object:  User [alumno]    Script Date: 8/7/2025 12:08:40 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[DatoFamiliar]    Script Date: 8/7/2025 12:08:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatoFamiliar](
	[Id] [int] NOT NULL,
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Parentesco] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DatoFamiliar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatoInteres]    Script Date: 8/7/2025 12:08:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatoInteres](
	[Id] [int] NOT NULL,
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[TipoInteres] [int] NOT NULL,
	[Intereses] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DatoInteres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 8/7/2025 12:08:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DatoFamiliar]  WITH CHECK ADD  CONSTRAINT [FK_DatoFamiliar_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[DatoFamiliar] CHECK CONSTRAINT [FK_DatoFamiliar_Usuario]
GO
ALTER TABLE [dbo].[DatoInteres]  WITH CHECK ADD  CONSTRAINT [FK_DatoInteres_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[DatoInteres] CHECK CONSTRAINT [FK_DatoInteres_Usuario]
GO
USE [master]
GO
ALTER DATABASE [Presentación] SET  READ_WRITE 
GO
