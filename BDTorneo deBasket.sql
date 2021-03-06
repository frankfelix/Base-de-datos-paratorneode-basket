USE [master]
GO
/****** Object:  Database [clientesDB]    Script Date: 11/27/2018 2:17:13 AM ******/
CREATE DATABASE [clientesDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'clientesDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\clientesDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'clientesDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\clientesDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [clientesDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [clientesDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [clientesDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [clientesDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [clientesDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [clientesDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [clientesDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [clientesDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [clientesDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [clientesDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [clientesDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [clientesDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [clientesDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [clientesDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [clientesDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [clientesDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [clientesDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [clientesDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [clientesDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [clientesDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [clientesDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [clientesDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [clientesDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [clientesDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [clientesDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [clientesDB] SET  MULTI_USER 
GO
ALTER DATABASE [clientesDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [clientesDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [clientesDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [clientesDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [clientesDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [clientesDB] SET QUERY_STORE = OFF
GO
USE [clientesDB]
GO
/****** Object:  Table [dbo].[albrito]    Script Date: 11/27/2018 2:17:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[albrito](
	[albritoid] [char](4) NOT NULL,
	[nombre] [char](40) NULL,
	[apellido] [char](40) NULL,
	[direccion] [char](100) NULL,
 CONSTRAINT [PK_albrito] PRIMARY KEY CLUSTERED 
(
	[albritoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[equipos]    Script Date: 11/27/2018 2:17:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipos](
	[Equiposid] [char](4) NOT NULL,
	[nombre] [char](40) NULL,
	[ciudad] [char](40) NULL,
	[canjugadores] [nchar](10) NULL,
 CONSTRAINT [PK_equipos] PRIMARY KEY CLUSTERED 
(
	[Equiposid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[juegos]    Script Date: 11/27/2018 2:17:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[juegos](
	[juegosid] [char](4) NOT NULL,
	[equiposid] [char](4) NULL,
	[equipos2id] [char](4) NULL,
	[albritroid] [char](4) NULL,
	[fecha] [nchar](10) NULL,
 CONSTRAINT [PK_juegos] PRIMARY KEY CLUSTERED 
(
	[juegosid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[albrito] ([albritoid], [nombre], [apellido], [direccion]) VALUES (N'1   ', N'juan                                    ', N'perez                                   ', N'callle1                                                                                             ')
INSERT [dbo].[albrito] ([albritoid], [nombre], [apellido], [direccion]) VALUES (N'10  ', N'soni                                    ', N'mojica                                  ', N'haina                                                                                               ')
INSERT [dbo].[albrito] ([albritoid], [nombre], [apellido], [direccion]) VALUES (N'2   ', N'maicol                                  ', N'shanchez                                ', N'calle4                                                                                              ')
INSERT [dbo].[albrito] ([albritoid], [nombre], [apellido], [direccion]) VALUES (N'3   ', N'wenderley                               ', N'perez                                   ', N'paseo de los ingeniero                                                                              ')
INSERT [dbo].[albrito] ([albritoid], [nombre], [apellido], [direccion]) VALUES (N'4   ', N'frankfelix                              ', N'guzman                                  ', N'san antonio                                                                                         ')
INSERT [dbo].[albrito] ([albritoid], [nombre], [apellido], [direccion]) VALUES (N'5   ', N'jey                                     ', N'morban                                  ', N'barrio chino                                                                                        ')
INSERT [dbo].[albrito] ([albritoid], [nombre], [apellido], [direccion]) VALUES (N'6   ', N'andri                                   ', N'morban                                  ', N'distrito                                                                                            ')
INSERT [dbo].[albrito] ([albritoid], [nombre], [apellido], [direccion]) VALUES (N'7   ', N'starlin                                 ', N'pena                                    ', N'lasamerica                                                                                          ')
INSERT [dbo].[albrito] ([albritoid], [nombre], [apellido], [direccion]) VALUES (N'8   ', N'darbin                                  ', N'valenzuela                              ', N'27 de  febrero                                                                                      ')
INSERT [dbo].[albrito] ([albritoid], [nombre], [apellido], [direccion]) VALUES (N'9   ', N'zoila                                   ', N'castillo                                ', N'nigua                                                                                               ')
INSERT [dbo].[equipos] ([Equiposid], [nombre], [ciudad], [canjugadores]) VALUES (N'1   ', N'san antonio                             ', N'haina                                   ', N'13        ')
INSERT [dbo].[equipos] ([Equiposid], [nombre], [ciudad], [canjugadores]) VALUES (N'10  ', N'la canchita                             ', N'haina                                   ', N'14        ')
INSERT [dbo].[equipos] ([Equiposid], [nombre], [ciudad], [canjugadores]) VALUES (N'2   ', N'san agustin                             ', N'haina                                   ', N'14        ')
INSERT [dbo].[equipos] ([Equiposid], [nombre], [ciudad], [canjugadores]) VALUES (N'3   ', N'el centro                               ', N'haina                                   ', N'13        ')
INSERT [dbo].[equipos] ([Equiposid], [nombre], [ciudad], [canjugadores]) VALUES (N'4   ', N'el molino                               ', N'haina                                   ', N'13        ')
INSERT [dbo].[equipos] ([Equiposid], [nombre], [ciudad], [canjugadores]) VALUES (N'5   ', N'san jose                                ', N'haina                                   ', N'12        ')
INSERT [dbo].[equipos] ([Equiposid], [nombre], [ciudad], [canjugadores]) VALUES (N'6   ', N'san gregorio                            ', N'haina                                   ', N'10        ')
INSERT [dbo].[equipos] ([Equiposid], [nombre], [ciudad], [canjugadores]) VALUES (N'7   ', N'la duarte                               ', N'haina                                   ', N'11        ')
INSERT [dbo].[equipos] ([Equiposid], [nombre], [ciudad], [canjugadores]) VALUES (N'8   ', N'la chimenea                             ', N'haina                                   ', N'11        ')
INSERT [dbo].[equipos] ([Equiposid], [nombre], [ciudad], [canjugadores]) VALUES (N'9   ', N'los mormones                            ', N'haina                                   ', N'12        ')
INSERT [dbo].[juegos] ([juegosid], [equiposid], [equipos2id], [albritroid], [fecha]) VALUES (N'1   ', N'3   ', N'2   ', N'2   ', N'julio     ')
INSERT [dbo].[juegos] ([juegosid], [equiposid], [equipos2id], [albritroid], [fecha]) VALUES (N'2   ', N'4   ', N'3   ', N'2   ', N'enero     ')
INSERT [dbo].[juegos] ([juegosid], [equiposid], [equipos2id], [albritroid], [fecha]) VALUES (N'3   ', N'5   ', N'1   ', N'3   ', N'julio     ')
INSERT [dbo].[juegos] ([juegosid], [equiposid], [equipos2id], [albritroid], [fecha]) VALUES (N'4   ', N'3   ', N'4   ', N'3   ', N'abril     ')
INSERT [dbo].[juegos] ([juegosid], [equiposid], [equipos2id], [albritroid], [fecha]) VALUES (N'5   ', N'6   ', N'5   ', N'3   ', N'diciembre ')
INSERT [dbo].[juegos] ([juegosid], [equiposid], [equipos2id], [albritroid], [fecha]) VALUES (N'6   ', N'5   ', N'7   ', N'4   ', N'noviembre ')
INSERT [dbo].[juegos] ([juegosid], [equiposid], [equipos2id], [albritroid], [fecha]) VALUES (N'7   ', N'8   ', N'4   ', N'5   ', N'enero     ')
INSERT [dbo].[juegos] ([juegosid], [equiposid], [equipos2id], [albritroid], [fecha]) VALUES (N'8   ', N'6   ', N'7   ', N'6   ', N'marzo     ')
INSERT [dbo].[juegos] ([juegosid], [equiposid], [equipos2id], [albritroid], [fecha]) VALUES (N'9   ', N'5   ', N'8   ', N'2   ', N'febrero   ')
ALTER TABLE [dbo].[juegos]  WITH CHECK ADD  CONSTRAINT [FK_juegos_albrito] FOREIGN KEY([albritroid])
REFERENCES [dbo].[albrito] ([albritoid])
GO
ALTER TABLE [dbo].[juegos] CHECK CONSTRAINT [FK_juegos_albrito]
GO
ALTER TABLE [dbo].[juegos]  WITH CHECK ADD  CONSTRAINT [FK_juegos_equipos] FOREIGN KEY([equiposid])
REFERENCES [dbo].[equipos] ([Equiposid])
GO
ALTER TABLE [dbo].[juegos] CHECK CONSTRAINT [FK_juegos_equipos]
GO
ALTER TABLE [dbo].[juegos]  WITH CHECK ADD  CONSTRAINT [FK_juegos_equipos1] FOREIGN KEY([equipos2id])
REFERENCES [dbo].[equipos] ([Equiposid])
GO
ALTER TABLE [dbo].[juegos] CHECK CONSTRAINT [FK_juegos_equipos1]
GO
USE [master]
GO
ALTER DATABASE [clientesDB] SET  READ_WRITE 
GO
