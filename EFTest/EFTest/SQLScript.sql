USE [EFTest]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/20/2016 5:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerDetail]    Script Date: 1/20/2016 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerDetail](
	[CustomerId] [int] NOT NULL,
	[EmailAddress] [varchar](255) NULL,
	[PhoneNumber] [varchar](25) NULL,
 CONSTRAINT [PK_CustomerDetail] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 1/20/2016 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeDetail]    Script Date: 1/20/2016 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeDetail](
	[EmployeeId] [int] NOT NULL,
	[Gender] [varchar](10) NULL,
	[EmailAddress] [varchar](255) NULL,
	[PhoneNumber] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeDetail_1] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[People]    Script Date: 1/20/2016 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[People](
	[PeopleId] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[PeopleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PeopleAddress]    Script Date: 1/20/2016 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PeopleAddress](
	[PeopleAddressId] [int] NOT NULL,
	[PeopleId] [int] NOT NULL,
	[AddressLine1] [varchar](100) NULL,
	[AddressLine2] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
 CONSTRAINT [PK_PeopleAddress] PRIMARY KEY CLUSTERED 
(
	[PeopleAddressId] ASC,
	[PeopleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/20/2016 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentAddress]    Script Date: 1/20/2016 5:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentAddress](
	[StudentAddressId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[AddressLine1] [varchar](100) NULL,
	[AddressLine2] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
 CONSTRAINT [PK_StudentAddress] PRIMARY KEY CLUSTERED 
(
	[StudentAddressId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [MiddleName]) VALUES (1, N'Tejas', N'Trivedi', N'G')
GO
INSERT [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [MiddleName]) VALUES (2, N'Jignesh', N'Trivedi', N'G')
GO
INSERT [dbo].[CustomerDetail] ([CustomerId], [EmailAddress], [PhoneNumber]) VALUES (1, N'test@gmail.com', N'222333444')
GO
INSERT [dbo].[Employee] ([EmployeeId], [FirstName], [LastName], [MiddleName]) VALUES (1, N'Jignesh', N'Trivedi', N'G')
GO
INSERT [dbo].[EmployeeDetail] ([EmployeeId], [Gender], [EmailAddress], [PhoneNumber]) VALUES (1, N'M', N'test@gmail.com', N'77733377733')
GO
INSERT [dbo].[People] ([PeopleId], [FirstName], [LastName]) VALUES (1, N'Jignesh', N'Trivedi')
GO
INSERT [dbo].[PeopleAddress] ([PeopleAddressId], [PeopleId], [AddressLine1], [AddressLine2], [City], [State], [Country]) VALUES (1, 1, N'AddLine1', N'Addline2', N'Bhavnagar', N'Gujarat', N'India')
GO
INSERT [dbo].[PeopleAddress] ([PeopleAddressId], [PeopleId], [AddressLine1], [AddressLine2], [City], [State], [Country]) VALUES (2, 1, N'AddLine1', N'Addline2', N'Gandhinagar', N'Gujarat', N'India')
GO
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName]) VALUES (1, N'Tejas', N'Trivedi')
GO
INSERT [dbo].[StudentAddress] ([StudentAddressId], [StudentId], [AddressLine1], [AddressLine2], [City], [State], [Country]) VALUES (1, 1, N'Add Line 1', N'Addline 2', N'Bhavnagar', N'Gujarat', N'India')
GO
INSERT [dbo].[StudentAddress] ([StudentAddressId], [StudentId], [AddressLine1], [AddressLine2], [City], [State], [Country]) VALUES (2, 1, N'Add Line 1', N'Addline 2', N'Gandhinagar', N'Gujarat', N'India')
GO
ALTER TABLE [dbo].[CustomerDetail]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDetail_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[CustomerDetail] CHECK CONSTRAINT [FK_CustomerDetail_Customer]
GO
ALTER TABLE [dbo].[EmployeeDetail]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDetail_EmployeeDetail] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
ALTER TABLE [dbo].[EmployeeDetail] CHECK CONSTRAINT [FK_EmployeeDetail_EmployeeDetail]
GO
ALTER TABLE [dbo].[PeopleAddress]  WITH CHECK ADD  CONSTRAINT [FK_PeopleAddress_People] FOREIGN KEY([PeopleId])
REFERENCES [dbo].[People] ([PeopleId])
GO
ALTER TABLE [dbo].[PeopleAddress] CHECK CONSTRAINT [FK_PeopleAddress_People]
GO
ALTER TABLE [dbo].[StudentAddress]  WITH CHECK ADD  CONSTRAINT [FK_StudentAddress_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentAddress] CHECK CONSTRAINT [FK_StudentAddress_Student]
GO
