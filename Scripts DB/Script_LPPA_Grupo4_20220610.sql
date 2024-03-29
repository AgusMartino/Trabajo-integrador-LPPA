﻿USE [master]
GO
/****** Object:  Database [TP_Integrador_G4_LPPA]    Script Date: 06/10/2022 11:24:20 ******/
CREATE DATABASE [TP_Integrador_G4_LPPA] ON  PRIMARY 
( NAME = N'TP_Integrador_G4_LPPA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEZE\MSSQL\DATA\TP_Integrador_G4_LPPA.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TP_Integrador_G4_LPPA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEZE\MSSQL\DATA\TP_Integrador_G4_LPPA_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
ALTER DATABASE [TP_Integrador_G4_LPPA] SET AUTO_CREATE_STATISTICS ON
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
ALTER DATABASE [TP_Integrador_G4_LPPA] SET  READ_WRITE
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET RECOVERY FULL
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET  MULTI_USER
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TP_Integrador_G4_LPPA] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'TP_Integrador_G4_LPPA', N'ON'
GO
USE [TP_Integrador_G4_LPPA]
GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 06/10/2022 11:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Permiso](
	[Id_permiso] [int] NOT NULL,
	[Permiso] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Permiso] PRIMARY KEY CLUSTERED 
(
	[Id_permiso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pregunta_seguridad]    Script Date: 06/10/2022 11:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Pregunta_seguridad](
	[Id_Pregunta_Seguridad] [int] NOT NULL,
	[Pregunta_seguridad] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Pregunta_seguridad] PRIMARY KEY CLUSTERED 
(
	[Id_Pregunta_Seguridad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[PERMISO_LISTARID]    Script Date: 06/10/2022 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PERMISO_LISTARID]
@ID int
as
BEGIN
	SELECT per_Id, per_Cod_Permiso, per_detalle_Permiso
	FROM permiso
	WHERE per_Id = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[PERMISO_LISTAR]    Script Date: 06/10/2022 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PERMISO_LISTAR]
AS 
BEGIN
	SELECT a.per_Id, a.per_Cod_Permiso, a.per_detalle_Permiso
	FROM Permiso a;
END
GO
/****** Object:  StoredProcedure [dbo].[PERMISO_INSERTAR]    Script Date: 06/10/2022 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PERMISO_INSERTAR]
	@COD_PERMISO VARCHAR(50), 
	@DESCRIPCION_PERMISO VARCHAR(MAX)
AS 
BEGIN
	DECLARE @ID INT
	
	SET @ID = ISNULL ((SELECT MAX(per_Id) FROM Permiso) ,0) + 1;
	
	INSERT INTO Permiso  (per_Id, per_Cod_Permiso, per_detalle_Permiso)
	VALUES (@ID, @COD_PERMISO, @DESCRIPCION_PERMISO );
END
GO
/****** Object:  StoredProcedure [dbo].[PERMISO_EDITAR]    Script Date: 06/10/2022 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PERMISO_EDITAR]
	@ID INT,
	@COD_PERMISO VARCHAR(50), 
	@DESCRIPCION_PERMISO VARCHAR(100)
AS 
BEGIN
	
	UPDATE PERMISO
	SET
		per_Cod_Permiso = @COD_PERMISO ,
		per_detalle_Permiso=  @DESCRIPCION_PERMISO
	WHERE per_Id = @ID;
	
END
GO
/****** Object:  StoredProcedure [dbo].[PERMISO_BORRAR]    Script Date: 06/10/2022 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PERMISO_BORRAR]
	@ID INT
AS 
BEGIN
	
	DELETE FROM PERMISO 
	WHERE per_ID = @ID;
	
END
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 06/10/2022 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id_usuario] [int] NOT NULL,
	[Nombre_Usuario] [varchar](100) NOT NULL,
	[IdPregunta] [int] NOT NULL,
	[Respuesta] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[DNI] [varchar](20) NOT NULL,
	[Contraseña] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario_Permiso]    Script Date: 06/10/2022 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Permiso](
	[Id_usuario] [int] NOT NULL,
	[Id_permiso] [int] NOT NULL,
 CONSTRAINT [PK_Usuario_Permiso] PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC,
	[Id_permiso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Token]    Script Date: 06/10/2022 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Token](
	[Id_token] [int] NOT NULL,
	[Id_usuario] [int] NOT NULL,
	[salt] [int] NOT NULL,
	[Token] [varchar](200) NULL,
	[Expiracion] [datetime] NULL,
 CONSTRAINT [PK_Token] PRIMARY KEY CLUSTERED 
(
	[Id_token] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK__Usuario__IdPregu__1920BF5C]    Script Date: 06/10/2022 11:24:22 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Pregunta_seguridad] ([Id_Pregunta_Seguridad])
GO
/****** Object:  ForeignKey [FK__Usuario_P__Id_pe__15502E78]    Script Date: 06/10/2022 11:24:22 ******/
ALTER TABLE [dbo].[Usuario_Permiso]  WITH CHECK ADD FOREIGN KEY([Id_permiso])
REFERENCES [dbo].[Permiso] ([Id_permiso])
GO
/****** Object:  ForeignKey [FK__Usuario_P__Id_us__145C0A3F]    Script Date: 06/10/2022 11:24:22 ******/
ALTER TABLE [dbo].[Usuario_Permiso]  WITH CHECK ADD FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[Usuario] ([Id_usuario])
GO
/****** Object:  ForeignKey [FK__Token__Id_usuari__1BFD2C07]    Script Date: 06/10/2022 11:24:22 ******/
ALTER TABLE [dbo].[Token]  WITH CHECK ADD FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[Usuario] ([Id_usuario])
GO
