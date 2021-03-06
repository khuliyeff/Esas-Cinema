/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [Bekar]
GO
/****** Object:  Table [dbo].[Exams]    Script Date: 6/12/2018 6:00:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Exams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 6/12/2018 6:00:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[ExamId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[ExamResult] [money] NOT NULL,
 CONSTRAINT [PK_Results] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 6/12/2018 6:00:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Exams] ON 

INSERT [dbo].[Exams] ([Id], [Name]) VALUES (1, N'Riyaziyyat')
INSERT [dbo].[Exams] ([Id], [Name]) VALUES (2, N'Fizika')
INSERT [dbo].[Exams] ([Id], [Name]) VALUES (3, N'Kimya')
INSERT [dbo].[Exams] ([Id], [Name]) VALUES (4, N'Axiretde ki imtahan')
SET IDENTITY_INSERT [dbo].[Exams] OFF
SET IDENTITY_INSERT [dbo].[Results] ON 

INSERT [dbo].[Results] ([Id], [StudentId], [ExamId], [Date], [ExamResult]) VALUES (1, 1, 1, CAST(N'2018-06-15' AS Date), 15.0000)
INSERT [dbo].[Results] ([Id], [StudentId], [ExamId], [Date], [ExamResult]) VALUES (2, 2, 4, CAST(N'2018-06-17' AS Date), 0.0000)
INSERT [dbo].[Results] ([Id], [StudentId], [ExamId], [Date], [ExamResult]) VALUES (5, 3, 3, CAST(N'2018-06-14' AS Date), 12.0000)
INSERT [dbo].[Results] ([Id], [StudentId], [ExamId], [Date], [ExamResult]) VALUES (6, 1, 2, CAST(N'2018-06-18' AS Date), 222.0000)
SET IDENTITY_INSERT [dbo].[Results] OFF
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Fullname], [Phone]) VALUES (1, N'Mubariz Isayev', N'0556665522')
INSERT [dbo].[Students] ([Id], [Fullname], [Phone]) VALUES (2, N'Avara Ruslan', N'05512345678')
INSERT [dbo].[Students] ([Id], [Fullname], [Phone]) VALUES (3, N'Esebi Senan', N'0554446464')
SET IDENTITY_INSERT [dbo].[Students] OFF
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Exams] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exams] ([Id])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Exams]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Students]
GO
