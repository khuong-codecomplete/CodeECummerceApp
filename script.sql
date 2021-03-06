USE [DemoDatabase]
GO
/****** Object:  Table [dbo].[AddressBook]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressBook](
	[id] [uniqueidentifier] NOT NULL,
	[customerid] [uniqueidentifier] NULL,
	[company] [nvarchar](50) NOT NULL,
	[firstname] [nvarchar](50) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[streetaddress] [nvarchar](65) NOT NULL,
	[postalcode] [nvarchar](10) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[state] [nvarchar](50) NOT NULL,
	[countryid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AddressBook] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [uniqueidentifier] NOT NULL,
	[customerid] [uniqueidentifier] NULL,
	[productid] [uniqueidentifier] NULL,
	[qty] [int] NOT NULL,
	[finalprice] [decimal](10, 2) NOT NULL,
	[addedon] [datetime] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CartAttributes]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartAttributes](
	[id] [uniqueidentifier] NOT NULL,
	[customerid] [uniqueidentifier] NULL,
	[productid] [uniqueidentifier] NULL,
	[productoptionid] [uniqueidentifier] NULL,
	[productoptionvalueid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_CartAttributes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[parentcatid] [uniqueidentifier] NULL,
	[order] [int] NOT NULL,
	[addedon] [datetime] NOT NULL,
	[modifiedon] [datetime] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Configuration]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration](
	[id] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](65) NOT NULL,
	[key] [nvarchar](65) NOT NULL,
	[value] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[configurationgroupid] [uniqueidentifier] NULL,
	[order] [int] NOT NULL,
	[modifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Configuration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConfigurationGroup]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigurationGroup](
	[id] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](65) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[order] [int] NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_ConfigurationGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](65) NOT NULL,
	[ISOCode] [nvarchar](5) NOT NULL,
	[Currencyid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currencies](
	[id] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[code] [nchar](5) NOT NULL,
	[symboleleft] [nvarchar](15) NULL,
	[symbolright] [nvarchar](15) NULL,
 CONSTRAINT [PK_Currencies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerInfo]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerInfo](
	[id] [uniqueidentifier] NOT NULL,
	[customerid] [uniqueidentifier] NULL,
	[lastlogon] [datetime] NOT NULL,
	[logoncount] [int] NOT NULL,
	[accountcreatedon] [datetime] NOT NULL,
	[lastmodifiedon] [datetime] NOT NULL,
 CONSTRAINT [PK_CustomerInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[id] [uniqueidentifier] NOT NULL,
	[gender] [char](1) NOT NULL,
	[firstname] [nvarchar](50) NOT NULL,
	[lastname] [nchar](50) NOT NULL,
	[dob] [datetime] NOT NULL,
	[email] [nvarchar](110) NOT NULL,
	[mainaddressid] [uniqueidentifier] NOT NULL,
	[telephone] [nvarchar](50) NOT NULL,
	[fax] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[newsletteropted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Customers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturers](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[image] [nvarchar](65) NOT NULL,
 CONSTRAINT [PK_Manufacturers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ManufacturersInfo]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManufacturersInfo](
	[id] [uniqueidentifier] NOT NULL,
	[manufacturerid] [uniqueidentifier] NULL,
	[url] [nvarchar](255) NOT NULL,
	[addedon] [datetime] NOT NULL,
 CONSTRAINT [PK_ManufacturersInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderProductAttributes]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderProductAttributes](
	[id] [uniqueidentifier] NOT NULL,
	[orderid] [uniqueidentifier] NULL,
	[orderproductid] [uniqueidentifier] NULL,
	[productoptions] [nvarchar](50) NOT NULL,
	[productoptiobvalue] [nvarchar](50) NOT NULL,
	[optionvalueprice] [decimal](10, 2) NOT NULL,
	[price_prefix] [char](1) NOT NULL,
 CONSTRAINT [PK_OrderProductAttributes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [uniqueidentifier] NOT NULL,
	[customerid] [uniqueidentifier] NULL,
	[customername] [nvarchar](65) NOT NULL,
	[customerStreetaddress] [nvarchar](65) NOT NULL,
	[customercity] [nvarchar](50) NOT NULL,
	[customerstate] [nvarchar](50) NOT NULL,
	[customerpostalcode] [nvarchar](50) NOT NULL,
	[customercountry] [nvarchar](50) NOT NULL,
	[customertelephone] [nvarchar](50) NOT NULL,
	[customeremail] [nvarchar](110) NOT NULL,
	[deliveryname] [nvarchar](65) NOT NULL,
	[deliverystreetaddress] [nvarchar](65) NOT NULL,
	[deliverycity] [nvarchar](50) NOT NULL,
	[deliverystate] [nvarchar](50) NOT NULL,
	[deliverypostalcode] [nvarchar](50) NOT NULL,
	[deliverycountry] [nvarchar](50) NOT NULL,
	[paymentmethodid] [uniqueidentifier] NULL,
	[latsmodified] [datetime] NOT NULL,
	[datepurcahsed] [datetime] NOT NULL,
	[shippingcost] [decimal](10, 2) NULL,
	[shipingmethodid] [uniqueidentifier] NULL,
	[orderstatus] [nvarchar](10) NOT NULL,
	[orderdatefinished] [datetime] NOT NULL,
	[comments] [nvarchar](max) NULL,
	[currency] [nvarchar](5) NOT NULL,
	[currency_value] [decimal](16, 6) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrdersProducts]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersProducts](
	[id] [uniqueidentifier] NOT NULL,
	[orderid] [uniqueidentifier] NULL,
	[productid] [uniqueidentifier] NOT NULL,
	[productname] [nvarchar](65) NOT NULL,
	[productprice] [decimal](10, 2) NOT NULL,
	[finalprice] [decimal](10, 2) NOT NULL,
	[productstax] [decimal](9, 4) NOT NULL,
	[productqty] [int] NOT NULL,
 CONSTRAINT [PK_OrdersProducts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrdersStatus]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersStatus](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrdersStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [uniqueidentifier] NOT NULL,
	[qty] [int] NOT NULL,
	[model] [nvarchar](50) NOT NULL,
	[image] [nvarchar](65) NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[addedon] [datetime] NOT NULL,
	[modifiedon] [datetime] NOT NULL,
	[weight] [decimal](7, 2) NOT NULL,
	[status] [tinyint] NOT NULL,
	[manufactureId] [uniqueidentifier] NULL,
	[taxclassid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductsAttributes]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductsAttributes](
	[id] [uniqueidentifier] NOT NULL,
	[productsid] [uniqueidentifier] NULL,
	[optionsid] [uniqueidentifier] NULL,
	[optionvaluesid] [uniqueidentifier] NULL,
	[price] [decimal](10, 2) NOT NULL,
	[price_prefix] [char](1) NOT NULL,
 CONSTRAINT [PK_ProductsAttributes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[productsdetail]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productsdetail](
	[id] [uniqueidentifier] NOT NULL,
	[productid] [uniqueidentifier] NULL,
	[name] [nvarchar](65) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[url] [nvarchar](255) NOT NULL,
	[views] [int] NOT NULL,
 CONSTRAINT [PK_productsdetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductsOptions]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsOptions](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductsOptions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductsOptionsValues]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsOptionsValues](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](65) NOT NULL,
 CONSTRAINT [PK_ProductsOptionsValues] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductsOptionsValuesMappings]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsOptionsValuesMappings](
	[id] [uniqueidentifier] NOT NULL,
	[optionsid] [uniqueidentifier] NULL,
	[valuesid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ProductsOptionsValuesMappings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[id] [uniqueidentifier] NOT NULL,
	[productid] [uniqueidentifier] NULL,
	[customerid] [uniqueidentifier] NULL,
	[customername] [nvarchar](65) NOT NULL,
	[rating] [int] NOT NULL,
	[addedon] [datetime] NOT NULL,
	[modifiedon] [datetime] NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReviewsDetail]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReviewsDetail](
	[id] [uniqueidentifier] NOT NULL,
	[reviewid] [uniqueidentifier] NULL,
	[text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ReviewsDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WhoIsOnline]    Script Date: 10/03/2021 10:09:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WhoIsOnline](
	[id] [uniqueidentifier] NOT NULL,
	[fullname] [nvarchar](65) NOT NULL,
	[sessionid] [nvarchar](255) NOT NULL,
	[ipaddress] [nvarchar](18) NOT NULL,
	[timeentry] [datetime] NOT NULL,
	[lastpageurl] [nvarchar](65) NOT NULL,
 CONSTRAINT [PK_WhoIsOnline] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'00000000-0000-0000-0000-000000000000', N'M', N'truong', N'khuong                                            ', CAST(N'2001-01-01 00:00:00.000' AS DateTime), N'khuong@gmail.com', N'00000000-0000-0000-0000-000000000000', N'12637676674', N'3547437647', N'123456', 1)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'a2ce7488-490c-4d9e-af75-04a78e81194f', N'F', N'Bui ', N'Thinh                                             ', CAST(N'2000-11-18 00:00:00.000' AS DateTime), N'thinhbui83@gmail.com', N'00000000-0000-0000-0000-000000000000', N'123456789', N'123456789', N'123', 0)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'80f4c1dc-4fbd-4dd7-8d7e-07e606231060', N'F', N'Bui ', N'Thinh                                             ', CAST(N'2000-11-18 00:00:00.000' AS DateTime), N'thinhbui8@gmail.com', N'00000000-0000-0000-0000-000000000000', N'123456789', N'123456789', N'123', 0)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'aa658c79-34e9-4c51-87a4-08e58207cba3', N'F', N'van ', N'thinh                                             ', CAST(N'2000-11-11 00:00:00.000' AS DateTime), N'tthinddhh@gmail.com', N'00000000-0000-0000-0000-000000000000', N'12312532412', N'12435134123', N'123', 1)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'11111111-1111-1111-1111-111111111111', N'M', N'Truong', N'Khuong                                            ', CAST(N'1998-05-16 00:00:00.000' AS DateTime), N'truongcongkhuong@gmail.com', N'11111111-1111-1111-1111-111111111111', N'0978189218', N'0978189218', N'12345', 1)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'e6f78335-0719-47e8-9526-141b3129abaa', N'F', N'van ', N'thinh                                             ', CAST(N'2000-11-11 00:00:00.000' AS DateTime), N'tthinhh@gmail.com', N'00000000-0000-0000-0000-000000000000', N'12312532412', N'12435134123', N'123', 1)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'd89f8c0b-bd24-4a67-a6a6-1adf36f4e050', N'M', N'van', N'thinh                                             ', CAST(N'2001-01-01 00:00:00.000' AS DateTime), N'thinh@gmail.com', N'00000000-0000-0000-0000-000000000000', N'132543657468', N'32432654765', N'123', 0)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'604aa769-01c3-4a19-99c7-21803cdc5d3e', N'F', N'Le', N'Ngoc                                              ', CAST(N'1999-11-11 00:00:00.000' AS DateTime), N'ngoc@gmail.com', N'00000000-0000-0000-0000-000000000000', N'0399509757', N'0399509757', N'123', 1)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'48603a1f-3eca-49e6-a51c-272ea17d5bb9', N'F', N'Le', N'Ngoc                                              ', CAST(N'1999-11-11 00:00:00.000' AS DateTime), N'ngocf@gmail.com', N'00000000-0000-0000-0000-000000000000', N'0399509757', N'0399509757', N'123', 1)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'6bb192fd-795e-4e87-993d-2a48a110a0f3', N'F', N'Le', N'Ngoc Chau                                         ', CAST(N'1999-11-11 00:00:00.000' AS DateTime), N'ngocchau@gmail.com', N'00000000-0000-0000-0000-000000000000', N'0399509757', N'0399509757', N'123', 1)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'dab786c1-585b-4e03-accc-b24f6de6c677', N'F', N'Bui ', N'Thinh                                             ', CAST(N'2000-11-18 00:00:00.000' AS DateTime), N'thinhbui@gmail.com', N'00000000-0000-0000-0000-000000000000', N'123456789', N'123456789', N'123', 0)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'9f340073-1cc9-4ef8-b8a1-db351e71d61a', N'F', N'Pham', N'Hong Nhi                                          ', CAST(N'1998-10-02 00:00:00.000' AS DateTime), N'nhi245@gmail.com', N'00000000-0000-0000-0000-000000000000', N'0966668392', N'0966668392', N'12345', 0)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'15bfb62a-4462-4be6-a986-e0dcb8c30c37', N'F', N'Bui ', N'Yen                                               ', CAST(N'2000-11-18 00:00:00.000' AS DateTime), N'yenbui04@gmail.com', N'00000000-0000-0000-0000-000000000000', N'123456789', N'123456789', N'123', 0)
INSERT [dbo].[Customers] ([id], [gender], [firstname], [lastname], [dob], [email], [mainaddressid], [telephone], [fax], [password], [newsletteropted]) VALUES (N'b5349500-8b85-4e8a-b536-e76b4f199e53', N'F', N'Pham', N'Hong Nhi                                          ', CAST(N'1998-10-02 00:00:00.000' AS DateTime), N'nhi@gmail.com', N'00000000-0000-0000-0000-000000000000', N'0966668392', N'0966668392', N'12345', 0)
INSERT [dbo].[Products] ([id], [qty], [model], [image], [price], [addedon], [modifiedon], [weight], [status], [manufactureId], [taxclassid]) VALUES (N'9a93a82a-3952-435e-0990-2aa92dd3e1d4', 5000, N'aaaaa', N'aaaaa', CAST(30.00 AS Decimal(10, 2)), CAST(N'2011-11-11 00:00:00.000' AS DateTime), CAST(N'2015-12-11 00:00:00.000' AS DateTime), CAST(1.00 AS Decimal(7, 2)), 11, N'9a93a82a-3952-435e-0990-2aa92dd3e1d4', N'9a93a82a-3952-435e-0990-2aa92dd3e1d4')
INSERT [dbo].[Products] ([id], [qty], [model], [image], [price], [addedon], [modifiedon], [weight], [status], [manufactureId], [taxclassid]) VALUES (N'9a93a82a-3952-435e-0990-2aa92dd3e1d5', 9999, N'bbbb', N'bbbb', CAST(40.00 AS Decimal(10, 2)), CAST(N'2019-01-10 00:00:00.000' AS DateTime), CAST(N'2019-02-02 00:00:00.000' AS DateTime), CAST(0.80 AS Decimal(7, 2)), 10, N'9a93a82a-3952-435e-0990-2aa92dd3e1d6', N'9a93a82a-3952-435e-0990-2aa92dd3e1d6')
INSERT [dbo].[Products] ([id], [qty], [model], [image], [price], [addedon], [modifiedon], [weight], [status], [manufactureId], [taxclassid]) VALUES (N'9a93a82a-3952-435e-0990-2aa92dd3e1d6', 8888, N'cccc', N'ccccc', CAST(50.00 AS Decimal(10, 2)), CAST(N'2020-05-16 00:00:00.000' AS DateTime), CAST(N'2020-07-16 00:00:00.000' AS DateTime), CAST(0.90 AS Decimal(7, 2)), 9, N'9a93a82a-3952-435e-0990-2aa92dd3e1d7', N'9a93a82a-3952-435e-0990-2aa92dd3e1d7')
INSERT [dbo].[productsdetail] ([id], [productid], [name], [description], [url], [views]) VALUES (N'9a93a82a-3952-435e-0990-2aa92dd3e1c5', N'9a93a82a-3952-435e-0990-2aa92dd3e1d6', N'Marketing Made Simple', N'A Step-by-Step StoryBrand Guide for Any Business', N'https://www.amazon.com/dp/B07TTTYZRK/ref=s9_acsd_obs_hd_bw_b5_c2_x_1_i?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-11&pf_rd_r=CX6HQNXM73P2K47W125A&pf_rd_t=101&pf_rd_p=160dba65-6d6f-55dc-80b6-a205a0b325c4&pf_rd_i=5', 1)
INSERT [dbo].[productsdetail] ([id], [productid], [name], [description], [url], [views]) VALUES (N'9a93a82a-3952-435e-0990-2aa92dd3e1d4', N'9a93a82a-3952-435e-0990-2aa92dd3e1d4', N'Building a RESTful API with
ASP.NET Core Web API', N'Building a RESTful API with
ASP.NET Core Web API', N'https://www.amazon.com/Building-RESTful-Services-NET-Core-ebook/dp/B079DV3M94', 1)
INSERT [dbo].[productsdetail] ([id], [productid], [name], [description], [url], [views]) VALUES (N'9a93a82a-3952-435e-0990-2aa92dd3e1d6', N'9a93a82a-3952-435e-0990-2aa92dd3e1d5', N'Learning React JavaScript Library From Scratch', N'Learning React JavaScript Library From Scratch', N'https://www.amazon.com/React-js-Book-Learning-JavaScript-Library-ebook/dp/B01N9N3I17', 2)
ALTER TABLE [dbo].[AddressBook]  WITH CHECK ADD  CONSTRAINT [FK_AddressBook_Customers] FOREIGN KEY([customerid])
REFERENCES [dbo].[Customers] ([id])
GO
ALTER TABLE [dbo].[AddressBook] CHECK CONSTRAINT [FK_AddressBook_Customers]
GO
ALTER TABLE [dbo].[CartAttributes]  WITH CHECK ADD  CONSTRAINT [FK_CartAttributes_Customers] FOREIGN KEY([customerid])
REFERENCES [dbo].[Customers] ([id])
GO
ALTER TABLE [dbo].[CartAttributes] CHECK CONSTRAINT [FK_CartAttributes_Customers]
GO
ALTER TABLE [dbo].[CartAttributes]  WITH CHECK ADD  CONSTRAINT [FK_CartAttributes_Products] FOREIGN KEY([productid])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[CartAttributes] CHECK CONSTRAINT [FK_CartAttributes_Products]
GO
ALTER TABLE [dbo].[CartAttributes]  WITH CHECK ADD  CONSTRAINT [FK_CartAttributes_ProductsOptions] FOREIGN KEY([productoptionid])
REFERENCES [dbo].[ProductsOptions] ([id])
GO
ALTER TABLE [dbo].[CartAttributes] CHECK CONSTRAINT [FK_CartAttributes_ProductsOptions]
GO
ALTER TABLE [dbo].[CartAttributes]  WITH CHECK ADD  CONSTRAINT [FK_CartAttributes_ProductsOptionsValues] FOREIGN KEY([productoptionvalueid])
REFERENCES [dbo].[ProductsOptionsValues] ([id])
GO
ALTER TABLE [dbo].[CartAttributes] CHECK CONSTRAINT [FK_CartAttributes_ProductsOptionsValues]
GO
ALTER TABLE [dbo].[Configuration]  WITH CHECK ADD  CONSTRAINT [FK_Configuration_ConfigurationGroup] FOREIGN KEY([configurationgroupid])
REFERENCES [dbo].[ConfigurationGroup] ([id])
GO
ALTER TABLE [dbo].[Configuration] CHECK CONSTRAINT [FK_Configuration_ConfigurationGroup]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [FK_Countries_Currencies] FOREIGN KEY([Currencyid])
REFERENCES [dbo].[Currencies] ([id])
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [FK_Countries_Currencies]
GO
ALTER TABLE [dbo].[CustomerInfo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerInfo_Customers] FOREIGN KEY([customerid])
REFERENCES [dbo].[Customers] ([id])
GO
ALTER TABLE [dbo].[CustomerInfo] CHECK CONSTRAINT [FK_CustomerInfo_Customers]
GO
ALTER TABLE [dbo].[ManufacturersInfo]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturersInfo_Manufacturers] FOREIGN KEY([manufacturerid])
REFERENCES [dbo].[Manufacturers] ([id])
GO
ALTER TABLE [dbo].[ManufacturersInfo] CHECK CONSTRAINT [FK_ManufacturersInfo_Manufacturers]
GO
ALTER TABLE [dbo].[OrderProductAttributes]  WITH CHECK ADD  CONSTRAINT [FK_OrderProductAttributes_OrderProductAttributes] FOREIGN KEY([orderproductid])
REFERENCES [dbo].[OrdersProducts] ([id])
GO
ALTER TABLE [dbo].[OrderProductAttributes] CHECK CONSTRAINT [FK_OrderProductAttributes_OrderProductAttributes]
GO
ALTER TABLE [dbo].[OrderProductAttributes]  WITH CHECK ADD  CONSTRAINT [FK_OrderProductAttributes_Orders] FOREIGN KEY([orderid])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderProductAttributes] CHECK CONSTRAINT [FK_OrderProductAttributes_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([customerid])
REFERENCES [dbo].[Customers] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[OrdersProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrdersProducts_Orders] FOREIGN KEY([orderid])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrdersProducts] CHECK CONSTRAINT [FK_OrdersProducts_Orders]
GO
ALTER TABLE [dbo].[OrdersProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrdersProducts_Products] FOREIGN KEY([productid])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[OrdersProducts] CHECK CONSTRAINT [FK_OrdersProducts_Products]
GO
ALTER TABLE [dbo].[ProductsAttributes]  WITH CHECK ADD  CONSTRAINT [FK_ProductsAttributes_Products] FOREIGN KEY([productsid])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[ProductsAttributes] CHECK CONSTRAINT [FK_ProductsAttributes_Products]
GO
ALTER TABLE [dbo].[ProductsAttributes]  WITH CHECK ADD  CONSTRAINT [FK_ProductsAttributes_ProductsOptions] FOREIGN KEY([optionsid])
REFERENCES [dbo].[ProductsOptions] ([id])
GO
ALTER TABLE [dbo].[ProductsAttributes] CHECK CONSTRAINT [FK_ProductsAttributes_ProductsOptions]
GO
ALTER TABLE [dbo].[ProductsAttributes]  WITH CHECK ADD  CONSTRAINT [FK_ProductsAttributes_ProductsOptionsValues] FOREIGN KEY([optionvaluesid])
REFERENCES [dbo].[ProductsOptionsValues] ([id])
GO
ALTER TABLE [dbo].[ProductsAttributes] CHECK CONSTRAINT [FK_ProductsAttributes_ProductsOptionsValues]
GO
ALTER TABLE [dbo].[productsdetail]  WITH CHECK ADD  CONSTRAINT [FK_productsdetail_Products] FOREIGN KEY([productid])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[productsdetail] CHECK CONSTRAINT [FK_productsdetail_Products]
GO
ALTER TABLE [dbo].[ProductsOptionsValuesMappings]  WITH CHECK ADD  CONSTRAINT [FK_ProductsOptionsValuesMappings_productsdetail] FOREIGN KEY([optionsid])
REFERENCES [dbo].[ProductsOptions] ([id])
GO
ALTER TABLE [dbo].[ProductsOptionsValuesMappings] CHECK CONSTRAINT [FK_ProductsOptionsValuesMappings_productsdetail]
GO
ALTER TABLE [dbo].[ProductsOptionsValuesMappings]  WITH CHECK ADD  CONSTRAINT [FK_ProductsOptionsValuesMappings_ProductsOptionsValues] FOREIGN KEY([valuesid])
REFERENCES [dbo].[ProductsOptionsValues] ([id])
GO
ALTER TABLE [dbo].[ProductsOptionsValuesMappings] CHECK CONSTRAINT [FK_ProductsOptionsValuesMappings_ProductsOptionsValues]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Products] FOREIGN KEY([productid])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Products]
GO
ALTER TABLE [dbo].[ReviewsDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReviewsDetail_Reviews] FOREIGN KEY([reviewid])
REFERENCES [dbo].[Reviews] ([id])
GO
ALTER TABLE [dbo].[ReviewsDetail] CHECK CONSTRAINT [FK_ReviewsDetail_Reviews]
GO
