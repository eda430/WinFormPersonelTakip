USE [PersonelDb]
GO
/****** Object:  Table [dbo].[birimler]    Script Date: 27.09.2018 21:11:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[birimler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[birim] [varchar](20) NULL,
 CONSTRAINT [PK_birimler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[personeller]    Script Date: 27.09.2018 21:11:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[personeller](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sicil] [int] NULL,
	[ad] [varchar](20) NULL,
	[soyad] [varchar](20) NULL,
	[cinsiyet] [varchar](10) NULL,
	[dogumTarihi] [date] NULL,
	[birim] [varchar](20) NULL,
	[cepTel] [varchar](20) NULL,
	[adres] [varchar](250) NULL,
 CONSTRAINT [PK_personeller] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[birimler] ON 

INSERT [dbo].[birimler] ([id], [birim]) VALUES (1, N'İdari İşler')
INSERT [dbo].[birimler] ([id], [birim]) VALUES (2, N'Evrak Arşiv')
INSERT [dbo].[birimler] ([id], [birim]) VALUES (3, N'Bilgi İşlem')
INSERT [dbo].[birimler] ([id], [birim]) VALUES (4, N'Muhasebe')
SET IDENTITY_INSERT [dbo].[birimler] OFF
SET IDENTITY_INSERT [dbo].[personeller] ON 

INSERT [dbo].[personeller] ([id], [sicil], [ad], [soyad], [cinsiyet], [dogumTarihi], [birim], [cepTel], [adres]) VALUES (1, 1, N'Atabay', N'SAĞIN', N'Erkek', CAST(N'2000-12-12' AS Date), N'Bilgi İşlem', N'(111) 111-1111', N'İstanbul')
INSERT [dbo].[personeller] ([id], [sicil], [ad], [soyad], [cinsiyet], [dogumTarihi], [birim], [cepTel], [adres]) VALUES (4, 6, N'Mehmet', N'DENEME 2', N'Erkek', CAST(N'2000-05-01' AS Date), N'Muhasebe', N'(111) 111-1111', N'İstanbul')
SET IDENTITY_INSERT [dbo].[personeller] OFF
