USE [master]
GO
/****** Object:  Database [EmpiresUniversity]    Script Date: 8/30/2016 1:40:03 AM ******/
CREATE DATABASE [EmpiresUniversity]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmpiresUniversity', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\EmpiresUniversity.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmpiresUniversity_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\EmpiresUniversity_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmpiresUniversity] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmpiresUniversity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmpiresUniversity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmpiresUniversity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmpiresUniversity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmpiresUniversity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmpiresUniversity] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmpiresUniversity] SET  MULTI_USER 
GO
ALTER DATABASE [EmpiresUniversity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmpiresUniversity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmpiresUniversity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmpiresUniversity] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EmpiresUniversity] SET DELAYED_DURABILITY = DISABLED 
GO
USE [EmpiresUniversity]
GO
/****** Object:  Table [dbo].[Allocate]    Script Date: 8/30/2016 1:40:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Allocate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department] [varchar](50) NOT NULL,
	[Course] [varchar](50) NOT NULL,
	[RoomNo] [varchar](50) NOT NULL,
	[Day] [varchar](50) NOT NULL,
	[FromTime] [varchar](50) NULL,
	[ToTime] [varchar](50) NULL,
	[FromTimeHH] [varchar](50) NULL,
	[FromTimeMM] [varchar](50) NULL,
	[ToTimeHH] [varchar](50) NULL,
	[ToTimeMM] [varchar](50) NULL,
	[FromTimeAMPM] [varchar](50) NULL,
	[ToTimeAMPM] [varchar](50) NULL,
 CONSTRAINT [PK_Allocate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 8/30/2016 1:40:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseCode] [varchar](50) NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
	[CourseCredit] [decimal](18, 0) NOT NULL,
	[CourseDescription] [varchar](500) NOT NULL,
	[Department] [varchar](50) NOT NULL,
	[Semestar] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Day]    Script Date: 8/30/2016 1:40:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Day](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DayName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Day] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 8/30/2016 1:40:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [int] NOT NULL,
	[DepartmentName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 8/30/2016 1:40:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designation](
	[DesignationID] [int] IDENTITY(1,1) NOT NULL,
	[DesignationName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[DesignationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room]    Script Date: 8/30/2016 1:40:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[RoomNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 8/30/2016 1:40:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Semester](
	[SemesterID] [int] IDENTITY(1,1) NOT NULL,
	[SemesterName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[SemesterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 8/30/2016 1:40:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationNO] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Department] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 8/30/2016 1:40:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherID] [int] IDENTITY(1,1) NOT NULL,
	[TeacherName] [varchar](50) NOT NULL,
	[TeacherAddress] [varchar](250) NOT NULL,
	[TeacherEmail] [varchar](50) NOT NULL,
	[TeacherPhoneNo] [varchar](50) NOT NULL,
	[CreditTaken] [int] NOT NULL,
	[Designation] [varchar](50) NOT NULL,
	[Department] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [EmpiresUniversity] SET  READ_WRITE 
GO
