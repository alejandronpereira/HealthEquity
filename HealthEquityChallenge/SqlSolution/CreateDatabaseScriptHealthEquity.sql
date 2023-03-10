USE [HealthEquity]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 01/03/2023 19:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Occupation] [nvarchar](50) NOT NULL,
	[MaritalStatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 01/03/2023 19:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[MethodOfPurchase] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersDetails]    Script Date: 01/03/2023 19:19:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductNumber] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductOrigin] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrdersDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([PersonId], [FirstName], [LastName], [Age], [Occupation], [MaritalStatus]) VALUES (1, N'John', N'Stevens', 45, N'Software Engineer', N'Married')
INSERT [dbo].[Customer] ([PersonId], [FirstName], [LastName], [Age], [Occupation], [MaritalStatus]) VALUES (2, N'Bill', N'Russell', 32, N'Mechanic', N'Married')
INSERT [dbo].[Customer] ([PersonId], [FirstName], [LastName], [Age], [Occupation], [MaritalStatus]) VALUES (3, N'Joe', N'Montana', 30, N'Writer', N'Single')
INSERT [dbo].[Customer] ([PersonId], [FirstName], [LastName], [Age], [Occupation], [MaritalStatus]) VALUES (4, N'Lionel', N'Messi', 36, N'Software Engineer', N'Married')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [PersonId], [DateCreated], [MethodOfPurchase]) VALUES (1, 1, CAST(N'2022-02-03T00:00:00.000' AS DateTime), N'Online')
INSERT [dbo].[Orders] ([OrderId], [PersonId], [DateCreated], [MethodOfPurchase]) VALUES (2, 1, CAST(N'2022-03-03T00:00:00.000' AS DateTime), N'Direct Sale')
INSERT [dbo].[Orders] ([OrderId], [PersonId], [DateCreated], [MethodOfPurchase]) VALUES (3, 2, CAST(N'2022-04-03T00:00:00.000' AS DateTime), N'Online')
INSERT [dbo].[Orders] ([OrderId], [PersonId], [DateCreated], [MethodOfPurchase]) VALUES (4, 2, CAST(N'2022-03-03T00:00:00.000' AS DateTime), N'Direct Sale')
INSERT [dbo].[Orders] ([OrderId], [PersonId], [DateCreated], [MethodOfPurchase]) VALUES (5, 2, CAST(N'2022-02-01T00:00:00.000' AS DateTime), N'Direct Sale')
INSERT [dbo].[Orders] ([OrderId], [PersonId], [DateCreated], [MethodOfPurchase]) VALUES (6, 3, CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'Online')
INSERT [dbo].[Orders] ([OrderId], [PersonId], [DateCreated], [MethodOfPurchase]) VALUES (7, 4, CAST(N'2022-02-01T00:00:00.000' AS DateTime), N'Online')
INSERT [dbo].[Orders] ([OrderId], [PersonId], [DateCreated], [MethodOfPurchase]) VALUES (8, 4, CAST(N'2022-06-05T00:00:00.000' AS DateTime), N'Online')
INSERT [dbo].[Orders] ([OrderId], [PersonId], [DateCreated], [MethodOfPurchase]) VALUES (9, 4, CAST(N'2022-07-09T00:00:00.000' AS DateTime), N'Online')
INSERT [dbo].[Orders] ([OrderId], [PersonId], [DateCreated], [MethodOfPurchase]) VALUES (10, 4, CAST(N'2022-04-05T00:00:00.000' AS DateTime), N'Direct Sale')
INSERT [dbo].[Orders] ([OrderId], [PersonId], [DateCreated], [MethodOfPurchase]) VALUES (11, 4, CAST(N'2022-01-03T00:00:00.000' AS DateTime), N'Direct Sale')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OrdersDetails] ON 

INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (3, 11, 4, 1112222333, N'Los Angeles')
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (4, 10, 3, 1112222333, N'Sacramento')
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (5, 10, 2, 89987, N'Sacramento')
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (6, 9, 5, 1112222333, N'Boston')
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (7, 8, 2, 23232, N'Boston')
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (8, 8, 1, 11123, N'Boston')
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (9, 8, 5, 1112222333, N'Boston')
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (10, 5, 1, 1991, N'Los Angeles')
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (11, 5, 4, 15551, N'Boston')
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (12, 4, 1, 1112222333, N'Sacramento')
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (13, 3, 2, 442, N'Boston')
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (14, 1, 2, 11231, N'Sacramento')
INSERT [dbo].[OrdersDetails] ([OrderDetailId], [OrderId], [ProductNumber], [ProductId], [ProductOrigin]) VALUES (15, 1, 1, 1112222333, N'Los Angeles')
SET IDENTITY_INSERT [dbo].[OrdersDetails] OFF
GO
