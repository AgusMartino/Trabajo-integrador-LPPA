﻿USE [master]
GO
/****** Object:  Database [TP_Integrador_G4_LPPA]    Script Date: 10/6/2022 14:15:09 ******/
CREATE DATABASE [TP_Integrador_G4_LPPA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TP_Integrador_G4_LPPA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TP_Integrador_G4_LPPA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TP_Integrador_G4_LPPA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TP_Integrador_G4_LPPA_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TP_Integrador_G4_LPPA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET ARITHABORT OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET RECOVERY FULL 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET  MULTI_USER 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET QUERY_STORE = OFF
GO
USE [TP_Integrador_G4_LPPA]
GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 10/6/2022 14:15:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permiso](
	[Id_permiso] [uniqueidentifier] NOT NULL,
	[Permiso] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Permiso] PRIMARY KEY CLUSTERED 
(
	[Id_permiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pregunta_seguridad]    Script Date: 10/6/2022 14:15:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pregunta_seguridad](
	[Id_Pregunta_Seguridad] [uniqueidentifier] NOT NULL,
	[Pregunta_seguridad] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Pregunta_seguridad] PRIMARY KEY CLUSTERED 
(
	[Id_Pregunta_Seguridad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Token]    Script Date: 10/6/2022 14:15:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Token](
	[Id_token] [uniqueidentifier] NOT NULL,
	[Id_usuario] [uniqueidentifier] NOT NULL,
	[salt] [uniqueidentifier] NOT NULL,
	[Token] [varchar](200) NOT NULL,
	[Expiracion] [datetime] NULL,
 CONSTRAINT [PK_Token] PRIMARY KEY CLUSTERED 
(
	[Id_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/6/2022 14:15:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id_usuario] [uniqueidentifier] NOT NULL,
	[Nombre_Usuario] [varchar](100) NOT NULL,
	[IdPregunta] [uniqueidentifier] NULL,
	[Respuesta] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[DNI] [varchar](20) NULL,
	[Contraseña] [varchar](100) NOT NULL,
	[Salt] [varchar](100) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Permiso]    Script Date: 10/6/2022 14:15:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Permiso](
	[Id_usuario] [uniqueidentifier] NOT NULL,
	[Id_permiso] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Usuario_Permiso] PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC,
	[Id_permiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Usuario] ([Id_usuario], [Nombre_Usuario], [IdPregunta], [Respuesta], [Email], [DNI], [Contraseña], [Salt]) VALUES (N'bae9e34e-b203-4ad0-9b68-ab831e74a423', N'Prueba 1', NULL, NULL, N'prueba1@gmail.com', NULL, N'prueba1', NULL)
INSERT [dbo].[Usuario] ([Id_usuario], [Nombre_Usuario], [IdPregunta], [Respuesta], [Email], [DNI], [Contraseña], [Salt]) VALUES (N'1eb89fa0-ec5b-4f29-ac71-fcd99a5887e4', N'Prueba 2', NULL, NULL, N'prueba2@gmail.com', NULL, N'prueba2', NULL)
GO
ALTER TABLE [dbo].[Permiso] ADD  CONSTRAINT [DF_Permiso_Id_permiso]  DEFAULT (newid()) FOR [Id_permiso]
GO
ALTER TABLE [dbo].[Pregunta_seguridad] ADD  CONSTRAINT [DF_Pregunta_seguridad_Id_Pregunta_Seguridad]  DEFAULT (newid()) FOR [Id_Pregunta_Seguridad]
GO
ALTER TABLE [dbo].[Token] ADD  CONSTRAINT [DF_Token_Id_token]  DEFAULT (newid()) FOR [Id_token]
GO
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [DF_Usuario_Id_usuario]  DEFAULT (newid()) FOR [Id_usuario]
GO
USE [master]
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET  READ_WRITE 
GO
