USE [master]
GO
/****** Object:  Database [DatabaseP1610]    Script Date: 10/15/2022 5:09:19 PM ******/
CREATE DATABASE [DatabaseP1610]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DatabaseP1610', FILENAME = N'E:\SQL Express 2019\MSSQL15.SQLEXPRESS\MSSQL\DATA\DatabaseP1610.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DatabaseP1610_log', FILENAME = N'E:\SQL Express 2019\MSSQL15.SQLEXPRESS\MSSQL\DATA\DatabaseP1610_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DatabaseP1610] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DatabaseP1610].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DatabaseP1610] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DatabaseP1610] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DatabaseP1610] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DatabaseP1610] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DatabaseP1610] SET ARITHABORT OFF 
GO
ALTER DATABASE [DatabaseP1610] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DatabaseP1610] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DatabaseP1610] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DatabaseP1610] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DatabaseP1610] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DatabaseP1610] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DatabaseP1610] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DatabaseP1610] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DatabaseP1610] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DatabaseP1610] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DatabaseP1610] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DatabaseP1610] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DatabaseP1610] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DatabaseP1610] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DatabaseP1610] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DatabaseP1610] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DatabaseP1610] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DatabaseP1610] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DatabaseP1610] SET  MULTI_USER 
GO
ALTER DATABASE [DatabaseP1610] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DatabaseP1610] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DatabaseP1610] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DatabaseP1610] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DatabaseP1610] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DatabaseP1610] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DatabaseP1610] SET QUERY_STORE = OFF
GO
USE [DatabaseP1610]
GO
/****** Object:  Table [dbo].[tb_About]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_About](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Detail] [ntext] NULL,
	[Status] [bit] NULL,
	[MetaKeywords] [nvarchar](50) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Config]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Config](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Value] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_tb_Config] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Contact]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Detail] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_tb_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Invoice]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Invoice](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[DeleteBy] [int] NULL,
	[DeleteDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_InvoiceDetail]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_InvoiceDetail](
	[InvoiceID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_tb_InvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Menu]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Link] [nvarchar](250) NULL,
	[Taget] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_tb_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderDetail]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[Price] [decimal](18, 0) NULL,
	[Quanity] [int] NULL,
 CONSTRAINT [PK_tb_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Orders]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Orders](
	[OrderID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[Status] [bit] NULL,
	[Delivered] [bit] NULL,
	[DeliveryDate] [datetime] NULL,
	[CustomerID] [int] NULL,
	[Discount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Post]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Post](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[Image] [nvarchar](250) NULL,
	[Desription] [nvarchar](500) NULL,
	[Detail] [ntext] NULL,
	[ViewCount] [int] NULL,
	[CateID] [int] NULL,
	[MetaKeywords] [nvarchar](50) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Post] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_PostCategory]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PostCategory](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[SeoTitle] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[Sort] [int] NULL,
	[ParentID] [int] NULL,
	[MetaKeywords] [nvarchar](50) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_PostCategory] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Product]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[ProductID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[Image] [nvarchar](250) NULL,
	[ListImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[VAT] [bit] NULL,
	[Quanity] [int] NULL,
	[Warrranty] [int] NULL,
	[Hot] [datetime] NULL,
	[Desription] [nvarchar](500) NULL,
	[Detail] [ntext] NULL,
	[ViewCount] [int] NULL,
	[CateID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[MetaKeywords] [nvarchar](50) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
 CONSTRAINT [PK_tb_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductCategory]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductCategory](
	[CateID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[SeoTitle] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[Sort] [int] NULL,
	[ParentID] [int] NULL,
	[MetaKeywords] [nvarchar](50) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductComment]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductComment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Detail] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[ProductID] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_ProductComment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Slide]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Sort] [int] NULL,
	[Link] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_tb_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Tag]    Script Date: 10/15/2022 5:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Tag](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_About] ADD  CONSTRAINT [DF_tb_About_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Invoice] ADD  CONSTRAINT [DF_tb_Invoice_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Post] ADD  CONSTRAINT [DF_tb_Post_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_Post] ADD  CONSTRAINT [DF_tb_Post_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_PostCategory] ADD  CONSTRAINT [DF_tb_PostCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_PostCategory] ADD  CONSTRAINT [DF_tb_PostCategory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_Status_1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_Price_1]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_Quanity_1]  DEFAULT ((0)) FOR [Quanity]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_Warrranty_1]  DEFAULT ((0)) FOR [Warrranty]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_CreatedDate_1]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_ProductCategory] ADD  CONSTRAINT [DF_tb_ProductCategory_Status_1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_ProductCategory] ADD  CONSTRAINT [DF_tb_ProductCategory_CreatedDate_1]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_ProductComment] ADD  CONSTRAINT [DF_tb_ProductComment_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
USE [master]
GO
ALTER DATABASE [DatabaseP1610] SET  READ_WRITE 
GO
