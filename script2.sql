USE [master]
GO
/****** Object:  Database [SeyehatDb]    Script Date: 12.02.2022 14:46:42 ******/
CREATE DATABASE [SeyehatDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SeyehatDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SeyehatDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SeyehatDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SeyehatDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SeyehatDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SeyehatDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SeyehatDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SeyehatDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SeyehatDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SeyehatDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SeyehatDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [SeyehatDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SeyehatDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SeyehatDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SeyehatDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SeyehatDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SeyehatDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SeyehatDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SeyehatDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SeyehatDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SeyehatDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SeyehatDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SeyehatDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SeyehatDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SeyehatDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SeyehatDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SeyehatDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SeyehatDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SeyehatDb] SET RECOVERY FULL 
GO
ALTER DATABASE [SeyehatDb] SET  MULTI_USER 
GO
ALTER DATABASE [SeyehatDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SeyehatDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SeyehatDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SeyehatDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SeyehatDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SeyehatDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SeyehatDb', N'ON'
GO
ALTER DATABASE [SeyehatDb] SET QUERY_STORE = OFF
GO
USE [SeyehatDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12.02.2022 14:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 12.02.2022 14:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici] [nvarchar](max) NULL,
	[Sifre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Admins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adres]    Script Date: 12.02.2022 14:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Yazi] [nvarchar](max) NULL,
	[Adress] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Telefon] [nvarchar](max) NULL,
	[Konum] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Adres] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 12.02.2022 14:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Tarih] [datetime] NULL,
	[Aciklama] [nvarchar](max) NULL,
	[BlogResim] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Blogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hakkımızda]    Script Date: 12.02.2022 14:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkımızda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fotourl] [nvarchar](max) NULL,
	[yazi] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Hakkımızda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[İletisim]    Script Date: 12.02.2022 14:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[İletisim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[İsim] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Konu] [nvarchar](max) NULL,
	[Mesaj] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.İletisim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorumlars]    Script Date: 12.02.2022 14:46:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorumlars](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Yorum] [nvarchar](max) NULL,
	[Blogid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Yorumlars] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202202091154439_AutomaticMigration', N'Seyehat.Migrations.Configuration', 0x1F8B0800000000000400ED5BCD72DB3610BE77A6EFC0E1A9ED38A2EC5C5A8F948C23DBAD26F1CF5876A63D796012925183A04A801E299DBE5372EEA117BF4F5FA10BFE8220299194683B1D4F2E1680FDB0D8FD163FCBCDBF7FFF3378BB70A9718F7D4E3C3634777B7DD3C0CCF61CC266433310D3573F9A6FDF7CFBCDE0C87117C6C764DC6B390E24191F9AB742CCF72D8BDBB7D845BCE712DBF7B837153DDB732DE478D65EBFFF93B5BB6B61803001CB3006170113C4C5E10FF839F2988DE72240F4C47330E5713BF44C4254E314B998CF918D87E6042FF12D12BD68648F1346A614F9A6714009E2B29F4E4D0331E6092440D9FD2B8E27C2F7D86C328706442F97730CE3A688721C2F623F1B5E773DFD3DB91E2B134CA0EC800BCF6D08B8FB3A3690A58BB732B3991A104C7804A6164BB9EAD08C43F3C07109E0EA33ED8FA82F47559AB8170AEE1871F74E4A07608DFCB7638C022A021F0F190E848FE88E711EDC5062BFC7CB4BEF0EB3210B28557503EDA02FD7004DE7BE37C7BE585EE069ACF1F8D034ACBC9CA50BA6628A4CB49C3113AFF74CE31426473714A7AE57963E119E8F7FC60CFB4860E71C09817DF0DCD8C1A1F10AB36B73BD97D08CD8249912080701641A2768F101B399B81D9AF0A7691C9305769296588D2B1004430F4DE10778DD4C1332F5F1966719581945D610C7C7BC1D7140F08538C5B9DE214EC95DE7ACF90D7DEA9E9AA19379E7D39C20423B9FE412533C959B6FC7F3BCF758E03E5538BFA3DEAC4D344BB997607EB260BE443EB94D6639044D2FE12655B2B035D16A933B8A5CD4B9BA922D1798936DD31C663A45F76416BA4EDFEF3C3F7081AAB01B5D601A8EE0B7641E5D0E7B49EF751400C7BEE75E7854110B3BAEC1CE332C406BAFAC77E205BEDD36F212A836D197C8BE44E08A7BD881D3FD79F7280751E8ED478C9C2824DA074D1216E541938454ABA0F905DDDD3D7C711FBE7C72509BC051E55F82A738D7B127C079DD537AB9FDCB686D0E3D7CA65890F0306A4EA054F8853DC5B91E3E7772C43FC59E2B2FE5DDAF0473F4FB2385C101E79E4D42376B17906837CF2B7AC41C63E5D61E0789722880E6407B3207A2C3F443F387C2EAAB40D34B56061A1D3079C07EAFB7ABAF55595531E6471E13880099E305CBDF78214AC2FE8AE338F2796C535D738937C142CD9EC1C5323375AC779C562B2C5C178F5EC925E26172658DB8344E997464B435C2CAB5B80090B9720D887A8C9601E58FE93560E9965A86A46CD61A8CE2FAE2EAE21B8A32A6F40AA36FB9EB689FAA9EB3A355172621BA0213FB52DFD5F38B2B09EF94DB599ADC8AF2E4493EDDAA48A80F4ED07C0E3B8D92608F5B8C49945D1FBD9A34CF38BB118665F392C473AA6D3A131C346886B55E19A20E3E263E17F0A6453748EE7523C72D1916457205B1925972C15A745242B564B8FC3BCEB0AE4A7EEB4899018F614D2E1C95E1F2B0E2E50AB9F0DB0602E092337BE4D1C06555E7FE2A692511AD8228CDF5B1E254B38A1337153106966606DDE256C1E41AEB7507D6746FB8996EC7BD72FB6DE3DE52B96EDC9B64985484A4AD3E4A940D5631A296FA08C921A662246DF551A2CB9C8A11B5D44748D3B42A48DAD8206CA2346C2E64A2A66743F5E8B0D806D3CB4EBF1A442F177BCE3C8F13A5396E444D0D989EA649735C4F5B1BAC29CB83E69695353F1BAE65F79B6DF02DBD5936E75CB568C7C767983F2C3D41C39EC7DCE3E20C606EBB8E9A9E0D5FF24F826D7026F78868CE9BD5E2DD70274D9FA91069637D9C65E1745E569CCE4FE46DE5CDB60D5767AFBCE67E5E21DB8D93E32C970A10373DE6961025A8F4DB4A231DA2EC534E89A8E9F169967FEF969F44F19BBEFE61130BD43D50E4B3BDE21B62EEF95E344E2D928510654C93B649276EAA539C9968A9536375E0E1ED90308738E632919C66246BAC54CF6A148950486EE843521AA6490E2D993188130BEB4B080B9986688869C0D2EF8923B30C932517D8EDC901BDC91F744409103F1B7002778129E622CAE99B7BFDDD3DAD00F1F914035A9C3BB4243153A8087CF4AF12449A74ED778786850D855A3C768F7CFB16F9DFB968F1BD0AD7B8DEAE0152C39ABAFF87E9F305301BD95DAD58DB08285F95B61194FAF1692320ADBA6C23AC5C055917042DF942F4C2CF7C119603EA896D14616DA452A1D0AA0B36945FA0BE5A4694150C3D8F3D2257F8B3312FAE353B16BE828E99831743F3CF5066DF18FF7A1D8BED18673E5C78F68DBEF1D7963854FD3AFF6A79A4D5CE6CE4AF65BBA3AF450DCCFFC3F6B9CA93E711BC6A05C9661AA955225B2043DB4A90ECF9DDA848C328FB1EDEB2820438887D491144E18DC8850FAFC4422AE2DC27CC26734455BD8B0FE43ABC96464CE1F49E433CC74C12565F5B9DB9566403525C2DC4D62DBE71358CFEA9BD22F3977B1F5696BC44CF67B807DD78E0DC889349994C9D7298EA6A9872E4BA853295753265B0E5D5185525342B2B68CAE02B6B465616D8ACADAF299BAA5D05CEEA029CB2799EAA3E47756DF669B24E294E69154F371538C5641444B1F2BF5E610BE1649641C8F41AC3762E7ED3316336F5927D44D32819523838048267093AF00599225B40B70DEFE0B0CAF023A2010C39726FB033666781980702968CDD1B9A2BF394DBD1AAF9C332A3BCCE83B3795837BE8D25809A44BEACCED8BB805027D5FBB87829A88290FB5C7CD390BE14F2C6315BA648A71EAB09149B2FDD9E2FB13BA700C6CFD804DDE336BA5D71FC01CF90BD4C728AD520EB1D9137FBE090A0998F5C1E6364F2F01338ECB88B37FF011A496529FC3D0000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202202091513030_AutomaticMigration', N'Seyehat.Migrations.Configuration', 0x1F8B0800000000000400ED5BCB72DB3614DD77A6FFC0E1AAED38A2ED6C5A8F948C23DBAD27B19DB1EC4CBBCAC02424A3064195003D523AFDA764DD4537FE9FFE422F083EC097F89028BB194F3611887B005C9C7BF13AFEF7EF7F86AF172E35EEB1CF89C746E6DE60D73430B33D87B0D9C80CC4F4C58FE6EB57DF7E333C76DC85F121AEF752D6034BC647E6AD10F303CBE2F62D76111FB8C4F63DEE4DC5C0F65C0B399EB5BFBBFB93B5B76761803001CB3086970113C4C5E10FF839F6988DE72240F4CC7330E551397C9984A8C63972319F231B8FCC095EE25B2406AAE6801346A614F9A6714809E2F23B9D9A0662CC134840670FAE399E08DF63B3C91C0A10BD5ACE31D49B22CA71348883B47AD3F1ECEECBF158A9610C65075C786E4BC0BD979183ACBC7927379B8903C185C7E06AB194A30EDD38320F1D97006EBEA58331F565AD4A170F42C31D23FABC93D0015823FFED18E3808AC0C7238603E123BA63BC0F6E28B1DFE2E5957787D9880594EA7D83DEC1B74C0114BDF7BD39F6C5F2124FA31E9F1E998695B5B3F286899966A38673CAC4CB7DD33887C6D10DC5C9D46B439F08CFC73F63867D24B0F31E09817D98B9530787CE2BB49E6BEBAD8466C426719340380820D338438B7798CDC4EDC884FF9AC6095960272E89BA710D86E0E89129FC00D7B53421531F6FB895A19552A486383EE6DD880386CFC429B6F506714AEE7A67CD6FE853FFD40C2799F7DECC1922B4F746AE30C553997C7B6EE7ADC702F7B1C2F90DF5665DA259DA3D07F3A305F315F2C96DDCCA11F4F40A76522503AB89569BDC51E4A2DEBB2BD9728939D934CDA1A573744F66E1D4E5F39DE7072E5015B2D125A6610D7E4BE66A733888BF7E540170E27BEEA54735B3F0C347F0F30C0BE8B557F675E205BEDD35F262A82ED117DB3E47E08A7DD8A1D3FF7AB79585289CEDADC42871EAE6A969F4A9B0EA1E78716895075E1C969D02EF177477F7F0C57DF8F2C9415D824FB77F0EC0625B279E80C9EB3F2C969BDFD036E6D0C3678A050917B4F6044A8C9FD9536CEBE1732FDB84C7C8DB7263DFFF483047BF6F290C0E39F76C124E736E13A3B279B6A3C7CC3156A6F62848B445017A0EB42773203A343F327F288CBE0A34D9A8A5A06A81C902EE99F908B9604770CE13D838B4D54DDD18711B3945BF834F9C6C090415F625AB111DC31A07614A9828462061369923BAAADB39A386812B3B95C0E7BF1CE1396632E656CD419376E37D41B1EDA4899CA3EAFC32B4342215D32CD808B0C07ED401F91B2F4449A6BDE6384AB63CA2719E2C126F82857EE909E78194DD1155A2DBD002D7F2E6EA72A3C43CBC13AB31978E2CB3563CAD31D64E330580347A6A40F49D4B19507667540396AC626548DAFA9883D1A6BE38BA6853A8D529DD35E69958976992AE67FC5820745D6ED160A2B9CCA788ECE04A326AC2EDF475C352CF1BF1338855F10E323C43F3392477ED5D242A3126EA5164FC62D2FEA1C0551896CD4BDE0B92DE262DC1DA8E6638F75586A8834F88CFC51112E806C9E565ECB825D5542457102B6E2513ACC5498AA9165797FF8F2EC657BD599424BB08E104C6E4CA4C196E5DB459AEB00B9FA41000976C93C61E0D5C569DB1ABADB5F7031D442B6E8E15BD10E8385151116368E5DC50C8F305971716C6EC04369CDE30996E667A65FAED32BDA576FD4C6F7C31A823C465CD51D425BE8EA14A9A23C48B988E1197354751FB671D43953447486ED77590A4B045D8A8DBF34CC8A8A2274375B5586C82E965AB5F03A2979B3D659E47F7DB196EA8A2164C4F6EB7335C4F4A5B8C29BDBECE0C2B2D7E325C4BF7379BE05BB2B36CCFB96AD39E97CFF0DAB774050DBF6C33C74517B79974AD8ADA714F1EBFF2C42B3B923D1AEBB2078B4D302F731469CFBED5E6FD3030B9F7D42192C2E638CBC21ABFAC58E31F69B6B593DF26A63A3D2BB69FE715B6FD4C72743DA9034445DB4C2CEA6631BFE769D507756D98E9842ADA32CD0A27E37C95A4F5E4849C3B090FA35369BD6CB0704C55554C039C734F1C79449D2CB9C0EE4056184CFEA0634A60BC6985335848A6980B75076FEEEFEEEDE744874F47006871EED092537D4105B8F55704225D5AFB4ED052CC50D0DFB17BE4DBB7C8FFCE458BEF75B8D61ABB16482D75745F87EBB3A297B5FCAEABD4D602CA2AD1D682D21F8BD602CA29CAD6C2CAA8C6FA2068C98BCE333FB3C22B07BA273621BC5AAB4B0571551F6C283FCEFD6F195126127A1A392223F6599B17A9A0277463E105ED9439783132FF0C4D0E8CD35F3F2AAB1DE3C287EDCE81B16BFC55E3DC6EBA9BAF834639A9CB5AD3B5ECB6F27590AC7C1DBECF08459E46ECEA828FF57AA48B3A364086AEC20DF51CBB4D4D45F10DB6A350A49338A3E27EBD3731C6FF4580917FDDADB826CA9C2A2B5516EAD00DBBA71B0FE65651395666345160540B30CA919B6A332AA51965B0E502802AD5C64AD146197CA54C61A5A6A356D251D65437D1C76ACD47593B8F2509D1A7367D0D6BA2FE28158EF423FA285E6141146B7F1F0B198493590A21FF5A96613B13BF499D5336F5E23492EB515CA5B0DE0804871974E80B3245B680CF369C9E432DE1074403A872ECDE60E7945D04621E081832766F6846CC29D3D1AAF643654BB6CFC38B79A80EDFC410A09B449EC72ED89B805027E9F749C98EB50242E6B9688322E752C88DCA6C99209D7BAC2150E4BE243D5F61774E018C5FB009BAC75DFA76CDF13B3C43F632BE89AC06A99F88ACDB874704CD7CE4F20823B5879FC061C75DBCFA0F64D1AD4F263E0000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([ID], [Kullanici], [Sifre]) VALUES (1, N'duygu', N'12345')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogResim]) VALUES (1, N'Patara Plajı, Kaş Antalya', CAST(N'2022-03-14T00:00:00.000' AS DateTime), N'12 kilometre uzunluğundaki Patara Plajı’na Patara Antik Kenti’nin içinden bir yolculuk yapılarak ulaşılıyor. Hem böylece bir taşla iki kuş vurup antik kenti de gezmiş oluyorsun. Sonrasında plajın incecik kumlarına uzanarak güneşin tadını çıkarıyorsun. Patara Plajı’nın en önemli özelliği caretta carettaların yumurtalarını bıraktıkları plaj olması. Bu nedenle de koruma altına alınmış ve saat 20.00’a kadar plaj halkın kullanımına açık. Sonrasında plajın sahibi caretta carettalar plajın keyfini çıkarıyorlar.', N'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/patara-plaji-33872.jpeg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogResim]) VALUES (2, N'Eğirdir Gölü, Eğirdir Isparta', CAST(N'2022-03-12T00:00:00.000' AS DateTime), N'Türkiye’nin en büyük ikinci tatlı su gölü olan Eğirdir Gölü, ortalama 12 metre derinliğe sahip. Günün farklı saatlerinde değişik manzaralara sahne olan gölün çevresinde elma ve şeftali bahçeleri ve plajlar bulunuyor. Gölün kuzeybatı kısmında yer alan Bedre Plajı ve İstasyon mahallesinde konumlanan Altınkum Plajı, göl çevresinde yüzebileceğin en güzel iki plaj. Ayrıca gölde iki küçük ada da var. Can Ada ve Yeşilada son yıllarda göl suları azaldığı için kıyıya ve birbirlerine bağlı durumdalar.', N'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/egirdir-golu-33997.jpeg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogResim]) VALUES (3, N'Antakya Arkeoloji Müzesi, Antakya Hatay', CAST(N'2021-12-12T00:00:00.000' AS DateTime), N'Çok zengin bir kültürel geçmişe sahip olan Hatay’ın Antakya ilçesinde konumlanan Antakya Arkeoloji Müzesi, 1930’lu yılların başında başlayıp 1940’lı yılların sonuna kadar süren araştırmalar ve kazılar sonucu ortaya çıkan eserlere ev sahipliği yapıyor. Müzenin esas zenginliğini Harbiye, Narlıca, Güzelburç ve Samandağ çevresinde yapılan kazılarda ortaya çıkan mozaikler oluşturuyor. Hatta bu müze, mozaik koleksiyonuyla dünyanın en büyük mozaik koleksiyonları arasında yer alıyor.', N'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/hatay-arkeoloji-muzesi-37741.jpeg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogResim]) VALUES (8, N'Side Antik Kenti, Manavgat Antalya', CAST(N'2021-04-12T00:00:00.000' AS DateTime), N'Manavgat’a 7, Antalya şehir merkezine 80 kilometre uzaklıkta konumlanan Side Antik Kenti, Pamfilya’nın en önemli liman şehri olduğu için birçok imparatorluğa ev sahipliği yapmış. Lidyalılar, Persler, Romalılar ve Bizanslıların izlerinin görülebileceği antik kent, tarihte bilinen ilk metropol olmasıyla öne çıkıyor. Side Antik Kenti’nin sınırları içinde 17 bin kişilik antik tiyatro, Apollon Tapınağı, şehre açılan şehir kapısı, hamamlar ve Vespasianus Çeşmesi bulunuyor. Şehir kapısının hemen yanında konumlanan Side Müzesi de buraya kadar gelmişken gezmen gereken yerlerden. Helenistik Dönem, Roma Dönemi ve Bizans Dönemi’ne ait eserleri müzede inceleyebilirsin.', N'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/side-antik-tiyatro-34918.jpeg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogResim]) VALUES (9, N'Ağrı Dağı, Ağrı', CAST(N'2024-05-12T00:00:00.000' AS DateTime), N'Iğdır ve Ağrı illerinin ortasında konumlanan Ağrı Dağı, ülkemizin en büyük dağı. Deniz seviyesinden 5137 metre yükseklikte olan dağ, Türkiye’nin en yüksek noktası olduğu kadar Avrupa’nın da en yüksek doruğu. Küçük Ağrı ve Büyük Ağrı olmak üzere iki dağdan oluşan dağda karlar hiç erimiyor. Dağın zirvesi ise hep buzullarla kaplı. Bu nedenle de özellikle kışın dağa tırmanmak çok zorlayıcı oluyor. Eğer tırmanışa ilgin varsa Temmuz, Ağustos ve Eylül ayları Ağrı Dağı’na tırmanmak için en doğru zaman.', N'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/agri-dagi-35613.jpeg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogResim]) VALUES (12, N'Çıldır Gölü, Kars', CAST(N'2020-02-11T00:00:00.000' AS DateTime), N'Ardahan ve Kars illerinin sınırları içerisinde bulunan Çıldır Gölü, 123 kilometrekare bir alana yayılmış durumda. Bu büyüklüğüyle de Doğu Anadolu Bölgesi’nin en büyük tatlı su gölü oluyor. Deniz seviyesinden 1956 metre yüksekte konumlandığı için göl ve çevresinde kışın çok soğuk hava şartları görülüyor. Kasım ayının sonlarında donan Çıldır Gölü, nisan ayının başına kadar don halde kalıyor. Bölge halkı gölden balık avlayarak geçindikleri için kışın buzları delip balık avlıyorlar. Eğer balık tutmayı seven biriysen gölü ziyarete gittiğinde delinmiş buzlarda balık avlama deneyimini yaşayabilirsin. Balık avı dışında donmuş gölde yürümek ve kızakla kayak yapmak da benzeri olmayan bir seyahat anısına dönüşüyor.', N'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/cildirgolu-34365.jpeg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogResim]) VALUES (15, N'Efes Antik Kenti, Selçuk İzmir', CAST(N'2020-09-11T00:00:00.000' AS DateTime), N'Türkiye’de gezilecek sadece 3 yer seçecek olsak Efes Antik Kenti, bunlardan biri olurdu. Selçuk, Anadolu topraklarının en verimli bölgelerinden biri olduğu için Efes Antik Kenti, tarih boyunca birçok medeniyetin yaşadığı bir yer olmuş. Dünyanın 7 harikasından biri olan Artemis Tapınağı’nı sınırlarında bulunduran antik kent, sadece yerli değil yabancı turistlerin de sıklıkla ziyaret ettiği bir yer. Ayrıca antik kente yaklaşık 9 kilometre uzaklıkta bulunan Meryem Ana Evi de Hristiyanların hac görevlerini yerine getirdikleri bir yer olduğundan dolayı çok fazla ziyaretçi alıyor. İzmir uçak bileti alıp Efes’i gezdikten sonra Meryem Ana Evi’ne de uğramanı öneririm.', N'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/efes-antik-kenti-34384.jpeg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogResim]) VALUES (16, N'Pamukkale Travertenleri, Pamukkale Denizli', CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Efes Antik Kenti ile Türkiye’de gezilecek yerler listesinin ilk beşine girebilecek Pamukkale Travertenleri, termal sularla oluşan bembeyaz bir şölen. UNESCO Dünya Mirası Listesi’nde yer alan travertenler, karbonat mineralleri içeren kaynak sularından oluşuyor. Sağlığa da birçok faydası olduğu için ülkemizin sağlık turizminde de ön plana çıkıyor. Kleopatra Havuzu ve Hierapolis Antik Kenti de Pamukkale Travertenleri’ni görmeye gittiğinde mutlaka görmen gereken yerler arasında. Bembeyaz manzarayı görmek için Pamukkale otobüs bileti alarak planlara başlayabilirsin.', N'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/pamukkale-34002.jpeg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogResim]) VALUES (18, N'Bodrum Kalesi, Bodrum Muğla', CAST(N'2020-02-11T00:00:00.000' AS DateTime), N'Bodrum’un simgesi olan Bodrum Kalesi, 15. yüzyılda Saint John Şövalyeleri tarafından bir ada üzerine inşa edilmiş. Kalenin üzerinde bulunduğu ada, sonrasında kıyıya bağlanarak yarımada olmuş. Kalenin yapımında dünyanın 7 harikasından biri olan Halikarnas Mozolesi’nin taşları kullanılmış. 5 kulesi ve 7 kapısı olan kale günümüzde Su Altı Arkeoloji Müzesi olarak ziyaretçilerini ağırlıyor.', N'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/bodrum-kalesi-34390.jpeg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogResim]) VALUES (19, N'Cunda Adası, Ayvalık Balıkesir', CAST(N'2021-09-11T00:00:00.000' AS DateTime), N'Arnavut kaldırımlı sokakları, sakızlı dondurması ve leziz balıklarıyla huzur dolu bir köşe olan Cunda Adası, gittiğinde dönmek istemeyeceğin bir yer. İster bahar aylarında ister yaz aylarında git her mevsim bir başka güzel. Deniz manzaralı Cunda otelleri uyandığında iyi ki gelmişim diyeceksin. Taksiyarhis Kilisesi, Ayışığı Manastırı ve tepeden Cunda manzarasına hakim olan Aşıklar Tepesi, Cunda’da gezebileceğin yerler arasında. Ayrıca Ayvalık’a da giderek Şeytan Sofrası’nı gezip Ayvalık tostu yiyebilirsin.', N'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/cunda-34003.jpeg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogResim]) VALUES (21, N'Kaz Dağları, Çanakkale ve Balıkesir', CAST(N'2022-11-11T00:00:00.000' AS DateTime), N'Çanakkale ve Balıkesir sınırlarında yer alan Kaz Dağları’nın tertemiz havasını hayatında bir kez olsa bile içine çekmelisin. Oksijen deposu Kaz Dağları Milli Parkı’nda çadır ya da karavanda konaklayabilir ve doğa yürüyüşlerine çıkabilirsin ancak milli park koruma altında olduğu için görevliler tarafından izin verilen yerlerde kamp ve yürüyüş yapmaya dikkat etmelisin. Sarıkız Türbesi, Adatepe Köyü, Yeşilyurt Köyü, Zeus Altarı, Adatepe Zeytinyağı Müzesi ve Hasanboğuldu ve Sütuven Şelalesi’ni de gezmeni öneririm.', N'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/kaz-daglari-36343.jpeg')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Hakkımızda] ON 

INSERT [dbo].[Hakkımızda] ([ID], [Fotourl], [yazi]) VALUES (1, N'https://www.bestepebloggers.com/wp-content/uploads/2021/10/travel-world-landmarks-background-blue-sky-46083021.jpg', N'Mehmet adlı bir Türk askeri Çanakkale’de İngilizlerle savaşırken yaralanır. Haydarpaşa Hastanesinde tedavi edilir. Ayağı bir parça sakat kaldığı için hafif hizmete ayrılır ve hastanede görevlendirilir. Mehmet’e bir gün Haydarpaşa Tren İstasyonu’ndan hastaneye götürülmek üzere esir İngiliz askeri teslim edilir. Mehmet ve hasta İngiliz asker, yağmurlu bir havada kör topal yola devam ederler.

Bu paragrafta, olay paragrafına özgü nitelikler ağır basmaktadır. Bir hikâyenin serim (giriş) bölümü olan paragrafta olay, kişiler ve olayın yaşandığı çevre birlikte verilmiştir.

Mehmet dehşetli bir İngiliz düşmanıdır aslında. Ötekilere pek o kadar kızmaz, her biri için ayrı ayrı mazeretler bulmaya çalışır, sulh olursa onları affedebileceğini hissederdi. Fakat İngilizlere çok kızgındı. Zor şartlarda yol alırken, İngiliz büsbütün “stop” deyip durmasın mı? Mehmet bu sefer büsbütün telaşlandı:

– Vay anam, ben ona adam ol derken o büsbütün cüdam oldu… Hey beri bak… Hele şöyle kımılda bakayım… Yürü de evvelki gibi yürü razıyım… Hastaneye çok kalmadı… Orada seni rahat yatağa yatırırlar, sıcak yemek verirler. Haftaya kalmaz domuz gibi olursun, diye söyleniyordu kendi kendine.

– Yahu para sende, rahat sende, memleket sende, dükkân, tezgâh sende… Yedi deniz aşırı yerden, kale gibi gemilerine binip ne halt etmeye gelirsin buralara, benimle muharebeye tutuşursun… beni öldürüp de yamalı donumu mu alacaksın? Ne adını bilirim… ne memleketini bilirim, sen Çanakkale’ye geldin diye davarımı satar, ocağımı söndürür, çoluk çocuğumun her birini bir yana dağıtır gelirim… Muhareben de kahpece… yanına sokmadan, suratını göstermeden, uzaktan şarapnelini yerim, ayağım sakat kalır… Elime düştün… seni bir tepmede yere gömsem yeridir… ille zebunluğunu görüyorum… besbelli bir taksiratım var ki Cenab-ı Mevla seni bu dünya âlemde bana musallat etti… Gel başımın belası… gel seni sırtımda taşıyayım da tamam olsun…

Serim bölümünden sonra gelen bu gelişme paragraflarında yazar, Mehmet’in İngilizlere karşı duyduğu öfkeyle birlikte onun ağzından, bu ulusun o dönemde haksız yere Çanakkale’ye gelişini anlatmıştır. İnsanımızın düşmanlarına karşı bile merhametle yaklaştığını ortaya koymuştur. Yazarın bütün bunları anlatmadaki amacı ise Türk askerinin derin bir inanca, sağlam bir ahlaka ve yüksek bir insanlık sevgisine sahip olduğunu göstermektir.

Mehmet, çok zor şartlar altında, düşe kalka, yağmurdan sırılsıklam hâlde ezeli düşmanı, yaralı İngiliz askerini hastaneye ulaştırır. Böylece üzerindeki dağ gibi yükten kurtulur.

Çözüm (sonuç) paragrafında ise yazar. Mehmet’in öfkesini bastırıp karakteri yaralı İngiliz askerini hastaneye bırakıp bu yükten kurtulmasını anlatmıştır.')
SET IDENTITY_INSERT [dbo].[Hakkımızda] OFF
GO
SET IDENTITY_INSERT [dbo].[İletisim] ON 

INSERT [dbo].[İletisim] ([ID], [İsim], [Mail], [Konu], [Mesaj]) VALUES (1, N'AAAAA', N'AAA@gmail.com', N'aaaaaaaaa', N'aaaaaaaaaaaaaaaa')
INSERT [dbo].[İletisim] ([ID], [İsim], [Mail], [Konu], [Mesaj]) VALUES (2, N'bbbbbb', N'bb@gmail.com', N'bbbbbbbbb', N'bbbbbbbbb')
INSERT [dbo].[İletisim] ([ID], [İsim], [Mail], [Konu], [Mesaj]) VALUES (44, N'ali veli', N'gdelice2244@gmail.com', N'daha iyi olsun', N'daha iyi oosun')
INSERT [dbo].[İletisim] ([ID], [İsim], [Mail], [Konu], [Mesaj]) VALUES (45, N'ali veli', N'gdelice2244@gmail.com', N'aaaaa', N'aaaaaaaaaaaaaaa')
INSERT [dbo].[İletisim] ([ID], [İsim], [Mail], [Konu], [Mesaj]) VALUES (46, N'wwwwwwwwwwww', N'gdelice2244@gmail.com', N'wwwwwwwwww', N'wwwwwwwwww')
SET IDENTITY_INSERT [dbo].[İletisim] OFF
GO
SET IDENTITY_INSERT [dbo].[Yorumlars] ON 

INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (1, N'Duygu Delice', N'duygu@gmail.com', N'Çok güzel bir mekan 2 sene önce gitmiştim .', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (2, N'Hülya Delice', N'hülya@gmail.com', N'Harika bir mekan ailecek gidip gezilecek bir yer ufkunuz açılıyor ve bilgilerinize bilgi katıyorsunuz', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (3, N'Oğuzhan Sezer', N'oguz@gmail.com', N'Gerçekten çok uzun bir yürüyüş yolu var gezerken biraz yorulabilirsiniz fakat yolun sonunda meşhur lokataya girince iyiki geldim diyeceksiniz', 2)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (4, N'Duygu Delice', N'duygu@gmail.com', N'Pek beğenmedim abartıldığı kadar iyi değil türkiyede daha güzel yerler olduğunu düşünüyorum.', 2)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (5, N'Hülya Delie', N'hulya@gmail.com', N'Bya iyiydi çok doğal bir ortam şehir karmaşasından uzaklamşmak istiyorsanız tam da gelmeniz gereken bir yer', 3)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (7, N'oğzuhan', N'gdelice2244@gmail.com', N'çok güzellllllllllllllllllllllllllllllll', 1)
SET IDENTITY_INSERT [dbo].[Yorumlars] OFF
GO
/****** Object:  Index [IX_Blogid]    Script Date: 12.02.2022 14:46:43 ******/
CREATE NONCLUSTERED INDEX [IX_Blogid] ON [dbo].[Yorumlars]
(
	[Blogid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Yorumlars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Yorumlars_dbo.Blogs_Blogid] FOREIGN KEY([Blogid])
REFERENCES [dbo].[Blogs] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Yorumlars] CHECK CONSTRAINT [FK_dbo.Yorumlars_dbo.Blogs_Blogid]
GO
USE [master]
GO
ALTER DATABASE [SeyehatDb] SET  READ_WRITE 
GO
