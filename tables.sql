USE [master]
GO
/****** Object:  Database [Assetmanagement]    Script Date: 5/18/2018 8:05:07 AM ******/
CREATE DATABASE [Assetmanagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assetmanagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Assetmanagement.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Assetmanagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Assetmanagement_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Assetmanagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assetmanagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assetmanagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assetmanagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assetmanagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assetmanagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assetmanagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assetmanagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assetmanagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assetmanagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assetmanagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assetmanagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assetmanagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assetmanagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assetmanagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assetmanagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assetmanagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Assetmanagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assetmanagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assetmanagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assetmanagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assetmanagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assetmanagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assetmanagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assetmanagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assetmanagement] SET  MULTI_USER 
GO
ALTER DATABASE [Assetmanagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assetmanagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assetmanagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assetmanagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Assetmanagement] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Assetmanagement]
GO
/****** Object:  Table [dbo].[AllocatedAssetDetails]    Script Date: 5/18/2018 8:05:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllocatedAssetDetails](
	[AllocatedAssetDetailsID] [int] NOT NULL,
	[AssetAlloactedID] [int] NOT NULL,
	[AssetID] [int] NULL,
	[EmployeeID] [int] NULL,
 CONSTRAINT [PK_AllocatedAssetDetails] PRIMARY KEY CLUSTERED 
(
	[AllocatedAssetDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssetAllocated]    Script Date: 5/18/2018 8:05:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetAllocated](
	[AssetAllocatedID] [int] NOT NULL,
	[AssetAllocatedDescription] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AssetAssigned] PRIMARY KEY CLUSTERED 
(
	[AssetAllocatedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Assets]    Script Date: 5/18/2018 8:05:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assets](
	[AssetID] [int] IDENTITY(1,1) NOT NULL,
	[CENumber] [int] NOT NULL,
	[AssetName] [varchar](max) NOT NULL,
	[AssetDescription] [varchar](max) NULL,
	[SerialNumber] [varchar](max) NOT NULL,
	[PurchasedValue] [money] NOT NULL,
	[AssetTypeID] [int] NOT NULL,
	[PurchaseDate] [date] NOT NULL,
	[DisposedDate] [date] NULL,
	[AssetAllocatedID] [int] NOT NULL,
	[BookValue] [money] NULL,
	[GroupCodeID] [int] NOT NULL,
	[AssetStatusID] [int] NOT NULL,
 CONSTRAINT [PK_Assets_1] PRIMARY KEY CLUSTERED 
(
	[AssetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Assets_Employee]    Script Date: 5/18/2018 8:05:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assets_Employee](
	[Assets_EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Asset_ID] [int] NOT NULL,
	[Employee_ID] [int] NOT NULL,
 CONSTRAINT [PK_Assets_Employee] PRIMARY KEY CLUSTERED 
(
	[Assets_EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssetStatus]    Script Date: 5/18/2018 8:05:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetStatus](
	[AssetStatusID] [int] NOT NULL,
	[AssetIStatusDescription] [varchar](max) NOT NULL,
 CONSTRAINT [PK_AssetDisposals_1] PRIMARY KEY CLUSTERED 
(
	[AssetStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssetType]    Script Date: 5/18/2018 8:05:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetType](
	[AssetTypeID] [int] IDENTITY(1,1) NOT NULL,
	[AssetTypeDescription] [varchar](max) NOT NULL,
 CONSTRAINT [PK_AssetType] PRIMARY KEY CLUSTERED 
(
	[AssetTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/18/2018 8:05:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](max) NOT NULL,
	[EmployeeSurname] [varchar](max) NOT NULL,
	[EmployeeCode] [int] NOT NULL,
	[LocationID] [int] NULL,
	[GroupCodeID] [int] NOT NULL,
	[AssetAllocatedID] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupCode]    Script Date: 5/18/2018 8:05:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupCode](
	[GroupCodeID] [int] IDENTITY(1,1) NOT NULL,
	[GroupCodeDescription] [varchar](max) NOT NULL,
	[LocationID] [int] NOT NULL,
 CONSTRAINT [PK_GroupCode] PRIMARY KEY CLUSTERED 
(
	[GroupCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locations]    Script Date: 5/18/2018 8:05:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationDescription] [varchar](max) NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/18/2018 8:05:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] NOT NULL,
	[Username] [varchar](max) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[UserTypeID] [int] NOT NULL,
	[UserFirstName] [varchar](max) NOT NULL,
	[UserSurname] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserType]    Script Date: 5/18/2018 8:05:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeDescription] [varchar](max) NOT NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[AllocatedAssetDetails]  WITH CHECK ADD  CONSTRAINT [FK_AllocatedAssetDetails_AssetAllocated] FOREIGN KEY([AssetAlloactedID])
REFERENCES [dbo].[AssetAllocated] ([AssetAllocatedID])
GO
ALTER TABLE [dbo].[AllocatedAssetDetails] CHECK CONSTRAINT [FK_AllocatedAssetDetails_AssetAllocated]
GO
ALTER TABLE [dbo].[Assets]  WITH CHECK ADD  CONSTRAINT [FK_Assets_AssetAllocated] FOREIGN KEY([AssetAllocatedID])
REFERENCES [dbo].[AssetAllocated] ([AssetAllocatedID])
GO
ALTER TABLE [dbo].[Assets] CHECK CONSTRAINT [FK_Assets_AssetAllocated]
GO
ALTER TABLE [dbo].[Assets]  WITH CHECK ADD  CONSTRAINT [FK_Assets_AssetStatus] FOREIGN KEY([AssetStatusID])
REFERENCES [dbo].[AssetStatus] ([AssetStatusID])
GO
ALTER TABLE [dbo].[Assets] CHECK CONSTRAINT [FK_Assets_AssetStatus]
GO
ALTER TABLE [dbo].[Assets]  WITH CHECK ADD  CONSTRAINT [FK_Assets_AssetType] FOREIGN KEY([AssetTypeID])
REFERENCES [dbo].[AssetType] ([AssetTypeID])
GO
ALTER TABLE [dbo].[Assets] CHECK CONSTRAINT [FK_Assets_AssetType]
GO
ALTER TABLE [dbo].[Assets_Employee]  WITH CHECK ADD  CONSTRAINT [FK_Assets_Employee_Assets] FOREIGN KEY([Asset_ID])
REFERENCES [dbo].[Assets] ([AssetID])
GO
ALTER TABLE [dbo].[Assets_Employee] CHECK CONSTRAINT [FK_Assets_Employee_Assets]
GO
ALTER TABLE [dbo].[Assets_Employee]  WITH CHECK ADD  CONSTRAINT [FK_Assets_Employee_Employees] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Assets_Employee] CHECK CONSTRAINT [FK_Assets_Employee_Employees]
GO
ALTER TABLE [dbo].[GroupCode]  WITH CHECK ADD  CONSTRAINT [FK_GroupCode_Locations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[GroupCode] CHECK CONSTRAINT [FK_GroupCode_Locations]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserType1] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([UserTypeID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserType1]
GO
USE [master]
GO
ALTER DATABASE [Assetmanagement] SET  READ_WRITE 
GO
