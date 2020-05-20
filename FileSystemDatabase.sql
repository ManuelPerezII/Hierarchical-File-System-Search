USE [master]
GO
/****** Object:  Database [Interview_ManuelPerez]    Script Date: 06/05/2020 8:40:17 AM ******/
CREATE DATABASE [Interview_ManuelPerez]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Interview_ManuelPerez', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Interview_ManuelPerez.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Interview_ManuelPerez_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Interview_ManuelPerez_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Interview_ManuelPerez] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Interview_ManuelPerez].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Interview_ManuelPerez] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET ARITHABORT OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Interview_ManuelPerez] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Interview_ManuelPerez] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Interview_ManuelPerez] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Interview_ManuelPerez] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Interview_ManuelPerez] SET  MULTI_USER 
GO
ALTER DATABASE [Interview_ManuelPerez] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Interview_ManuelPerez] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Interview_ManuelPerez] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Interview_ManuelPerez] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Interview_ManuelPerez] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Interview_ManuelPerez] SET QUERY_STORE = OFF
GO
USE [Interview_ManuelPerez]
GO
/****** Object:  Table [dbo].[Directories]    Script Date: 06/05/2020 8:40:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DirectoryName] [varchar](50) NULL,
	[ParentDirectoryID] [int] NULL,
 CONSTRAINT [PK_Directories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Files]    Script Date: 06/05/2020 8:40:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Files](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](50) NOT NULL,
	[FileType] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[Modified] [datetime] NULL,
	[IsReadonly] [bit] NULL,
	[ParentDirectoryID] [int] NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileSystem]    Script Date: 06/05/2020 8:40:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileSystem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DirName] [nvarchar](50) NULL,
 CONSTRAINT [PK_FileSystem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TreePath]    Script Date: 06/05/2020 8:40:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreePath](
	[Ancestor] [int] NOT NULL,
	[Descendant] [int] NOT NULL,
 CONSTRAINT [PK_TreePath] PRIMARY KEY CLUSTERED 
(
	[Ancestor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Directories] ON 
GO
INSERT [dbo].[Directories] ([ID], [DirectoryName], [ParentDirectoryID]) VALUES (1, N'C:', NULL)
GO
INSERT [dbo].[Directories] ([ID], [DirectoryName], [ParentDirectoryID]) VALUES (2, N'D:', NULL)
GO
INSERT [dbo].[Directories] ([ID], [DirectoryName], [ParentDirectoryID]) VALUES (3, N'E:', NULL)
GO
INSERT [dbo].[Directories] ([ID], [DirectoryName], [ParentDirectoryID]) VALUES (4, N'Downloads', 3)
GO
INSERT [dbo].[Directories] ([ID], [DirectoryName], [ParentDirectoryID]) VALUES (5, N'BackUp', 2)
GO
INSERT [dbo].[Directories] ([ID], [DirectoryName], [ParentDirectoryID]) VALUES (6, N'Users', 1)
GO
INSERT [dbo].[Directories] ([ID], [DirectoryName], [ParentDirectoryID]) VALUES (7, N'Manuel', 6)
GO
INSERT [dbo].[Directories] ([ID], [DirectoryName], [ParentDirectoryID]) VALUES (8, N'My Documents', 7)
GO
INSERT [dbo].[Directories] ([ID], [DirectoryName], [ParentDirectoryID]) VALUES (9, N'My Music', 7)
GO
INSERT [dbo].[Directories] ([ID], [DirectoryName], [ParentDirectoryID]) VALUES (10, N'My Videos', 7)
GO
INSERT [dbo].[Directories] ([ID], [DirectoryName], [ParentDirectoryID]) VALUES (11, N'Nat Geo', 10)
GO
SET IDENTITY_INSERT [dbo].[Directories] OFF
GO
SET IDENTITY_INSERT [dbo].[Files] ON 
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (1, N'My Resume', N'doc', N'90 KB', CAST(N'2020-05-05T19:17:37.223' AS DateTime), CAST(N'2020-05-05T19:17:37.223' AS DateTime), 1, 8)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (2, N'MyText', N'txt', N'90 KB', CAST(N'2020-05-05T19:17:37.223' AS DateTime), CAST(N'2020-05-05T19:17:37.223' AS DateTime), 1, 8)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (3, N'Music One', N'mp3', N'90 KB', CAST(N'2020-05-05T19:17:37.223' AS DateTime), CAST(N'2020-05-05T19:17:37.223' AS DateTime), 1, 9)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (4, N'Music Two', N'mp3', N'90 KB', CAST(N'2020-05-05T19:17:37.223' AS DateTime), CAST(N'2020-05-05T19:17:37.223' AS DateTime), 1, 9)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (5, N'Video One', N'mp4', N'90 KB', CAST(N'2020-05-05T19:17:37.223' AS DateTime), CAST(N'2020-05-05T19:17:37.223' AS DateTime), 1, 10)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (6, N'Video Two', N'mp4', N'90 KB', CAST(N'2020-05-05T19:17:37.223' AS DateTime), CAST(N'2020-05-05T19:17:37.223' AS DateTime), 1, 10)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (7, N'Video Three', N'mp4', N'90 KB', CAST(N'2020-05-05T19:17:37.223' AS DateTime), CAST(N'2020-05-05T19:17:37.223' AS DateTime), 1, 11)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (8, N'Dinosaurs', N'mp4', N'190 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 11)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (9, N'T-Rex', N'mp4', N'290 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 11)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (10, N'Solar System', N'mp4', N'390 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 11)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (11, N'Query1', N'sql', N'90 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 8)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (12, N'Query2', N'sql', N'90 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 8)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (13, N'Query3', N'sql', N'90 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 8)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (14, N'Query4', N'sql', N'90 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 8)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (15, N'Query5', N'sql', N'90 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 8)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (16, N'SelectQuery', N'sql', N'90 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 8)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (17, N'Canon in d', N'mp3', N'90 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 9)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (18, N'MusicBase', N'mp3', N'90 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 9)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (19, N'XMusic', N'mp3', N'920 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 9)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (20, N'XMusic 2', N'mp3', N'940 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 9)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (21, N'XMusic 3', N'mp3', N'390 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 9)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (22, N'XMusic 4', N'mp4', N'790 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 10)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (23, N'XMusic 5', N'mp4', N'890 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 10)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (24, N'XMusic 6', N'mp4', N'990 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 10)
GO
INSERT [dbo].[Files] ([ID], [FileName], [FileType], [Size], [DateCreated], [Modified], [IsReadonly], [ParentDirectoryID]) VALUES (25, N'XMusic 7', N'mp4', N'1090 KB', CAST(N'2020-05-06T01:19:49.000' AS DateTime), CAST(N'2020-05-06T01:19:49.000' AS DateTime), 1, 10)
GO
SET IDENTITY_INSERT [dbo].[Files] OFF
GO
ALTER TABLE [dbo].[Directories]  WITH CHECK ADD  CONSTRAINT [FK_Directories_Directories] FOREIGN KEY([ParentDirectoryID])
REFERENCES [dbo].[Directories] ([ID])
GO
ALTER TABLE [dbo].[Directories] CHECK CONSTRAINT [FK_Directories_Directories]
GO
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_Files_Directories] FOREIGN KEY([ParentDirectoryID])
REFERENCES [dbo].[Directories] ([ID])
GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_Files_Directories]
GO
/****** Object:  StoredProcedure [dbo].[usp_FileSearch]    Script Date: 06/05/2020 8:40:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Manuel Perez II
-- Create date: 05-06-2020 01:08 AM
-- Description:	file search
-- =============================================
CREATE PROCEDURE [dbo].[usp_FileSearch]
	-- Add the parameters for the stored procedure here	
	@ContainsFileName nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	WITH cte (id, parentDirectoryID, DirectoryName, level, path) AS (
    SELECT d.id, parentDirectoryID, DirectoryName,
           0 AS level, CAST(DirectoryName AS VARCHAR(1000)) AS path
    FROM Directories d
	--Inner join Drives drv on d.ParentDriveID = drv.ID
	
    --WHERE id = @sourceid 
    UNION ALL 
    SELECT c.id, c.parentDirectoryID, c.DirectoryName,  
           cte.level + 1 AS level, 
           --CAST((cte.path + '/' + c.DirectoryName + '/' + f.FileName + '.' + f.FileType) AS VARCHAR(1000)) AS path
		   CAST((cte.path + '/' + c.DirectoryName + '/' ) AS VARCHAR(1000)) AS path
    FROM Directories c 	
    INNER JOIN cte ON cte.id = c.parentDirectoryID 
	--left join files f on f.ParentDirectoryID = c.ID
) 

SELECT cte.id, cte.parentDirectoryID, DirectoryName,  level,
 f.ID as FileID, f.FileName,F.IsReadonly,f.Size,F.DateCreated,path,
(path + f.FileName + '.' + f.FileType) as fullpath
FROM cte
inner join files f on f.ParentDirectoryID = cte.ID
WHERE f.FileName like '%' + @ContainsFileName +'%'
and level >= (select max(level) from cte inner join files f on f.ParentDirectoryID = cte.ID WHERE f.FileName like '%' + @ContainsFileName +'%')
ORDER BY level desc
END
GO
USE [master]
GO
ALTER DATABASE [Interview_ManuelPerez] SET  READ_WRITE 
GO
