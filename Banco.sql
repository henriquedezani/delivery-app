USE [master]
GO
/****** Object:  Database [BDDelivery_Food]    Script Date: 12/06/2020 17:11:39 ******/
CREATE DATABASE [BDDelivery_Food]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDDelivery_Food', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BDDelivery_Food.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDDelivery_Food_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BDDelivery_Food_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BDDelivery_Food] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDDelivery_Food].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDDelivery_Food] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDDelivery_Food] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDDelivery_Food] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDDelivery_Food] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDDelivery_Food] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET RECOVERY FULL 
GO
ALTER DATABASE [BDDelivery_Food] SET  MULTI_USER 
GO
ALTER DATABASE [BDDelivery_Food] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDDelivery_Food] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDDelivery_Food] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDDelivery_Food] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDDelivery_Food] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDDelivery_Food', N'ON'
GO
ALTER DATABASE [BDDelivery_Food] SET QUERY_STORE = OFF
GO
USE [BDDelivery_Food]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 12/06/2020 17:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id] [int] NOT NULL IDENTITY,
	[nome] [varchar](50) NOT NULL,
	[cpf] [varchar](20) NULL,
	[celular] [varchar](20) NULL,
	[id_endereco] [int] NULL,
	[id_usuario] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 12/06/2020 17:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[nome] [varchar](80) NOT NULL,
	[cnpj] [varchar](18) NULL,
	[telefone] [varchar](15) NULL,
	[id] [int] NOT NULL IDENTITY,
	[id_endereco] [int] NULL,
	[id_usuario] [int] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[endereco]    Script Date: 12/06/2020 17:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Endereco](
	[id] [int] NOT NULL IDENTITY,
	[rua] [varchar](80) NOT NULL,
	[numero] [int] NOT NULL,
	[complemento] [varchar](80) NULL,
	[cep] [varchar](9) NOT NULL,
	[cidade] [varchar](80) NULL,
	[bairro] [varchar](50) NOT NULL,
 CONSTRAINT [PK_endereco] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Itens_Comprados]    Script Date: 12/06/2020 17:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Itens_Comprados](
	[id] [int] NOT NULL IDENTITY,
	[quantidade] [int] NOT NULL,
	[valor] [float] NOT NULL,
	[id_pedido] [int] NOT NULL,
	[id_produto] [int] NOT NULL,
 CONSTRAINT [PK_Itens_Comprados] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 12/06/2020 17:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[ID] [int] NOT NULL IDENTITY,
	[data_pedido] [date] NOT NULL,
	[valor_troco] [int] NULL,
	[id_cliente] [int] NULL,
	[id_empresa] [int] NULL,
	[id_endereco] [int] NULL,
	[status_pedido] [int] NULL,
	[valor_frete] [float] NULL,
	[tipo_pagamento] [int] NOT NULL,
 CONSTRAINT [PK_PEDIDO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produto]    Script Date: 12/06/2020 17:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[id] [int] NOT NULL IDENTITY,
	[nome] [varchar](50) NOT NULL,
	[descricao] [varchar](80) NULL,
	[valor] [float] NOT NULL,
	[nome_imagem] [varchar](80) NULL,
	[id_empresa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 12/06/2020 17:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] NOT NULL IDENTITY,
	[email] [varchar](80) NOT NULL,
	[senha] [varchar](50) NOT NULL,
	[tipo] [int] not null,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Endereco] FOREIGN KEY([id_endereco])
REFERENCES [dbo].[Endereco] ([id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Endereco]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Usuario]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_Empresa] FOREIGN KEY([id_endereco])
REFERENCES [dbo].[Endereco] ([id])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Endereco_Empresa]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Empresa] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Usuario_Empresa]
GO
ALTER TABLE [dbo].[Itens_Comprados]  WITH CHECK ADD  CONSTRAINT [FK_Pedido] FOREIGN KEY([id_pedido])
REFERENCES [dbo].[Pedido] ([ID])
GO
ALTER TABLE [dbo].[Itens_Comprados] CHECK CONSTRAINT [FK_Pedido]
GO
ALTER TABLE [dbo].[Itens_Comprados]  WITH CHECK ADD  CONSTRAINT [FK_Produto] FOREIGN KEY([id_produto])
REFERENCES [dbo].[produto] ([id])
GO
ALTER TABLE [dbo].[Itens_Comprados] CHECK CONSTRAINT [FK_Produto]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Pedido] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([id])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Cliente_Pedido]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Pedido] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[Empresa] ([id])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Empresa_Pedido]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_Pedido] FOREIGN KEY([id_endereco])
REFERENCES [dbo].[Endereco] ([id])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Endereco_Pedido]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Produto] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[Empresa] ([id])
GO
ALTER DATABASE [BDDelivery_Food] SET  READ_WRITE 
GO
