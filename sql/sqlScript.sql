USE [Cinema]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 29.5.2015 23:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[adminAd] [nvarchar](50) NOT NULL,
	[adminUserName] [nvarchar](50) NOT NULL,
	[adminParola] [nvarchar](50) NOT NULL,
	[adminMail] [nvarchar](50) NOT NULL,
	[adminID] [int] NOT NULL,
 CONSTRAINT [PK_tblAdmin] PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblBilet]    Script Date: 29.5.2015 23:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBilet](
	[bltID] [int] NOT NULL,
	[bltMusteri] [nvarchar](50) NOT NULL,
	[bltKltNo] [int] NOT NULL,
	[bltTip] [nvarchar](50) NOT NULL,
	[bltUcret] [money] NOT NULL,
	[bltSaat] [time](7) NOT NULL,
	[bltdrum] [nvarchar](50) NOT NULL,
	[bltTel] [nvarchar](50) NOT NULL,
	[bltSalon] [int] NOT NULL,
 CONSTRAINT [PK_tblBilet] PRIMARY KEY CLUSTERED 
(
	[bltID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFilm]    Script Date: 29.5.2015 23:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFilm](
	[flmID] [int] NOT NULL,
	[flmAd] [nvarchar](max) NOT NULL,
	[flmYonetmen] [nvarchar](max) NOT NULL,
	[flmOyuncu] [nvarchar](max) NOT NULL,
	[flmDil] [nvarchar](50) NOT NULL,
	[flmBoyut] [nvarchar](50) NOT NULL,
	[flmTuru] [nvarchar](50) NOT NULL,
	[flmTarih] [date] NOT NULL,
	[flmImg] [image] NULL,
 CONSTRAINT [PK_tblFilm] PRIMARY KEY CLUSTERED 
(
	[flmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKullanici]    Script Date: 29.5.2015 23:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKullanici](
	[klcAd] [nvarchar](50) NOT NULL,
	[klcUserName] [nvarchar](50) NOT NULL,
	[klcParola] [nvarchar](50) NOT NULL,
	[klcMail] [nvarchar](50) NOT NULL,
	[klcTel] [varchar](50) NOT NULL,
	[klcID] [int] NOT NULL,
 CONSTRAINT [PK_tblKullanici] PRIMARY KEY CLUSTERED 
(
	[klcID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSalon]    Script Date: 29.5.2015 23:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSalon](
	[slnNo] [int] NOT NULL,
	[slnSiraSayi] [int] NOT NULL,
	[slnKoltukSayi] [int] NOT NULL,
	[slnToplam] [int] NOT NULL,
 CONSTRAINT [PK_tblSalon] PRIMARY KEY CLUSTERED 
(
	[slnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSeans]    Script Date: 29.5.2015 23:59:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSeans](
	[snsID] [int] NOT NULL,
	[snsSalonNo] [int] NOT NULL,
	[snsFilmAd] [nvarchar](50) NOT NULL,
	[snsTarih] [date] NOT NULL,
	[snsSaat] [time](7) NOT NULL
) ON [PRIMARY]

GO
