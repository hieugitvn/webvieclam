USE [master]
GO
/****** Object:  Database [vieclam]    Script Date: 28/05/2024 4:19:42 CH ******/
CREATE DATABASE [vieclam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'vieclam', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.HIU\MSSQL\DATA\vieclam.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'vieclam_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.HIU\MSSQL\DATA\vieclam_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [vieclam] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [vieclam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [vieclam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [vieclam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [vieclam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [vieclam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [vieclam] SET ARITHABORT OFF 
GO
ALTER DATABASE [vieclam] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [vieclam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [vieclam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [vieclam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [vieclam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [vieclam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [vieclam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [vieclam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [vieclam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [vieclam] SET  DISABLE_BROKER 
GO
ALTER DATABASE [vieclam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [vieclam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [vieclam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [vieclam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [vieclam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [vieclam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [vieclam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [vieclam] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [vieclam] SET  MULTI_USER 
GO
ALTER DATABASE [vieclam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [vieclam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [vieclam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [vieclam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [vieclam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [vieclam] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [vieclam] SET QUERY_STORE = ON
GO
ALTER DATABASE [vieclam] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [vieclam]
GO
/****** Object:  Table [dbo].[JobHistory]    Script Date: 28/05/2024 4:19:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobHistory](
	[macongviec] [nvarchar](255) NOT NULL,
	[tennhatuyendung] [nvarchar](255) NULL,
	[trangwebnhatuyendung] [nvarchar](255) NULL,
	[loaihinhcongviec] [nvarchar](255) NULL,
	[tencongviec] [nvarchar](255) NULL,
	[lienketungtuyen] [nvarchar](255) NULL,
	[ngaydangtinUTC] [datetime] NULL,
	[ngayhethanUTC] [datetime] NULL,
	[thanhpho] [nvarchar](255) NULL,
	[quocgia] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[macongviec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[JobHistory] ([macongviec], [tennhatuyendung], [trangwebnhatuyendung], [loaihinhcongviec], [tencongviec], [lienketungtuyen], [ngaydangtinUTC], [ngayhethanUTC], [thanhpho], [quocgia]) VALUES (N'_8TzTolWDcuUIMBYAAAAAA==', N'Liemur Limited', N'http://liemur.com', N'FULLTIME', N'Senior Python Engineer', N'https://vn.linkedin.com/jobs/view/senior-python-engineer-at-liemur-limited-3934290236', CAST(N'2024-05-24T06:20:51.000' AS DateTime), CAST(N'2024-06-23T06:20:51.000' AS DateTime), N'Hà Nội', N'VN')
INSERT [dbo].[JobHistory] ([macongviec], [tennhatuyendung], [trangwebnhatuyendung], [loaihinhcongviec], [tencongviec], [lienketungtuyen], [ngaydangtinUTC], [ngayhethanUTC], [thanhpho], [quocgia]) VALUES (N'146vK9gpT2NjXi66AAAAAA==', N'NodeFlair', N'', N'FULLTIME', N'Python Developer', N'https://www.careers-page.com/nodeflair23/job/LRWXRV7X', CAST(N'2024-03-27T10:12:51.000' AS DateTime), CAST(N'2024-06-17T19:26:08.000' AS DateTime), N'Hà Nội', N'VN')
INSERT [dbo].[JobHistory] ([macongviec], [tennhatuyendung], [trangwebnhatuyendung], [loaihinhcongviec], [tencongviec], [lienketungtuyen], [ngaydangtinUTC], [ngayhethanUTC], [thanhpho], [quocgia]) VALUES (N'1e8SjLSP35pzzmJfAAAAAA==', N'Zen8Labs', N'', N'FULLTIME', N'Mid-Level Fullstack Developer (Python/Django)', N'https://vn.indeed.com/viewjob?jk=ba8c2892362906a4', CAST(N'2024-05-27T09:16:29.000' AS DateTime), CAST(N'2024-09-24T17:19:50.000' AS DateTime), N'Hà Nội', N'VN')
INSERT [dbo].[JobHistory] ([macongviec], [tennhatuyendung], [trangwebnhatuyendung], [loaihinhcongviec], [tencongviec], [lienketungtuyen], [ngaydangtinUTC], [ngayhethanUTC], [thanhpho], [quocgia]) VALUES (N'bUpvOAXrIOiJDdLRAAAAAA==', N'FPT Software', N'http://fptsoftware.com', N'FULLTIME', N'Python Backend Engineer (IoT Project) – Up to $2000', N'https://vn.expertini.com/jobs/job/python-backend-engineer-iot-project-up-to-200-hanoi-fpt-software-74777a0d7d/', CAST(N'2024-05-21T00:00:00.000' AS DateTime), CAST(N'2024-06-04T00:00:00.000' AS DateTime), N'Hà Nội', N'VN')
INSERT [dbo].[JobHistory] ([macongviec], [tennhatuyendung], [trangwebnhatuyendung], [loaihinhcongviec], [tencongviec], [lienketungtuyen], [ngaydangtinUTC], [ngayhethanUTC], [thanhpho], [quocgia]) VALUES (N'MFrPjln3Bzrp_CJXAAAAAA==', N'NodeFlair - Tech Salaries, Jobs & more', N'', N'FULLTIME', N'Backend Developer (Python, Django)', N'https://vn.linkedin.com/jobs/view/backend-developer-python-django-at-nodeflair-tech-salaries-jobs-more-3873950809', CAST(N'2024-03-29T04:29:12.000' AS DateTime), CAST(N'2024-06-21T10:46:16.000' AS DateTime), N'Hà Nội', N'VN')
INSERT [dbo].[JobHistory] ([macongviec], [tennhatuyendung], [trangwebnhatuyendung], [loaihinhcongviec], [tencongviec], [lienketungtuyen], [ngaydangtinUTC], [ngayhethanUTC], [thanhpho], [quocgia]) VALUES (N'Nd267cTGnrHKvxgxAAAAAA==', N'NodeFlair - Tech Salaries, Jobs & more', N'', N'FULLTIME', N'Senior Python Developer (Hybrid working)', N'https://vn.linkedin.com/jobs/view/senior-python-developer-hybrid-working-at-nodeflair-tech-salaries-jobs-more-3872969703', CAST(N'2024-03-28T10:29:04.000' AS DateTime), CAST(N'2024-06-20T10:31:05.000' AS DateTime), N'Hà Nội', N'VN')
INSERT [dbo].[JobHistory] ([macongviec], [tennhatuyendung], [trangwebnhatuyendung], [loaihinhcongviec], [tencongviec], [lienketungtuyen], [ngaydangtinUTC], [ngayhethanUTC], [thanhpho], [quocgia]) VALUES (N'otcYmzgMfxbwlJq-AAAAAA==', N'Toshiba Software Development (Viet Nam) Co, Ltd', N'', N'FULLTIME', N'AI Engineer (Python, C++, Java)', N'https://jobs.vn.indeed.com/viewjob?jk=159f97641910dc21', CAST(N'2024-05-23T03:16:39.000' AS DateTime), CAST(N'2024-09-24T05:02:22.000' AS DateTime), N'Hà Nội', N'VN')
INSERT [dbo].[JobHistory] ([macongviec], [tennhatuyendung], [trangwebnhatuyendung], [loaihinhcongviec], [tencongviec], [lienketungtuyen], [ngaydangtinUTC], [ngayhethanUTC], [thanhpho], [quocgia]) VALUES (N'-pWjc71IlglaQYFeAAAAAA==', N'CMC Global Careers', N'', N'FULLTIME', N'Senior Python Developer (offer up to 100M + signing bonus)', N'https://vn.linkedin.com/jobs/view/senior-python-developer-offer-up-to-100m-%2B-signing-bonus-at-cmc-global-careers-3927479263', CAST(N'2024-05-23T03:37:10.000' AS DateTime), CAST(N'2024-11-19T03:36:56.000' AS DateTime), N'Hà Nội', N'VN')
INSERT [dbo].[JobHistory] ([macongviec], [tennhatuyendung], [trangwebnhatuyendung], [loaihinhcongviec], [tencongviec], [lienketungtuyen], [ngaydangtinUTC], [ngayhethanUTC], [thanhpho], [quocgia]) VALUES (N'Ss-Sm-RCF7cllf0HAAAAAA==', N'zen8labs', N'', N'FULLTIME', N'FULLSTACK DEVELOPER (PYTHON)', N'https://vn.linkedin.com/jobs/view/fullstack-developer-python-at-zen8labs-3928877919', CAST(N'2024-05-25T06:12:24.000' AS DateTime), CAST(N'2024-11-21T06:12:24.000' AS DateTime), N'', N'VN')
INSERT [dbo].[JobHistory] ([macongviec], [tennhatuyendung], [trangwebnhatuyendung], [loaihinhcongviec], [tencongviec], [lienketungtuyen], [ngaydangtinUTC], [ngayhethanUTC], [thanhpho], [quocgia]) VALUES (N'wTc979PpdazixrMtAAAAAA==', N'Global R&D', N'', N'FULLTIME', N'Back-end engineer (Python)', N'https://www.genieegroup.com/job/back-end-engineer-python-upto-2000/', CAST(N'2024-05-03T03:06:21.000' AS DateTime), CAST(N'2024-06-30T16:59:59.000' AS DateTime), N'Hà Nội', N'VN')
GO
/****** Object:  StoredProcedure [dbo].[SP_GetJobs]    Script Date: 28/05/2024 4:19:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetJobs]
AS
BEGIN
    SELECT 
        tennhatuyendung,
        trangwebnhatuyendung,
        loaihinhcongviec,
        tencongviec,
        lienketungtuyen,
        ngaydangtinUTC,
        ngayhethanUTC,
        thanhpho,
        quocgia
    FROM JobHistory
END
GO
USE [master]
GO
ALTER DATABASE [vieclam] SET  READ_WRITE 
GO
