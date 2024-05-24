USE [master]
GO
/****** Object:  Database [vieclam]    Script Date: 24/05/2024 10:05:41 CH ******/
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
/****** Object:  Table [dbo].[JobHistory]    Script Date: 24/05/2024 10:05:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobHistory](
	[job_id] [int] IDENTITY(1,1) NOT NULL,
	[employer_name] [varchar](255) NULL,
	[job_employment_type] [varchar](100) NULL,
	[job_title] [varchar](255) NULL,
	[job_apply_link] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[JobHistory] ON 

INSERT [dbo].[JobHistory] ([job_id], [employer_name], [job_employment_type], [job_title], [job_apply_link]) VALUES (186, N'Group-IB', N'FULLTIME', N'Python Developer', N'https://vn.linkedin.com/jobs/view/python-developer-at-group-ib-3932169240')
INSERT [dbo].[JobHistory] ([job_id], [employer_name], [job_employment_type], [job_title], [job_apply_link]) VALUES (187, N'LitGroup', N'FULLTIME', N'Python Developer', N'https://vn.linkedin.com/jobs/view/python-developer-at-litgroup-3925569261')
INSERT [dbo].[JobHistory] ([job_id], [employer_name], [job_employment_type], [job_title], [job_apply_link]) VALUES (188, N'Liemur Limited', N'FULLTIME', N'Senior Python Engineer', N'https://vn.linkedin.com/jobs/view/senior-python-engineer-at-liemur-limited-3934290236')
INSERT [dbo].[JobHistory] ([job_id], [employer_name], [job_employment_type], [job_title], [job_apply_link]) VALUES (189, N'CMC Global Careers', N'FULLTIME', N'Senior Python Developer (offer up to 100M + signing bonus)', N'https://vn.linkedin.com/jobs/view/senior-python-developer-offer-up-to-100m-%2B-signing-bonus-at-cmc-global-careers-3927479263')
INSERT [dbo].[JobHistory] ([job_id], [employer_name], [job_employment_type], [job_title], [job_apply_link]) VALUES (190, N'Sotatek', N'PARTTIME', N'Python Developer', N'https://vn.linkedin.com/jobs/view/python-developer-at-sotatek-3848376884')
INSERT [dbo].[JobHistory] ([job_id], [employer_name], [job_employment_type], [job_title], [job_apply_link]) VALUES (191, N'NodeFlair - Tech Salaries, Jobs & more', N'FULLTIME', N'Python Developer', N'https://vn.linkedin.com/jobs/view/python-developer-at-nodeflair-tech-salaries-jobs-more-3872057994')
INSERT [dbo].[JobHistory] ([job_id], [employer_name], [job_employment_type], [job_title], [job_apply_link]) VALUES (192, N'SmartDev', N'FULLTIME', N'Backend Developer (Python and Django)', N'https://vn.whatjobs.com/job/Backend-Developer-Python/hanoi-hanoi/2113356')
INSERT [dbo].[JobHistory] ([job_id], [employer_name], [job_employment_type], [job_title], [job_apply_link]) VALUES (193, N'Toshiba Software Development (Viet Nam) Co, Ltd', N'FULLTIME', N'AI Engineer Python, C++, Java', N'https://itviec.com/it-jobs/ai-engineer-from-2-year-experience-toshiba-software-development-viet-nam-co-ltd-4159')
INSERT [dbo].[JobHistory] ([job_id], [employer_name], [job_employment_type], [job_title], [job_apply_link]) VALUES (194, N'NodeFlair - Tech Salaries, Jobs & more', N'FULLTIME', N'Backend Developer (Python, Django)', N'https://vn.linkedin.com/jobs/view/backend-developer-python-django-at-nodeflair-tech-salaries-jobs-more-3873950809')
INSERT [dbo].[JobHistory] ([job_id], [employer_name], [job_employment_type], [job_title], [job_apply_link]) VALUES (195, N'NodeFlair - Tech Salaries, Jobs & more', N'FULLTIME', N'Senior Python Developer (Hybrid working)', N'https://vn.linkedin.com/jobs/view/senior-python-developer-hybrid-working-at-nodeflair-tech-salaries-jobs-more-3872969703')
SET IDENTITY_INSERT [dbo].[JobHistory] OFF
GO
USE [master]
GO
ALTER DATABASE [vieclam] SET  READ_WRITE 
GO
