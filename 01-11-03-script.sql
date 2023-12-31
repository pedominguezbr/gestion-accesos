USE [SGA_GestionAcceso]
GO
/****** Object:  Table [dbo].[UsuarioObservado]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioObservado](
	[IdUsuarioObservado] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[IdAplicacion] [int] NOT NULL,
	[FechaRegistro] [date] NULL,
	[EstadoActivo] [bit] NOT NULL,
 CONSTRAINT [PK_UsuarioObservado] PRIMARY KEY CLUSTERED 
(
	[IdUsuarioObservado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UsuarioObservado] ON
INSERT [dbo].[UsuarioObservado] ([IdUsuarioObservado], [IdPersona], [IdAplicacion], [FechaRegistro], [EstadoActivo]) VALUES (3, 5, 2, CAST(0x94360B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[UsuarioObservado] OFF
/****** Object:  Table [dbo].[xmls]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xmls](
	[id] [uniqueidentifier] NOT NULL,
	[pcname] [varchar](50) NOT NULL,
	[idagente] [varchar](50) NULL,
	[idsolicitud] [char](10) NULL,
	[fsolicitud] [datetime2](7) NULL,
	[faprobacion] [datetime2](7) NULL,
	[estado] [bit] NOT NULL,
	[fconexion] [datetime2](7) NULL,
	[ip] [varchar](50) NULL,
	[idComputer] [varchar](100) NULL,
	[userName] [varchar](50) NULL,
	[cpuInfo] [varchar](100) NULL,
	[memoryRam] [varchar](80) NULL,
	[systemArquitecture] [varchar](90) NULL,
	[operatingSystem] [varchar](90) NULL,
	[servicePack] [varchar](80) NULL,
 CONSTRAINT [PK_xmls] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[xmls] ([id], [pcname], [idagente], [idsolicitud], [fsolicitud], [faprobacion], [estado], [fconexion], [ip], [idComputer], [userName], [cpuInfo], [memoryRam], [systemArquitecture], [operatingSystem], [servicePack]) VALUES (N'd08bd16d-e771-4c15-a538-1bae84d291f9', N'MAGALY-PC', N'VAL10000000010', N'CRQ0000031', CAST(0x070000000000D2360B AS DateTime2), CAST(0x070000000000D2360B AS DateTime2), 1, CAST(0x070000000000D2360B AS DateTime2), N'192.168.1.38', N'MACMAGALY', N'Magaly', N'Intel(R) Core(TM) i3 CPU', N'2001268736', N'32 bits', N'Microsoft Windows 7', N'Service pack 1')
INSERT [dbo].[xmls] ([id], [pcname], [idagente], [idsolicitud], [fsolicitud], [faprobacion], [estado], [fconexion], [ip], [idComputer], [userName], [cpuInfo], [memoryRam], [systemArquitecture], [operatingSystem], [servicePack]) VALUES (N'd08bd16e-e771-4c15-a538-1bae84d291f9', N'AGUERREROG-IG', N'VAL10000000009', N'CRQ0000029', CAST(0x070385E3BE96DF360B AS DateTime2), CAST(0x070000000000000000 AS DateTime2), 0, CAST(0x074AB6A3A88AE2360B AS DateTime2), N'::1', N'BFEBFBFF00020655CB06843788     WD-WXL1AC0J225820071114173400000', N'Aguerrerog', N'Intel(R) Core(TM) i5 CPU       M 480  @ 2.67GHz', N'8379011072', N'64 bits', N'Microsoft Windows 8 Enterprise', N'')
INSERT [dbo].[xmls] ([id], [pcname], [idagente], [idsolicitud], [fsolicitud], [faprobacion], [estado], [fconexion], [ip], [idComputer], [userName], [cpuInfo], [memoryRam], [systemArquitecture], [operatingSystem], [servicePack]) VALUES (N'd08bd16f-e771-4c15-a538-1bae84d291f9', N'MAGALY-PC', N'VAL20000000010', N'CRQ0000031', CAST(0x070000000000D2360B AS DateTime2), CAST(0x070000000000D2360B AS DateTime2), 1, CAST(0x070000000000D2360B AS DateTime2), N'192.168.1.38', N'MACMAGALY', N'Magaly', N'Intel(R) Core(TM) i3 CPU', N'2001268736', N'32 bits', N'Microsoft Windows 7', N'Service pack 1')
INSERT [dbo].[xmls] ([id], [pcname], [idagente], [idsolicitud], [fsolicitud], [faprobacion], [estado], [fconexion], [ip], [idComputer], [userName], [cpuInfo], [memoryRam], [systemArquitecture], [operatingSystem], [servicePack]) VALUES (N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0', N'RPM', N'VAL20000000004', N'CRQ0000027', CAST(0x07C2497FFC01DE360B AS DateTime2), CAST(0x070000000000000000 AS DateTime2), 0, CAST(0x0744B78D448EDE360B AS DateTime2), N'::1', N'BFEBFBFF000006FD          31535935444a5138323333313231202020202020', N'Ronald', N'Intel(R) Core(TM)2 Duo CPU     T5550  @ 1.83GHz', N'3211124736', N'32 bits', N'Microsoft Windows 7 Ultimate ', N'')
INSERT [dbo].[xmls] ([id], [pcname], [idagente], [idsolicitud], [fsolicitud], [faprobacion], [estado], [fconexion], [ip], [idComputer], [userName], [cpuInfo], [memoryRam], [systemArquitecture], [operatingSystem], [servicePack]) VALUES (N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e', N'MARIANO-PC', N'VAL10000000008', N'CRQ0000025', CAST(0x071C26589472D2360B AS DateTime2), CAST(0x070000000000000000 AS DateTime2), 1, CAST(0x07DA9035239BDA360B AS DateTime2), N'127.0.0.1', N'BFEBFBFF000206522020202057202d44585731393345453033373831 ', N'Mariano', N'Intel(R) Core(TM) i3 CPU       M 330  @ 2.13GHz', N'2001268736', N'32 bits', N'Microsoft Windows 7 Home Premium ', N'Service Pack 1')
INSERT [dbo].[xmls] ([id], [pcname], [idagente], [idsolicitud], [fsolicitud], [faprobacion], [estado], [fconexion], [ip], [idComputer], [userName], [cpuInfo], [memoryRam], [systemArquitecture], [operatingSystem], [servicePack]) VALUES (N'8c57b4ad-c84e-4f78-8ffc-c2ee5574372e', N'MARIANO-PC', N'VAL20000000008', N'CRQ0000025', CAST(0x071C26589472D2360B AS DateTime2), CAST(0x070000000000000000 AS DateTime2), 1, CAST(0x07DA9035239BDA360B AS DateTime2), N'127.0.0.1', N'BFEBFBFF000206522020202057202d44585731393345453033373831 ', N'Mariano', N'Intel(R) Core(TM) i3 CPU       M 330  @ 2.13GHz', N'2001268736', N'32 bits', N'Microsoft Windows 7 Home Premium ', N'Service Pack 1')
/****** Object:  Table [dbo].[AplicacionAutorizanteHistorico]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AplicacionAutorizanteHistorico](
	[IdHistorico] [int] IDENTITY(1,1) NOT NULL,
	[IdAplicacion] [int] NOT NULL,
	[IdAutorizante] [int] NOT NULL,
	[Accion] [varchar](15) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[UsuarioModificacion] [char](10) NOT NULL,
	[RutaEvidencia] [varchar](200) NULL,
	[Comentario] [varchar](200) NULL,
 CONSTRAINT [PK_AplicacionAutorizanteHistorico] PRIMARY KEY CLUSTERED 
(
	[IdHistorico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AplicacionAutorizanteHistorico] ON
INSERT [dbo].[AplicacionAutorizanteHistorico] ([IdHistorico], [IdAplicacion], [IdAutorizante], [Accion], [FechaModificacion], [UsuarioModificacion], [RutaEvidencia], [Comentario]) VALUES (1, 2, 1, N'REGISTRADO', CAST(0x0000A25F00000000 AS DateTime), N'PDOMINGB  ', N'~/FileAutorizaciones/data.xml', N'fsdfdsf')
INSERT [dbo].[AplicacionAutorizanteHistorico] ([IdHistorico], [IdAplicacion], [IdAutorizante], [Accion], [FechaModificacion], [UsuarioModificacion], [RutaEvidencia], [Comentario]) VALUES (2, 3, 2, N'REGISTRADO', CAST(0x0000A25F00000000 AS DateTime), N'PDOMINGB  ', N'~/FileAutorizaciones/Pantalla_Busqueda.docx', N'sssssssssssssssssss')
INSERT [dbo].[AplicacionAutorizanteHistorico] ([IdHistorico], [IdAplicacion], [IdAutorizante], [Accion], [FechaModificacion], [UsuarioModificacion], [RutaEvidencia], [Comentario]) VALUES (3, 2, 3, N'REGISTRADO', CAST(0x0000A25F00000000 AS DateTime), N'PDOMINGB  ', N'~/FileAutorizaciones/comando git google code.txt', N'fsdfdsfd')
INSERT [dbo].[AplicacionAutorizanteHistorico] ([IdHistorico], [IdAplicacion], [IdAutorizante], [Accion], [FechaModificacion], [UsuarioModificacion], [RutaEvidencia], [Comentario]) VALUES (4, 3, 3, N'REGISTRADO', CAST(0x0000A25F00000000 AS DateTime), N'PDOMINGB  ', N'~/FileAutorizaciones/notas de ergonomia 29-05-11.txt', N'dddddddddddddd')
INSERT [dbo].[AplicacionAutorizanteHistorico] ([IdHistorico], [IdAplicacion], [IdAutorizante], [Accion], [FechaModificacion], [UsuarioModificacion], [RutaEvidencia], [Comentario]) VALUES (5, 3, 4, N'REGISTRADO', CAST(0x0000A26700000000 AS DateTime), N'PDOMINGB  ', N'~/FileAutorizaciones/menu.bmp', N'comentario')
INSERT [dbo].[AplicacionAutorizanteHistorico] ([IdHistorico], [IdAplicacion], [IdAutorizante], [Accion], [FechaModificacion], [UsuarioModificacion], [RutaEvidencia], [Comentario]) VALUES (6, 3, 4, N'ELIMINADO', CAST(0x0000A26701548612 AS DateTime), N'PDOMINGB  ', N'~/FileAutorizaciones/menu.bmp', N'comentario')
INSERT [dbo].[AplicacionAutorizanteHistorico] ([IdHistorico], [IdAplicacion], [IdAutorizante], [Accion], [FechaModificacion], [UsuarioModificacion], [RutaEvidencia], [Comentario]) VALUES (7, 3, 3, N'ELIMINADO', CAST(0x0000A25F01836A5A AS DateTime), N'PDOMINGB  ', N'~/FileAutorizaciones/JLTSeguridad.Master', N'wwwwwwww')
SET IDENTITY_INSERT [dbo].[AplicacionAutorizanteHistorico] OFF
/****** Object:  Table [dbo].[AplicacionAutorizante]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AplicacionAutorizante](
	[IdAplicacionAutorizante] [int] IDENTITY(1,1) NOT NULL,
	[IdAplicacion] [int] NOT NULL,
	[IdAutorizante] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [char](10) NOT NULL,
	[EstadoActivo] [bit] NOT NULL,
	[RutaEvidencia] [varchar](200) NULL,
	[Comentario] [varchar](200) NULL,
 CONSTRAINT [PK_AplicacionAutorizante] PRIMARY KEY CLUSTERED 
(
	[IdAplicacionAutorizante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AplicacionAutorizante] ON
INSERT [dbo].[AplicacionAutorizante] ([IdAplicacionAutorizante], [IdAplicacion], [IdAutorizante], [FechaCreacion], [UsuarioCreacion], [EstadoActivo], [RutaEvidencia], [Comentario]) VALUES (1, 2, 1, CAST(0x0000A25F017DD4D4 AS DateTime), N'PDOMINGB  ', 1, N'~/FileAutorizaciones/data.xml', N'fsdfdsf')
INSERT [dbo].[AplicacionAutorizante] ([IdAplicacionAutorizante], [IdAplicacion], [IdAutorizante], [FechaCreacion], [UsuarioCreacion], [EstadoActivo], [RutaEvidencia], [Comentario]) VALUES (2, 3, 2, CAST(0x0000A25F0180BD48 AS DateTime), N'PDOMINGB  ', 1, N'~/FileAutorizaciones/Pantalla_Busqueda.docx', N'sssssssssssssssssss')
INSERT [dbo].[AplicacionAutorizante] ([IdAplicacionAutorizante], [IdAplicacion], [IdAutorizante], [FechaCreacion], [UsuarioCreacion], [EstadoActivo], [RutaEvidencia], [Comentario]) VALUES (3, 2, 3, CAST(0x0000A25F0181B55F AS DateTime), N'PDOMINGB  ', 1, N'~/FileAutorizaciones/comando git google code.txt', N'fsdfdsfd')
SET IDENTITY_INSERT [dbo].[AplicacionAutorizante] OFF
/****** Object:  Table [dbo].[Aplicacion]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aplicacion](
	[IdAplicacion] [int] IDENTITY(1,1) NOT NULL,
	[NombreAplicacion] [varchar](150) NOT NULL,
	[UsuarioCreacion] [char](10) NOT NULL,
	[FechaCreacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[IdLogicaGeneracionUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Aplicacion] PRIMARY KEY CLUSTERED 
(
	[IdAplicacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Aplicacion] ON
INSERT [dbo].[Aplicacion] ([IdAplicacion], [NombreAplicacion], [UsuarioCreacion], [FechaCreacion], [Estado], [IdLogicaGeneracionUsuario]) VALUES (2, N'DELFOS', N'PDOMINGU  ', CAST(0x0000A14B00A999CB AS DateTime), 1, 1)
INSERT [dbo].[Aplicacion] ([IdAplicacion], [NombreAplicacion], [UsuarioCreacion], [FechaCreacion], [Estado], [IdLogicaGeneracionUsuario]) VALUES (3, N'ARGOS', N'JCARRANZ  ', CAST(0x0000A14B00A9ADBB AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[Aplicacion] OFF
/****** Object:  Table [dbo].[Agencia]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agencia](
	[IdAgencia] [int] IDENTITY(1,1) NOT NULL,
	[NombreAgencia] [varchar](50) NOT NULL,
	[IdRepresentante] [int] NOT NULL,
	[RUC] [char](11) NULL,
	[Nemotecnico_ag] [varchar](50) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Agencia] PRIMARY KEY CLUSTERED 
(
	[IdAgencia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Agencia] ON
INSERT [dbo].[Agencia] ([IdAgencia], [NombreAgencia], [IdRepresentante], [RUC], [Nemotecnico_ag], [Estado]) VALUES (1, N'OVERLANDES', 2, N'10426778111', N'OVERa', 1)
INSERT [dbo].[Agencia] ([IdAgencia], [NombreAgencia], [IdRepresentante], [RUC], [Nemotecnico_ag], [Estado]) VALUES (2, N'JL NIEZEN', 1, N'12987345134', N'JLNI', 1)
INSERT [dbo].[Agencia] ([IdAgencia], [NombreAgencia], [IdRepresentante], [RUC], [Nemotecnico_ag], [Estado]) VALUES (4, N'ANCRO', 1, N'12345678912', N'ANCR', 1)
INSERT [dbo].[Agencia] ([IdAgencia], [NombreAgencia], [IdRepresentante], [RUC], [Nemotecnico_ag], [Estado]) VALUES (5, N'otra agenc', 3, N'1042782511 ', N'<.vun fncxzc', 1)
INSERT [dbo].[Agencia] ([IdAgencia], [NombreAgencia], [IdRepresentante], [RUC], [Nemotecnico_ag], [Estado]) VALUES (6, N'FSDF', 3, N'FDSDF      ', N'FSDFDS', 1)
INSERT [dbo].[Agencia] ([IdAgencia], [NombreAgencia], [IdRepresentante], [RUC], [Nemotecnico_ag], [Estado]) VALUES (7, N'MINKA', 4, N'2012344334 ', N'SNMINKA', 1)
SET IDENTITY_INSERT [dbo].[Agencia] OFF
/****** Object:  Table [dbo].[Estado]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[IdEstado] [int] IDENTITY(1,1) NOT NULL,
	[NombreEstado] [varchar](50) NULL,
	[EstadoActivo] [bit] NOT NULL,
	[TipoEstado] [int] NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-Solicitud, 2-Detalle,3-Validador' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Estado', @level2type=N'COLUMN',@level2name=N'TipoEstado'
GO
SET IDENTITY_INSERT [dbo].[Estado] ON
INSERT [dbo].[Estado] ([IdEstado], [NombreEstado], [EstadoActivo], [TipoEstado]) VALUES (1, N'EN PROCESO', 1, 1)
INSERT [dbo].[Estado] ([IdEstado], [NombreEstado], [EstadoActivo], [TipoEstado]) VALUES (2, N'AUTORIZADO', 1, 1)
INSERT [dbo].[Estado] ([IdEstado], [NombreEstado], [EstadoActivo], [TipoEstado]) VALUES (3, N'VALIDADO', 1, 1)
INSERT [dbo].[Estado] ([IdEstado], [NombreEstado], [EstadoActivo], [TipoEstado]) VALUES (4, N'SOLICITUD RECHAZADA', 1, 1)
INSERT [dbo].[Estado] ([IdEstado], [NombreEstado], [EstadoActivo], [TipoEstado]) VALUES (5, N'ERROR EN VALIDACION', 1, 2)
INSERT [dbo].[Estado] ([IdEstado], [NombreEstado], [EstadoActivo], [TipoEstado]) VALUES (6, N'APROVISIONADO', 1, 1)
INSERT [dbo].[Estado] ([IdEstado], [NombreEstado], [EstadoActivo], [TipoEstado]) VALUES (7, N'ACTIVO', 1, 3)
INSERT [dbo].[Estado] ([IdEstado], [NombreEstado], [EstadoActivo], [TipoEstado]) VALUES (8, N'APROBADO', 1, 4)
INSERT [dbo].[Estado] ([IdEstado], [NombreEstado], [EstadoActivo], [TipoEstado]) VALUES (9, N'NO VALIDADO', 1, 5)
INSERT [dbo].[Estado] ([IdEstado], [NombreEstado], [EstadoActivo], [TipoEstado]) VALUES (10, N'VALIDADO', 1, 5)
INSERT [dbo].[Estado] ([IdEstado], [NombreEstado], [EstadoActivo], [TipoEstado]) VALUES (11, N'ERROR EN VALIDACION', 1, 5)
SET IDENTITY_INSERT [dbo].[Estado] OFF
/****** Object:  Table [dbo].[ParametroGeneracionCuenta]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ParametroGeneracionCuenta](
	[IdParametro] [int] NOT NULL,
	[DescripcionParametro] [varchar](150) NULL,
	[Prefijo] [varchar](50) NULL,
	[LongitudCuenta] [int] NULL,
	[Correlativo] [int] NULL,
	[FechaRegistro] [date] NOT NULL,
	[EstadoActivo] [bit] NOT NULL,
 CONSTRAINT [PK_ParametroGeneracionCuenta] PRIMARY KEY CLUSTERED 
(
	[IdParametro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ParametroGeneracionCuenta] ([IdParametro], [DescripcionParametro], [Prefijo], [LongitudCuenta], [Correlativo], [FechaRegistro], [EstadoActivo]) VALUES (1, N'PREFIJO + LONGITUD + CORRELATIVO', N'AG', 8, 40, CAST(0xC3360B00 AS Date), 1)
INSERT [dbo].[ParametroGeneracionCuenta] ([IdParametro], [DescripcionParametro], [Prefijo], [LongitudCuenta], [Correlativo], [FechaRegistro], [EstadoActivo]) VALUES (2, N'1 NOMBRE + APE PATERNO + 1 MATERNO', N'nn', 0, 0, CAST(0xC3360B00 AS Date), 1)
/****** Object:  Table [dbo].[Menu]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[IdMenu] [int] IDENTITY(1,1) NOT NULL,
	[NombreFisicoMenu] [varchar](50) NOT NULL,
	[DescripcionMenu] [varchar](150) NULL,
	[EtiquetaMenu] [varchar](50) NOT NULL,
	[UrlMenu] [varchar](60) NULL,
	[IdMenuPadre] [int] NULL,
	[EstadoMenu] [bit] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[IdMenu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (1, N'Accesos', N'Accesos', N'Accesos', N'', -1, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (4, N'Solicitud de Acceso', N'Solicitud de Acceso', N'Solicitud de Acceso', N'Solicitud/frmSolicitudAccesoSeguim.aspx', 1, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (5, N'Validación de Solicitud de Acceso', N'Validación de Solicitud de Acceso', N'Validación de Solicitud de Acceso', N'Validacion/frmValidacionSeguim.aspx', 1, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (6, N'Aprovisionar Solicitud de Acceso', N'Aprovisionar Solicitud de Acceso', N'Aprovisionar Solicitud de Acceso', N'Aprovisionamiento/frmAprovisionamientoSeguim.aspx', 1, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (7, N'Generación del Agente Validador Firmado', N'Generación del Agente Validador Firmado', N'Generación del Agente Validador Firmado', N'GenAgenteValidador/frmAgenteValidadorSeguim.aspx', 1, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (8, N'Validación de Estación de Acceso', N'Validación de Estación de Acceso', N'Validación de Estación de Acceso', N'ValPuntoAcceso/frmValPuntoAccesoSeguim.aspx', 1, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (9, N'Distribución de Credenciales', N'Distribución de Credenciales', N'Distribución de Credenciales', N'#', 1, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (10, N'Monitoreo de Accesos', N'Monitoreo de Accesos', N'Monitoreo de Accesos', N'#', 1, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (11, N'Reportes', N'Reportes', N'Reportes', NULL, NULL, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (12, N'Reporte de Gestion de Accesos', N'Reporte de Gestion de Accesos', N'Reporte de Gestion de Accesos', N'#', 11, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (13, N'Mantenimiento', N'Mantenimiento', N'Mantenimiento', NULL, NULL, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (14, N'Agencias', N'Agencias', N'Agencias', N'AgenciaSucursal/frmAgenciaConsulta.aspx', 13, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (15, N'Personas', N'Personas', N'Personas', N'Persona/frmPersonaConsulta.aspx', 13, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (16, N'Consulta Solicitud de Acceso', N'Consulta Solicitud de Acceso', N'Consulta Solicitud de Acceso', N'Solicitud/frmSolicitudAccesoSeguim.aspx?modo=Consultar', 1, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (17, N'Reporte', N'Reporte', N'Reporte', N'Reporte.aspx', 1, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (18, N'Aplicacion Autorizante', N'Aplicacion Autorizante', N'Aplicacion Autorizante', N'AplicacionAutorizante\frmAplicacionAutorizanteConsulta.aspx', 13, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (19, N'Rol', N'Mantemiento de rol', N'Rol', N'Rol/frmRolConsulta.aspx', 27, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (20, N'Autorizador', N'Autorizador', N'Autorizador', N'Autorizante/frmAutorizanteConsulta.aspx', 13, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (21, N'Menu', N'Menu', N'Menu', N'Menu/frmMenuConsulta.aspx', 27, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (25, N'Permiso Menu', N'Permiso Menu', N'Permiso Menu', N'Permisos/frmPermisoMenuConsulta.aspx', 27, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (26, N'Usuarios', N'Usuarios', N'Usuarios', N'Usuario/frmUsuarioConsulta.aspx', 27, 1)
INSERT [dbo].[Menu] ([IdMenu], [NombreFisicoMenu], [DescripcionMenu], [EtiquetaMenu], [UrlMenu], [IdMenuPadre], [EstadoMenu]) VALUES (27, N'SEGURIDAD', N'MENU DE SEGURIDAD', N'SEGURIDAD', N'', -1, 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[Persona]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](100) NOT NULL,
	[ApePaterno] [varchar](100) NOT NULL,
	[ApeMaterno] [varchar](100) NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[DocumentoIdentidad] [varchar](10) NULL,
	[Estado] [bit] NOT NULL,
	[Correo] [varchar](100) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Persona] ON
INSERT [dbo].[Persona] ([IdPersona], [Nombres], [ApePaterno], [ApeMaterno], [FechaCreacion], [DocumentoIdentidad], [Estado], [Correo]) VALUES (1, N'pedro', N'dominguez', N'bruno', CAST(0x0000A14B00E57A28 AS DateTime), N'42567890', 1, N'pedro.dominguez@correo.com')
INSERT [dbo].[Persona] ([IdPersona], [Nombres], [ApePaterno], [ApeMaterno], [FechaCreacion], [DocumentoIdentidad], [Estado], [Correo]) VALUES (2, N'Juan', N'Perez', N'Cruz', CAST(0x0000A14B00E57A28 AS DateTime), N'42782511', 1, N'pedro.dominguez@correo.com')
INSERT [dbo].[Persona] ([IdPersona], [Nombres], [ApePaterno], [ApeMaterno], [FechaCreacion], [DocumentoIdentidad], [Estado], [Correo]) VALUES (3, N'ESTeBAN', N'ALVAREZ', N'TORRES', CAST(0x0000A14B00E57A28 AS DateTime), N'42789090', 1, N'pedro.dominguez@correo.com')
INSERT [dbo].[Persona] ([IdPersona], [Nombres], [ApePaterno], [ApeMaterno], [FechaCreacion], [DocumentoIdentidad], [Estado], [Correo]) VALUES (4, N'Arturo', N'Guerrero', N'Gutierrez', CAST(0x0000A14B00000000 AS DateTime), N'42009268', 1, N'arturo.guerrero.g@gmail.com')
INSERT [dbo].[Persona] ([IdPersona], [Nombres], [ApePaterno], [ApeMaterno], [FechaCreacion], [DocumentoIdentidad], [Estado], [Correo]) VALUES (5, N'roberto', N'gomez', N'bolaños', CAST(0x0000A14B00000000 AS DateTime), N'55555555', 1, N'aa.bb@gmail.com')
INSERT [dbo].[Persona] ([IdPersona], [Nombres], [ApePaterno], [ApeMaterno], [FechaCreacion], [DocumentoIdentidad], [Estado], [Correo]) VALUES (6, N'PRUEBA', N'APEPRUEBA', N'MATEPRUEBA', CAST(0x0000A23F00C76759 AS DateTime), N'42782511', 1, N'a ver si es ciero')
INSERT [dbo].[Persona] ([IdPersona], [Nombres], [ApePaterno], [ApeMaterno], [FechaCreacion], [DocumentoIdentidad], [Estado], [Correo]) VALUES (7, N'fsdfsd', N'fsdf', N'sdfsd', CAST(0x0000A23F00CF7C21 AS DateTime), N'42782510', 1, N'fsdfdsf@com.pe')
SET IDENTITY_INSERT [dbo].[Persona] OFF
/****** Object:  Table [dbo].[Ubigeo]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ubigeo](
	[CodUbigeo] [char](6) NOT NULL,
	[Pais] [varchar](100) NULL,
	[Departamento] [varchar](100) NULL,
	[Provincia] [varchar](100) NULL,
	[Distrito] [varchar](100) NULL,
	[Estado] [bit] NOT NULL,
	[codDepartamento] [char](2) NOT NULL,
	[codProvincia] [char](2) NOT NULL,
	[codDistrito] [char](2) NOT NULL,
 CONSTRAINT [PK_Ubigeo] PRIMARY KEY CLUSTERED 
(
	[CodUbigeo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010101', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'CHACHAPOYAS', 1, N'01', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010102', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'ASUNCION', 1, N'01', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010103', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'BALSAS', 1, N'01', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010104', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'CHETO', 1, N'01', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010105', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'CHILIQUIN', 1, N'01', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010106', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'CHUQUIBAMBA', 1, N'01', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010107', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'GRANADA', 1, N'01', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010108', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'HUANCAS', 1, N'01', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010109', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'LA JALCA', 1, N'01', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010110', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'LEIMEBAMBA', 1, N'01', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010111', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'LEVANTO', 1, N'01', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010112', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'MAGDALENA', 1, N'01', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010113', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'MARISCAL CASTILLA', 1, N'01', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010114', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'MOLINOPAMPA', 1, N'01', N'01', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010115', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'MONTEVIDEO', 1, N'01', N'01', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010116', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'OLLEROS', 1, N'01', N'01', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010117', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'QUINJALCA', 1, N'01', N'01', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010118', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'SAN FRANCISCO DE DAGUAS', 1, N'01', N'01', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010119', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'SAN ISIDRO DE MAINO', 1, N'01', N'01', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010120', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'SOLOCO', 1, N'01', N'01', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010121', N'PERU', N'AMAZONAS', N'CHACHAPOYAS', N'SONCHE', 1, N'01', N'01', N'21')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010201', N'PERU', N'AMAZONAS', N'BAGUA', N'LA PECA', 1, N'01', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010202', N'PERU', N'AMAZONAS', N'BAGUA', N'ARAMANGO', 1, N'01', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010203', N'PERU', N'AMAZONAS', N'BAGUA', N'COPALLIN', 1, N'01', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010204', N'PERU', N'AMAZONAS', N'BAGUA', N'EL PARCO', 1, N'01', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010205', N'PERU', N'AMAZONAS', N'BAGUA', N'BAGUA', 1, N'01', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010206', N'PERU', N'AMAZONAS', N'BAGUA', N'IMAZA', 1, N'01', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010301', N'PERU', N'AMAZONAS', N'BONGARA', N'JUMBILLA', 1, N'01', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010302', N'PERU', N'AMAZONAS', N'BONGARA', N'COROSHA', 1, N'01', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010303', N'PERU', N'AMAZONAS', N'BONGARA', N'CUISPES', 1, N'01', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010304', N'PERU', N'AMAZONAS', N'BONGARA', N'CHISQUILLA', 1, N'01', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010305', N'PERU', N'AMAZONAS', N'BONGARA', N'CHURUJA', 1, N'01', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010306', N'PERU', N'AMAZONAS', N'BONGARA', N'FLORIDA', 1, N'01', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010307', N'PERU', N'AMAZONAS', N'BONGARA', N'RECTA', 1, N'01', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010308', N'PERU', N'AMAZONAS', N'BONGARA', N'SAN CARLOS', 1, N'01', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010309', N'PERU', N'AMAZONAS', N'BONGARA', N'SHIPASBAMBA', 1, N'01', N'03', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010310', N'PERU', N'AMAZONAS', N'BONGARA', N'VALERA', 1, N'01', N'03', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010311', N'PERU', N'AMAZONAS', N'BONGARA', N'YAMBRASBAMBA', 1, N'01', N'03', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010312', N'PERU', N'AMAZONAS', N'BONGARA', N'JAZAN', 1, N'01', N'03', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010401', N'PERU', N'AMAZONAS', N'LUYA', N'LAMUD', 1, N'01', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010402', N'PERU', N'AMAZONAS', N'LUYA', N'CAMPORREDONDO', 1, N'01', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010403', N'PERU', N'AMAZONAS', N'LUYA', N'COCABAMBA', 1, N'01', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010404', N'PERU', N'AMAZONAS', N'LUYA', N'COLCAMAR', 1, N'01', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010405', N'PERU', N'AMAZONAS', N'LUYA', N'CONILA', 1, N'01', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010406', N'PERU', N'AMAZONAS', N'LUYA', N'INGUILPATA', 1, N'01', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010407', N'PERU', N'AMAZONAS', N'LUYA', N'LONGUITA', 1, N'01', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010408', N'PERU', N'AMAZONAS', N'LUYA', N'LONYA CHICO', 1, N'01', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010409', N'PERU', N'AMAZONAS', N'LUYA', N'LUYA', 1, N'01', N'04', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010410', N'PERU', N'AMAZONAS', N'LUYA', N'LUYA VIEJO', 1, N'01', N'04', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010411', N'PERU', N'AMAZONAS', N'LUYA', N'MARIA', 1, N'01', N'04', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010412', N'PERU', N'AMAZONAS', N'LUYA', N'OCALLI', 1, N'01', N'04', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010413', N'PERU', N'AMAZONAS', N'LUYA', N'OCUMAL', 1, N'01', N'04', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010414', N'PERU', N'AMAZONAS', N'LUYA', N'PISUQUIA', 1, N'01', N'04', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010415', N'PERU', N'AMAZONAS', N'LUYA', N'SAN CRISTOBAL', 1, N'01', N'04', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010416', N'PERU', N'AMAZONAS', N'LUYA', N'SAN FRANCISCO DE YESO', 1, N'01', N'04', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010417', N'PERU', N'AMAZONAS', N'LUYA', N'SAN JERONIMO', 1, N'01', N'04', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010418', N'PERU', N'AMAZONAS', N'LUYA', N'SAN JUAN DE LOPECANCHA', 1, N'01', N'04', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010419', N'PERU', N'AMAZONAS', N'LUYA', N'SANTA CATALINA', 1, N'01', N'04', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010420', N'PERU', N'AMAZONAS', N'LUYA', N'SANTO TOMAS', 1, N'01', N'04', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010421', N'PERU', N'AMAZONAS', N'LUYA', N'TINGO', 1, N'01', N'04', N'21')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010422', N'PERU', N'AMAZONAS', N'LUYA', N'TRITA', 1, N'01', N'04', N'22')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010423', N'PERU', N'AMAZONAS', N'LUYA', N'PROVIDENCIA', 1, N'01', N'04', N'23')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010501', N'PERU', N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'SAN NICOLAS', 1, N'01', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010502', N'PERU', N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'COCHAMAL', 1, N'01', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010503', N'PERU', N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'CHIRIMOTO', 1, N'01', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010504', N'PERU', N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'HUAMBO', 1, N'01', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010505', N'PERU', N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'LIMABAMBA', 1, N'01', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010506', N'PERU', N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'LONGAR', 1, N'01', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010507', N'PERU', N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'MILPUCC', 1, N'01', N'05', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010508', N'PERU', N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'MARISCAL BENAVIDES', 1, N'01', N'05', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010509', N'PERU', N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'OMIA', 1, N'01', N'05', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010510', N'PERU', N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'SANTA ROSA', 1, N'01', N'05', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010511', N'PERU', N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'TOTORA', 1, N'01', N'05', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010512', N'PERU', N'AMAZONAS', N'RODRIGUEZ DE MENDOZA', N'VISTA ALEGRE', 1, N'01', N'05', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010601', N'PERU', N'AMAZONAS', N'CONDORCANQUI', N'NIEVA', 1, N'01', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010602', N'PERU', N'AMAZONAS', N'CONDORCANQUI', N'RIO SANTIAGO', 1, N'01', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010603', N'PERU', N'AMAZONAS', N'CONDORCANQUI', N'EL CENEPA', 1, N'01', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010701', N'PERU', N'AMAZONAS', N'UTCUBAMBA', N'BAGUA GRANDE', 1, N'01', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010702', N'PERU', N'AMAZONAS', N'UTCUBAMBA', N'CAJARURO', 1, N'01', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010703', N'PERU', N'AMAZONAS', N'UTCUBAMBA', N'CUMBA', 1, N'01', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010704', N'PERU', N'AMAZONAS', N'UTCUBAMBA', N'EL MILAGRO', 1, N'01', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010705', N'PERU', N'AMAZONAS', N'UTCUBAMBA', N'JAMALCA', 1, N'01', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010706', N'PERU', N'AMAZONAS', N'UTCUBAMBA', N'LONYA GRANDE', 1, N'01', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'010707', N'PERU', N'AMAZONAS', N'UTCUBAMBA', N'YAMON', 1, N'01', N'07', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020101', N'PERU', N'ANCASH', N'HUARAZ', N'HUARAZ', 1, N'02', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020102', N'PERU', N'ANCASH', N'HUARAZ', N'INDEPENDENCIA', 1, N'02', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020103', N'PERU', N'ANCASH', N'HUARAZ', N'COCHABAMBA', 1, N'02', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020104', N'PERU', N'ANCASH', N'HUARAZ', N'COLCABAMBA', 1, N'02', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020105', N'PERU', N'ANCASH', N'HUARAZ', N'HUANCHAY', 1, N'02', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020106', N'PERU', N'ANCASH', N'HUARAZ', N'JANGAS', 1, N'02', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020107', N'PERU', N'ANCASH', N'HUARAZ', N'LA LIBERTAD', 1, N'02', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020108', N'PERU', N'ANCASH', N'HUARAZ', N'OLLEROS', 1, N'02', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020109', N'PERU', N'ANCASH', N'HUARAZ', N'PAMPAS GRANDE', 1, N'02', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020110', N'PERU', N'ANCASH', N'HUARAZ', N'PARIACOTO', 1, N'02', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020111', N'PERU', N'ANCASH', N'HUARAZ', N'PIRA', 1, N'02', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020112', N'PERU', N'ANCASH', N'HUARAZ', N'TARICA', 1, N'02', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020201', N'PERU', N'ANCASH', N'AIJA', N'AIJA', 1, N'02', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020203', N'PERU', N'ANCASH', N'AIJA', N'CORIS', 1, N'02', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020205', N'PERU', N'ANCASH', N'AIJA', N'HUACLLAN', 1, N'02', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020206', N'PERU', N'ANCASH', N'AIJA', N'LA MERCED', 1, N'02', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020208', N'PERU', N'ANCASH', N'AIJA', N'SUCCHA', 1, N'02', N'02', N'08')
GO
print 'Processed 100 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020301', N'PERU', N'ANCASH', N'BOLOGNESI', N'CHIQUIAN', 1, N'02', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020302', N'PERU', N'ANCASH', N'BOLOGNESI', N'ABELARDO PARDO LEZAMETA', 1, N'02', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020304', N'PERU', N'ANCASH', N'BOLOGNESI', N'AQUIA', 1, N'02', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020305', N'PERU', N'ANCASH', N'BOLOGNESI', N'CAJACAY', 1, N'02', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020310', N'PERU', N'ANCASH', N'BOLOGNESI', N'HUAYLLACAYAN', 1, N'02', N'03', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020311', N'PERU', N'ANCASH', N'BOLOGNESI', N'HUASTA', 1, N'02', N'03', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020313', N'PERU', N'ANCASH', N'BOLOGNESI', N'MANGAS', 1, N'02', N'03', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020315', N'PERU', N'ANCASH', N'BOLOGNESI', N'PACLLON', 1, N'02', N'03', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020317', N'PERU', N'ANCASH', N'BOLOGNESI', N'SAN MIGUEL DE CORPANQUI', 1, N'02', N'03', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020320', N'PERU', N'ANCASH', N'BOLOGNESI', N'TICLLOS', 1, N'02', N'03', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020321', N'PERU', N'ANCASH', N'BOLOGNESI', N'ANTONIO RAIMONDI', 1, N'02', N'03', N'21')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020322', N'PERU', N'ANCASH', N'BOLOGNESI', N'CANIS', 1, N'02', N'03', N'22')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020323', N'PERU', N'ANCASH', N'BOLOGNESI', N'COLQUIOC', 1, N'02', N'03', N'23')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020324', N'PERU', N'ANCASH', N'BOLOGNESI', N'LA PRIMAVERA', 1, N'02', N'03', N'24')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020325', N'PERU', N'ANCASH', N'BOLOGNESI', N'HUALLANCA', 1, N'02', N'03', N'25')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020401', N'PERU', N'ANCASH', N'CARHUAZ', N'CARHUAZ', 1, N'02', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020402', N'PERU', N'ANCASH', N'CARHUAZ', N'ACOPAMPA', 1, N'02', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020403', N'PERU', N'ANCASH', N'CARHUAZ', N'AMASHCA', 1, N'02', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020404', N'PERU', N'ANCASH', N'CARHUAZ', N'ANTA', 1, N'02', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020405', N'PERU', N'ANCASH', N'CARHUAZ', N'ATAQUERO', 1, N'02', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020406', N'PERU', N'ANCASH', N'CARHUAZ', N'MARCARA', 1, N'02', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020407', N'PERU', N'ANCASH', N'CARHUAZ', N'PARIAHUANCA', 1, N'02', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020408', N'PERU', N'ANCASH', N'CARHUAZ', N'SAN MIGUEL DE ACO', 1, N'02', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020409', N'PERU', N'ANCASH', N'CARHUAZ', N'SHILLA', 1, N'02', N'04', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020410', N'PERU', N'ANCASH', N'CARHUAZ', N'TINCO', 1, N'02', N'04', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020411', N'PERU', N'ANCASH', N'CARHUAZ', N'YUNGAR', 1, N'02', N'04', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020501', N'PERU', N'ANCASH', N'CASMA', N'CASMA', 1, N'02', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020502', N'PERU', N'ANCASH', N'CASMA', N'BUENA VISTA ALTA', 1, N'02', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020503', N'PERU', N'ANCASH', N'CASMA', N'COMANDANTE NOEL', 1, N'02', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020505', N'PERU', N'ANCASH', N'CASMA', N'YAUTAN', 1, N'02', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020601', N'PERU', N'ANCASH', N'CORONGO', N'CORONGO', 1, N'02', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020602', N'PERU', N'ANCASH', N'CORONGO', N'ACO', 1, N'02', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020603', N'PERU', N'ANCASH', N'CORONGO', N'BAMBAS', 1, N'02', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020604', N'PERU', N'ANCASH', N'CORONGO', N'CUSCA', 1, N'02', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020605', N'PERU', N'ANCASH', N'CORONGO', N'LA PAMPA', 1, N'02', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020606', N'PERU', N'ANCASH', N'CORONGO', N'YANAC', 1, N'02', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020607', N'PERU', N'ANCASH', N'CORONGO', N'YUPAN', 1, N'02', N'06', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020701', N'PERU', N'ANCASH', N'HUAYLAS', N'CARAZ', 1, N'02', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020702', N'PERU', N'ANCASH', N'HUAYLAS', N'HUALLANCA', 1, N'02', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020703', N'PERU', N'ANCASH', N'HUAYLAS', N'HUATA', 1, N'02', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020704', N'PERU', N'ANCASH', N'HUAYLAS', N'HUAYLAS', 1, N'02', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020705', N'PERU', N'ANCASH', N'HUAYLAS', N'MATO', 1, N'02', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020706', N'PERU', N'ANCASH', N'HUAYLAS', N'PAMPAROMAS', 1, N'02', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020707', N'PERU', N'ANCASH', N'HUAYLAS', N'PUEBLO LIBRE', 1, N'02', N'07', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020708', N'PERU', N'ANCASH', N'HUAYLAS', N'SANTA CRUZ', 1, N'02', N'07', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020709', N'PERU', N'ANCASH', N'HUAYLAS', N'YURACMARCA', 1, N'02', N'07', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020710', N'PERU', N'ANCASH', N'HUAYLAS', N'SANTO TORIBIO', 1, N'02', N'07', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020801', N'PERU', N'ANCASH', N'HUARI', N'HUARI', 1, N'02', N'08', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020802', N'PERU', N'ANCASH', N'HUARI', N'CAJAY', 1, N'02', N'08', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020803', N'PERU', N'ANCASH', N'HUARI', N'CHAVIN DE HUANTAR', 1, N'02', N'08', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020804', N'PERU', N'ANCASH', N'HUARI', N'HUACACHI', 1, N'02', N'08', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020805', N'PERU', N'ANCASH', N'HUARI', N'HUACHIS', 1, N'02', N'08', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020806', N'PERU', N'ANCASH', N'HUARI', N'HUACCHIS', 1, N'02', N'08', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020807', N'PERU', N'ANCASH', N'HUARI', N'HUANTAR', 1, N'02', N'08', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020808', N'PERU', N'ANCASH', N'HUARI', N'MASIN', 1, N'02', N'08', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020809', N'PERU', N'ANCASH', N'HUARI', N'PAUCAS', 1, N'02', N'08', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020810', N'PERU', N'ANCASH', N'HUARI', N'PONTO', 1, N'02', N'08', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020811', N'PERU', N'ANCASH', N'HUARI', N'RAHUAPAMPA', 1, N'02', N'08', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020812', N'PERU', N'ANCASH', N'HUARI', N'RAPAYAN', 1, N'02', N'08', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020813', N'PERU', N'ANCASH', N'HUARI', N'SAN MARCOS', 1, N'02', N'08', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020814', N'PERU', N'ANCASH', N'HUARI', N'SAN PEDRO DE CHANA', 1, N'02', N'08', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020815', N'PERU', N'ANCASH', N'HUARI', N'UCO', 1, N'02', N'08', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020816', N'PERU', N'ANCASH', N'HUARI', N'ANRA', 1, N'02', N'08', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020901', N'PERU', N'ANCASH', N'MARISCAL LUZURIAGA', N'PISCOBAMBA', 1, N'02', N'09', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020902', N'PERU', N'ANCASH', N'MARISCAL LUZURIAGA', N'CASCA', 1, N'02', N'09', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020903', N'PERU', N'ANCASH', N'MARISCAL LUZURIAGA', N'LUCMA', 1, N'02', N'09', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020904', N'PERU', N'ANCASH', N'MARISCAL LUZURIAGA', N'FIDEL OLIVAS ESCUDERO', 1, N'02', N'09', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020905', N'PERU', N'ANCASH', N'MARISCAL LUZURIAGA', N'LLAMA', 1, N'02', N'09', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020906', N'PERU', N'ANCASH', N'MARISCAL LUZURIAGA', N'LLUMPA', 1, N'02', N'09', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020907', N'PERU', N'ANCASH', N'MARISCAL LUZURIAGA', N'MUSGA', 1, N'02', N'09', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'020908', N'PERU', N'ANCASH', N'MARISCAL LUZURIAGA', N'ELEAZAR GUZMAN BARRON', 1, N'02', N'09', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021001', N'PERU', N'ANCASH', N'PALLASCA', N'CABANA', 1, N'02', N'10', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021002', N'PERU', N'ANCASH', N'PALLASCA', N'BOLOGNESI', 1, N'02', N'10', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021003', N'PERU', N'ANCASH', N'PALLASCA', N'CONCHUCOS', 1, N'02', N'10', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021004', N'PERU', N'ANCASH', N'PALLASCA', N'HUACASCHUQUE', 1, N'02', N'10', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021005', N'PERU', N'ANCASH', N'PALLASCA', N'HUANDOVAL', 1, N'02', N'10', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021006', N'PERU', N'ANCASH', N'PALLASCA', N'LACABAMBA', 1, N'02', N'10', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021007', N'PERU', N'ANCASH', N'PALLASCA', N'LLAPO', 1, N'02', N'10', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021008', N'PERU', N'ANCASH', N'PALLASCA', N'PALLASCA', 1, N'02', N'10', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021009', N'PERU', N'ANCASH', N'PALLASCA', N'PAMPAS', 1, N'02', N'10', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021010', N'PERU', N'ANCASH', N'PALLASCA', N'SANTA ROSA', 1, N'02', N'10', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021011', N'PERU', N'ANCASH', N'PALLASCA', N'TAUCA', 1, N'02', N'10', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021101', N'PERU', N'ANCASH', N'POMABAMBA', N'POMABAMBA', 1, N'02', N'11', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021102', N'PERU', N'ANCASH', N'POMABAMBA', N'HUAYLLAN', 1, N'02', N'11', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021103', N'PERU', N'ANCASH', N'POMABAMBA', N'PAROBAMBA', 1, N'02', N'11', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021104', N'PERU', N'ANCASH', N'POMABAMBA', N'QUINUABAMBA', 1, N'02', N'11', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021201', N'PERU', N'ANCASH', N'RECUAY', N'RECUAY', 1, N'02', N'12', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021202', N'PERU', N'ANCASH', N'RECUAY', N'COTAPARACO', 1, N'02', N'12', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021203', N'PERU', N'ANCASH', N'RECUAY', N'HUAYLLAPAMPA', 1, N'02', N'12', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021204', N'PERU', N'ANCASH', N'RECUAY', N'MARCA', 1, N'02', N'12', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021205', N'PERU', N'ANCASH', N'RECUAY', N'PAMPAS CHICO', 1, N'02', N'12', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021206', N'PERU', N'ANCASH', N'RECUAY', N'PARARIN', 1, N'02', N'12', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021207', N'PERU', N'ANCASH', N'RECUAY', N'TAPACOCHA', 1, N'02', N'12', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021208', N'PERU', N'ANCASH', N'RECUAY', N'TICAPAMPA', 1, N'02', N'12', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021209', N'PERU', N'ANCASH', N'RECUAY', N'LLACLLIN', 1, N'02', N'12', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021210', N'PERU', N'ANCASH', N'RECUAY', N'CATAC', 1, N'02', N'12', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021301', N'PERU', N'ANCASH', N'SANTA', N'CHIMBOTE', 1, N'02', N'13', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021302', N'PERU', N'ANCASH', N'SANTA', N'CACERES DEL PERU', 1, N'02', N'13', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021303', N'PERU', N'ANCASH', N'SANTA', N'MACATE', 1, N'02', N'13', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021304', N'PERU', N'ANCASH', N'SANTA', N'MORO', 1, N'02', N'13', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021305', N'PERU', N'ANCASH', N'SANTA', N'NEPEÑA', 1, N'02', N'13', N'05')
GO
print 'Processed 200 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021306', N'PERU', N'ANCASH', N'SANTA', N'SAMANCO', 1, N'02', N'13', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021307', N'PERU', N'ANCASH', N'SANTA', N'SANTA', 1, N'02', N'13', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021308', N'PERU', N'ANCASH', N'SANTA', N'COISHCO', 1, N'02', N'13', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021309', N'PERU', N'ANCASH', N'SANTA', N'NUEVO CHIMBOTE', 1, N'02', N'13', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021401', N'PERU', N'ANCASH', N'SIHUAS', N'SIHUAS', 1, N'02', N'14', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021402', N'PERU', N'ANCASH', N'SIHUAS', N'ALFONSO UGARTE', 1, N'02', N'14', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021403', N'PERU', N'ANCASH', N'SIHUAS', N'CHINGALPO', 1, N'02', N'14', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021404', N'PERU', N'ANCASH', N'SIHUAS', N'HUAYLLABAMBA', 1, N'02', N'14', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021405', N'PERU', N'ANCASH', N'SIHUAS', N'QUICHES', 1, N'02', N'14', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021406', N'PERU', N'ANCASH', N'SIHUAS', N'SICSIBAMBA', 1, N'02', N'14', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021407', N'PERU', N'ANCASH', N'SIHUAS', N'ACOBAMBA', 1, N'02', N'14', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021408', N'PERU', N'ANCASH', N'SIHUAS', N'CASHAPAMPA', 1, N'02', N'14', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021409', N'PERU', N'ANCASH', N'SIHUAS', N'RAGASH', 1, N'02', N'14', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021410', N'PERU', N'ANCASH', N'SIHUAS', N'SAN JUAN', 1, N'02', N'14', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021501', N'PERU', N'ANCASH', N'YUNGAY', N'YUNGAY', 1, N'02', N'15', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021502', N'PERU', N'ANCASH', N'YUNGAY', N'CASCAPARA', 1, N'02', N'15', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021503', N'PERU', N'ANCASH', N'YUNGAY', N'MANCOS', 1, N'02', N'15', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021504', N'PERU', N'ANCASH', N'YUNGAY', N'MATACOTO', 1, N'02', N'15', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021505', N'PERU', N'ANCASH', N'YUNGAY', N'QUILLO', 1, N'02', N'15', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021506', N'PERU', N'ANCASH', N'YUNGAY', N'RANRAHIRCA', 1, N'02', N'15', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021507', N'PERU', N'ANCASH', N'YUNGAY', N'SHUPLUY', 1, N'02', N'15', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021508', N'PERU', N'ANCASH', N'YUNGAY', N'YANAMA', 1, N'02', N'15', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021601', N'PERU', N'ANCASH', N'ANTONIO RAIMONDI', N'LLAMELLIN', 1, N'02', N'16', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021602', N'PERU', N'ANCASH', N'ANTONIO RAIMONDI', N'ACZO', 1, N'02', N'16', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021603', N'PERU', N'ANCASH', N'ANTONIO RAIMONDI', N'CHACCHO', 1, N'02', N'16', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021604', N'PERU', N'ANCASH', N'ANTONIO RAIMONDI', N'CHINGAS', 1, N'02', N'16', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021605', N'PERU', N'ANCASH', N'ANTONIO RAIMONDI', N'MIRGAS', 1, N'02', N'16', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021606', N'PERU', N'ANCASH', N'ANTONIO RAIMONDI', N'SAN JUAN DE RONTOY', 1, N'02', N'16', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021701', N'PERU', N'ANCASH', N'CARLOS FERMIN FITZCARRALD', N'SAN LUIS', 1, N'02', N'17', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021702', N'PERU', N'ANCASH', N'CARLOS FERMIN FITZCARRALD', N'YAUYA', 1, N'02', N'17', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021703', N'PERU', N'ANCASH', N'CARLOS FERMIN FITZCARRALD', N'SAN NICOLAS', 1, N'02', N'17', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021801', N'PERU', N'ANCASH', N'ASUNCION', N'CHACAS', 1, N'02', N'18', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021802', N'PERU', N'ANCASH', N'ASUNCION', N'ACOCHACA', 1, N'02', N'18', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021901', N'PERU', N'ANCASH', N'HUARMEY', N'HUARMEY', 1, N'02', N'19', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021902', N'PERU', N'ANCASH', N'HUARMEY', N'COCHAPETI', 1, N'02', N'19', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021903', N'PERU', N'ANCASH', N'HUARMEY', N'HUAYAN', 1, N'02', N'19', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021904', N'PERU', N'ANCASH', N'HUARMEY', N'MALVAS', 1, N'02', N'19', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'021905', N'PERU', N'ANCASH', N'HUARMEY', N'CULEBRAS', 1, N'02', N'19', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'022001', N'PERU', N'ANCASH', N'OCROS', N'ACAS', 1, N'02', N'20', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'022002', N'PERU', N'ANCASH', N'OCROS', N'CAJAMARQUILLA', 1, N'02', N'20', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'022003', N'PERU', N'ANCASH', N'OCROS', N'CARHUAPAMPA', 1, N'02', N'20', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'022004', N'PERU', N'ANCASH', N'OCROS', N'COCHAS', 1, N'02', N'20', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'022005', N'PERU', N'ANCASH', N'OCROS', N'CONGAS', 1, N'02', N'20', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'022006', N'PERU', N'ANCASH', N'OCROS', N'LLIPA', 1, N'02', N'20', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'022007', N'PERU', N'ANCASH', N'OCROS', N'OCROS', 1, N'02', N'20', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'022008', N'PERU', N'ANCASH', N'OCROS', N'SAN CRISTOBAL DE RAJAN', 1, N'02', N'20', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'022009', N'PERU', N'ANCASH', N'OCROS', N'SAN PEDRO', 1, N'02', N'20', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'022010', N'PERU', N'ANCASH', N'OCROS', N'SANTIAGO DE CHILCAS', 1, N'02', N'20', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030101', N'PERU', N'APURIMAC', N'ABANCAY', N'ABANCAY', 1, N'03', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030102', N'PERU', N'APURIMAC', N'ABANCAY', N'CIRCA', 1, N'03', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030103', N'PERU', N'APURIMAC', N'ABANCAY', N'CURAHUASI', 1, N'03', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030104', N'PERU', N'APURIMAC', N'ABANCAY', N'CHACOCHE', 1, N'03', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030105', N'PERU', N'APURIMAC', N'ABANCAY', N'HUANIPACA', 1, N'03', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030106', N'PERU', N'APURIMAC', N'ABANCAY', N'LAMBRAMA', 1, N'03', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030107', N'PERU', N'APURIMAC', N'ABANCAY', N'PICHIRHUA', 1, N'03', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030108', N'PERU', N'APURIMAC', N'ABANCAY', N'SAN PEDRO DE CACHORA', 1, N'03', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030109', N'PERU', N'APURIMAC', N'ABANCAY', N'TAMBURCO', 1, N'03', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030201', N'PERU', N'APURIMAC', N'AYMARAES', N'CHALHUANCA', 1, N'03', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030202', N'PERU', N'APURIMAC', N'AYMARAES', N'CAPAYA', 1, N'03', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030203', N'PERU', N'APURIMAC', N'AYMARAES', N'CARAYBAMBA', 1, N'03', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030204', N'PERU', N'APURIMAC', N'AYMARAES', N'COLCABAMBA', 1, N'03', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030205', N'PERU', N'APURIMAC', N'AYMARAES', N'COTARUSE', 1, N'03', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030206', N'PERU', N'APURIMAC', N'AYMARAES', N'CHAPIMARCA', 1, N'03', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030207', N'PERU', N'APURIMAC', N'AYMARAES', N'HUAYLLO', 1, N'03', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030208', N'PERU', N'APURIMAC', N'AYMARAES', N'LUCRE', 1, N'03', N'02', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030209', N'PERU', N'APURIMAC', N'AYMARAES', N'POCOHUANCA', 1, N'03', N'02', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030210', N'PERU', N'APURIMAC', N'AYMARAES', N'SAÑAYCA', 1, N'03', N'02', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030211', N'PERU', N'APURIMAC', N'AYMARAES', N'SORAYA', 1, N'03', N'02', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030212', N'PERU', N'APURIMAC', N'AYMARAES', N'TAPAIRIHUA', 1, N'03', N'02', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030213', N'PERU', N'APURIMAC', N'AYMARAES', N'TINTAY', 1, N'03', N'02', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030214', N'PERU', N'APURIMAC', N'AYMARAES', N'TORAYA', 1, N'03', N'02', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030215', N'PERU', N'APURIMAC', N'AYMARAES', N'YANACA', 1, N'03', N'02', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030216', N'PERU', N'APURIMAC', N'AYMARAES', N'SAN JUAN DE CHACÑA', 1, N'03', N'02', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030217', N'PERU', N'APURIMAC', N'AYMARAES', N'JUSTO APU SAHUARAURA', 1, N'03', N'02', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030301', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'ANDAHUAYLAS', 1, N'03', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030302', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'ANDARAPA', 1, N'03', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030303', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'CHIARA', 1, N'03', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030304', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'HUANCARAMA', 1, N'03', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030305', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'HUANCARAY', 1, N'03', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030306', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'KISHUARA', 1, N'03', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030307', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'PACOBAMBA', 1, N'03', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030308', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'PAMPACHIRI', 1, N'03', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030309', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'SAN ANTONIO DE CACHI', 1, N'03', N'03', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030310', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'SAN JERONIMO', 1, N'03', N'03', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030311', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'TALAVERA', 1, N'03', N'03', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030312', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'TURPO', 1, N'03', N'03', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030313', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'PACUCHA', 1, N'03', N'03', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030314', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'POMACOCHA', 1, N'03', N'03', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030315', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'SANTA MARIA DE CHICMO', 1, N'03', N'03', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030316', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'TUMAY HUARACA', 1, N'03', N'03', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030317', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'HUAYANA', 1, N'03', N'03', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030318', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'SAN MIGUEL DE CHACCRAMPA', 1, N'03', N'03', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030319', N'PERU', N'APURIMAC', N'ANDAHUAYLAS', N'KAQUIABAMBA', 1, N'03', N'03', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030401', N'PERU', N'APURIMAC', N'ANTABAMBA', N'ANTABAMBA', 1, N'03', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030402', N'PERU', N'APURIMAC', N'ANTABAMBA', N'EL ORO', 1, N'03', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030403', N'PERU', N'APURIMAC', N'ANTABAMBA', N'HUAQUIRCA', 1, N'03', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030404', N'PERU', N'APURIMAC', N'ANTABAMBA', N'JUAN ESPINOZA MEDRANO', 1, N'03', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030405', N'PERU', N'APURIMAC', N'ANTABAMBA', N'OROPESA', 1, N'03', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030406', N'PERU', N'APURIMAC', N'ANTABAMBA', N'PACHACONAS', 1, N'03', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030407', N'PERU', N'APURIMAC', N'ANTABAMBA', N'SABAINO', 1, N'03', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030501', N'PERU', N'APURIMAC', N'COTABAMBAS', N'TAMBOBAMBA', 1, N'03', N'05', N'01')
GO
print 'Processed 300 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030502', N'PERU', N'APURIMAC', N'COTABAMBAS', N'COYLLURQUI', 1, N'03', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030503', N'PERU', N'APURIMAC', N'COTABAMBAS', N'COTABAMBAS', 1, N'03', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030504', N'PERU', N'APURIMAC', N'COTABAMBAS', N'HAQUIRA', 1, N'03', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030505', N'PERU', N'APURIMAC', N'COTABAMBAS', N'MARA', 1, N'03', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030506', N'PERU', N'APURIMAC', N'COTABAMBAS', N'CHALLHUAHUACHO', 1, N'03', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030601', N'PERU', N'APURIMAC', N'GRAU', N'CHUQUIBAMBILLA', 1, N'03', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030602', N'PERU', N'APURIMAC', N'GRAU', N'CURPAHUASI', 1, N'03', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030603', N'PERU', N'APURIMAC', N'GRAU', N'HUAILLATI', 1, N'03', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030604', N'PERU', N'APURIMAC', N'GRAU', N'MAMARA', 1, N'03', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030605', N'PERU', N'APURIMAC', N'GRAU', N'MARISCAL GAMARRA', 1, N'03', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030606', N'PERU', N'APURIMAC', N'GRAU', N'MICAELA BASTIDAS', 1, N'03', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030607', N'PERU', N'APURIMAC', N'GRAU', N'PROGRESO', 1, N'03', N'06', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030608', N'PERU', N'APURIMAC', N'GRAU', N'PATAYPAMPA', 1, N'03', N'06', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030609', N'PERU', N'APURIMAC', N'GRAU', N'SAN ANTONIO', 1, N'03', N'06', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030610', N'PERU', N'APURIMAC', N'GRAU', N'TURPAY', 1, N'03', N'06', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030611', N'PERU', N'APURIMAC', N'GRAU', N'VILCABAMBA', 1, N'03', N'06', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030612', N'PERU', N'APURIMAC', N'GRAU', N'VIRUNDO', 1, N'03', N'06', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030613', N'PERU', N'APURIMAC', N'GRAU', N'SANTA ROSA', 1, N'03', N'06', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030614', N'PERU', N'APURIMAC', N'GRAU', N'CURASCO', 1, N'03', N'06', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030701', N'PERU', N'APURIMAC', N'CHINCHEROS', N'CHINCHEROS', 1, N'03', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030702', N'PERU', N'APURIMAC', N'CHINCHEROS', N'ONGOY', 1, N'03', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030703', N'PERU', N'APURIMAC', N'CHINCHEROS', N'OCOBAMBA', 1, N'03', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030704', N'PERU', N'APURIMAC', N'CHINCHEROS', N'COCHARCAS', 1, N'03', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030705', N'PERU', N'APURIMAC', N'CHINCHEROS', N'ANCO HUALLO', 1, N'03', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030706', N'PERU', N'APURIMAC', N'CHINCHEROS', N'HUACCANA', 1, N'03', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030707', N'PERU', N'APURIMAC', N'CHINCHEROS', N'URANMARCA', 1, N'03', N'07', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'030708', N'PERU', N'APURIMAC', N'CHINCHEROS', N'RANRACANCHA', 1, N'03', N'07', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040101', N'PERU', N'AREQUIPA', N'AREQUIPA', N'AREQUIPA', 1, N'04', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040102', N'PERU', N'AREQUIPA', N'AREQUIPA', N'CAYMA', 1, N'04', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040103', N'PERU', N'AREQUIPA', N'AREQUIPA', N'CERRO COLORADO', 1, N'04', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040104', N'PERU', N'AREQUIPA', N'AREQUIPA', N'CHARACATO', 1, N'04', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040105', N'PERU', N'AREQUIPA', N'AREQUIPA', N'CHIGUATA', 1, N'04', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040106', N'PERU', N'AREQUIPA', N'AREQUIPA', N'LA JOYA', 1, N'04', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040107', N'PERU', N'AREQUIPA', N'AREQUIPA', N'MIRAFLORES', 1, N'04', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040108', N'PERU', N'AREQUIPA', N'AREQUIPA', N'MOLLEBAYA', 1, N'04', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040109', N'PERU', N'AREQUIPA', N'AREQUIPA', N'PAUCARPATA', 1, N'04', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040110', N'PERU', N'AREQUIPA', N'AREQUIPA', N'POCSI', 1, N'04', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040111', N'PERU', N'AREQUIPA', N'AREQUIPA', N'POLOBAYA', 1, N'04', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040112', N'PERU', N'AREQUIPA', N'AREQUIPA', N'QUEQUEÑA', 1, N'04', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040113', N'PERU', N'AREQUIPA', N'AREQUIPA', N'SABANDIA', 1, N'04', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040114', N'PERU', N'AREQUIPA', N'AREQUIPA', N'SACHACA', 1, N'04', N'01', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040115', N'PERU', N'AREQUIPA', N'AREQUIPA', N'SAN JUAN DE SIGUAS', 1, N'04', N'01', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040116', N'PERU', N'AREQUIPA', N'AREQUIPA', N'SAN JUAN DE TARUCANI', 1, N'04', N'01', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040117', N'PERU', N'AREQUIPA', N'AREQUIPA', N'SANTA ISABEL DE SIGUAS', 1, N'04', N'01', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040118', N'PERU', N'AREQUIPA', N'AREQUIPA', N'SANTA RITA DE SIHUAS', 1, N'04', N'01', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040119', N'PERU', N'AREQUIPA', N'AREQUIPA', N'SOCABAYA', 1, N'04', N'01', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040120', N'PERU', N'AREQUIPA', N'AREQUIPA', N'TIABAYA', 1, N'04', N'01', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040121', N'PERU', N'AREQUIPA', N'AREQUIPA', N'UCHUMAYO', 1, N'04', N'01', N'21')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040122', N'PERU', N'AREQUIPA', N'AREQUIPA', N'VITOR', 1, N'04', N'01', N'22')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040123', N'PERU', N'AREQUIPA', N'AREQUIPA', N'YANAHUARA', 1, N'04', N'01', N'23')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040124', N'PERU', N'AREQUIPA', N'AREQUIPA', N'YARABAMBA', 1, N'04', N'01', N'24')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040125', N'PERU', N'AREQUIPA', N'AREQUIPA', N'YURA', 1, N'04', N'01', N'25')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040126', N'PERU', N'AREQUIPA', N'AREQUIPA', N'MARIANO MELGAR', 1, N'04', N'01', N'26')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040127', N'PERU', N'AREQUIPA', N'AREQUIPA', N'JACOBO HUNTER', 1, N'04', N'01', N'27')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040128', N'PERU', N'AREQUIPA', N'AREQUIPA', N'ALTO SELVA ALEGRE', 1, N'04', N'01', N'28')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040129', N'PERU', N'AREQUIPA', N'AREQUIPA', N'JOSE LUIS BUSTAMANTE Y RIVERO', 1, N'04', N'01', N'29')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040201', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'CHIVAY', 1, N'04', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040202', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'ACHOMA', 1, N'04', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040203', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'CABANACONDE', 1, N'04', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040204', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'CAYLLOMA', 1, N'04', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040205', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'CALLALLI', 1, N'04', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040206', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'COPORAQUE', 1, N'04', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040207', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'HUAMBO', 1, N'04', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040208', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'HUANCA', 1, N'04', N'02', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040209', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'ICHUPAMPA', 1, N'04', N'02', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040210', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'LARI', 1, N'04', N'02', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040211', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'LLUTA', 1, N'04', N'02', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040212', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'MACA', 1, N'04', N'02', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040213', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'MADRIGAL', 1, N'04', N'02', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040214', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'SAN ANTONIO DE CHUCA', 1, N'04', N'02', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040215', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'SIBAYO', 1, N'04', N'02', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040216', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'TAPAY', 1, N'04', N'02', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040217', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'TISCO', 1, N'04', N'02', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040218', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'TUTI', 1, N'04', N'02', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040219', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'YANQUE', 1, N'04', N'02', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040220', N'PERU', N'AREQUIPA', N'CAYLLOMA', N'MAJES', 1, N'04', N'02', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040301', N'PERU', N'AREQUIPA', N'CAMANA', N'CAMANA', 1, N'04', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040302', N'PERU', N'AREQUIPA', N'CAMANA', N'JOSE MARIA QUIMPER', 1, N'04', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040303', N'PERU', N'AREQUIPA', N'CAMANA', N'MARIANO NICOLAS VALCARCEL', 1, N'04', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040304', N'PERU', N'AREQUIPA', N'CAMANA', N'MARISCAL CACERES', 1, N'04', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040305', N'PERU', N'AREQUIPA', N'CAMANA', N'NICOLAS DE PIEROLA', 1, N'04', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040306', N'PERU', N'AREQUIPA', N'CAMANA', N'OCOÑA', 1, N'04', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040307', N'PERU', N'AREQUIPA', N'CAMANA', N'QUILCA', 1, N'04', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040308', N'PERU', N'AREQUIPA', N'CAMANA', N'SAMUEL PASTOR', 1, N'04', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040401', N'PERU', N'AREQUIPA', N'CARAVELI', N'CARAVELI', 1, N'04', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040402', N'PERU', N'AREQUIPA', N'CARAVELI', N'ACARI', 1, N'04', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040403', N'PERU', N'AREQUIPA', N'CARAVELI', N'ATICO', 1, N'04', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040404', N'PERU', N'AREQUIPA', N'CARAVELI', N'ATIQUIPA', 1, N'04', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040405', N'PERU', N'AREQUIPA', N'CARAVELI', N'BELLA UNION', 1, N'04', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040406', N'PERU', N'AREQUIPA', N'CARAVELI', N'CAHUACHO', 1, N'04', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040407', N'PERU', N'AREQUIPA', N'CARAVELI', N'CHALA', 1, N'04', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040408', N'PERU', N'AREQUIPA', N'CARAVELI', N'CHAPARRA', 1, N'04', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040409', N'PERU', N'AREQUIPA', N'CARAVELI', N'HUANUHUANU', 1, N'04', N'04', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040410', N'PERU', N'AREQUIPA', N'CARAVELI', N'JAQUI', 1, N'04', N'04', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040411', N'PERU', N'AREQUIPA', N'CARAVELI', N'LOMAS', 1, N'04', N'04', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040412', N'PERU', N'AREQUIPA', N'CARAVELI', N'QUICACHA', 1, N'04', N'04', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040413', N'PERU', N'AREQUIPA', N'CARAVELI', N'YAUCA', 1, N'04', N'04', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040501', N'PERU', N'AREQUIPA', N'CASTILLA', N'APLAO', 1, N'04', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040502', N'PERU', N'AREQUIPA', N'CASTILLA', N'ANDAGUA', 1, N'04', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040503', N'PERU', N'AREQUIPA', N'CASTILLA', N'AYO', 1, N'04', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040504', N'PERU', N'AREQUIPA', N'CASTILLA', N'CHACHAS', 1, N'04', N'05', N'04')
GO
print 'Processed 400 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040505', N'PERU', N'AREQUIPA', N'CASTILLA', N'CHILCAYMARCA', 1, N'04', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040506', N'PERU', N'AREQUIPA', N'CASTILLA', N'CHOCO', 1, N'04', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040507', N'PERU', N'AREQUIPA', N'CASTILLA', N'HUANCARQUI', 1, N'04', N'05', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040508', N'PERU', N'AREQUIPA', N'CASTILLA', N'MACHAGUAY', 1, N'04', N'05', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040509', N'PERU', N'AREQUIPA', N'CASTILLA', N'ORCOPAMPA', 1, N'04', N'05', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040510', N'PERU', N'AREQUIPA', N'CASTILLA', N'PAMPACOLCA', 1, N'04', N'05', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040511', N'PERU', N'AREQUIPA', N'CASTILLA', N'TIPAN', 1, N'04', N'05', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040512', N'PERU', N'AREQUIPA', N'CASTILLA', N'URACA', 1, N'04', N'05', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040513', N'PERU', N'AREQUIPA', N'CASTILLA', N'UÑON', 1, N'04', N'05', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040514', N'PERU', N'AREQUIPA', N'CASTILLA', N'VIRACO', 1, N'04', N'05', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040601', N'PERU', N'AREQUIPA', N'CONDESUYOS', N'CHUQUIBAMBA', 1, N'04', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040602', N'PERU', N'AREQUIPA', N'CONDESUYOS', N'ANDARAY', 1, N'04', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040603', N'PERU', N'AREQUIPA', N'CONDESUYOS', N'CAYARANI', 1, N'04', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040604', N'PERU', N'AREQUIPA', N'CONDESUYOS', N'CHICHAS', 1, N'04', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040605', N'PERU', N'AREQUIPA', N'CONDESUYOS', N'IRAY', 1, N'04', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040606', N'PERU', N'AREQUIPA', N'CONDESUYOS', N'SALAMANCA', 1, N'04', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040607', N'PERU', N'AREQUIPA', N'CONDESUYOS', N'YANAQUIHUA', 1, N'04', N'06', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040608', N'PERU', N'AREQUIPA', N'CONDESUYOS', N'RIO GRANDE', 1, N'04', N'06', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040701', N'PERU', N'AREQUIPA', N'ISLAY', N'MOLLENDO', 1, N'04', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040702', N'PERU', N'AREQUIPA', N'ISLAY', N'COCACHACRA', 1, N'04', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040703', N'PERU', N'AREQUIPA', N'ISLAY', N'DEAN VALDIVIA', 1, N'04', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040704', N'PERU', N'AREQUIPA', N'ISLAY', N'ISLAY', 1, N'04', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040705', N'PERU', N'AREQUIPA', N'ISLAY', N'MEJIA', 1, N'04', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040706', N'PERU', N'AREQUIPA', N'ISLAY', N'PUNTA DE BOMBON', 1, N'04', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040801', N'PERU', N'AREQUIPA', N'LA UNION', N'COTAHUASI', 1, N'04', N'08', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040802', N'PERU', N'AREQUIPA', N'LA UNION', N'ALCA', 1, N'04', N'08', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040803', N'PERU', N'AREQUIPA', N'LA UNION', N'CHARCANA', 1, N'04', N'08', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040804', N'PERU', N'AREQUIPA', N'LA UNION', N'HUAYNACOTAS', 1, N'04', N'08', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040805', N'PERU', N'AREQUIPA', N'LA UNION', N'PAMPAMARCA', 1, N'04', N'08', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040806', N'PERU', N'AREQUIPA', N'LA UNION', N'PUYCA', 1, N'04', N'08', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040807', N'PERU', N'AREQUIPA', N'LA UNION', N'QUECHUALLA', 1, N'04', N'08', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040808', N'PERU', N'AREQUIPA', N'LA UNION', N'SAYLA', 1, N'04', N'08', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040809', N'PERU', N'AREQUIPA', N'LA UNION', N'TAURIA', 1, N'04', N'08', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040810', N'PERU', N'AREQUIPA', N'LA UNION', N'TOMEPAMPA', 1, N'04', N'08', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'040811', N'PERU', N'AREQUIPA', N'LA UNION', N'TORO', 1, N'04', N'08', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050101', N'PERU', N'AYACUCHO', N'HUAMANGA', N'AYACUCHO', 1, N'05', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050102', N'PERU', N'AYACUCHO', N'HUAMANGA', N'ACOS VINCHOS', 1, N'05', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050103', N'PERU', N'AYACUCHO', N'HUAMANGA', N'CARMEN ALTO', 1, N'05', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050104', N'PERU', N'AYACUCHO', N'HUAMANGA', N'CHIARA', 1, N'05', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050105', N'PERU', N'AYACUCHO', N'HUAMANGA', N'QUINUA', 1, N'05', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050106', N'PERU', N'AYACUCHO', N'HUAMANGA', N'SAN JOSE DE TICLLAS', 1, N'05', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050107', N'PERU', N'AYACUCHO', N'HUAMANGA', N'SAN JUAN BAUTISTA', 1, N'05', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050108', N'PERU', N'AYACUCHO', N'HUAMANGA', N'SANTIAGO DE PISCHA', 1, N'05', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050109', N'PERU', N'AYACUCHO', N'HUAMANGA', N'VINCHOS', 1, N'05', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050110', N'PERU', N'AYACUCHO', N'HUAMANGA', N'TAMBILLO', 1, N'05', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050111', N'PERU', N'AYACUCHO', N'HUAMANGA', N'ACOCRO', 1, N'05', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050112', N'PERU', N'AYACUCHO', N'HUAMANGA', N'SOCOS', 1, N'05', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050113', N'PERU', N'AYACUCHO', N'HUAMANGA', N'OCROS', 1, N'05', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050114', N'PERU', N'AYACUCHO', N'HUAMANGA', N'PACAYCASA', 1, N'05', N'01', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050115', N'PERU', N'AYACUCHO', N'HUAMANGA', N'JESUS NAZARENO', 1, N'05', N'01', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050201', N'PERU', N'AYACUCHO', N'CANGALLO', N'CANGALLO', 1, N'05', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050204', N'PERU', N'AYACUCHO', N'CANGALLO', N'CHUSCHI', 1, N'05', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050206', N'PERU', N'AYACUCHO', N'CANGALLO', N'LOS MOROCHUCOS', 1, N'05', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050207', N'PERU', N'AYACUCHO', N'CANGALLO', N'PARAS', 1, N'05', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050208', N'PERU', N'AYACUCHO', N'CANGALLO', N'TOTOS', 1, N'05', N'02', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050211', N'PERU', N'AYACUCHO', N'CANGALLO', N'MARIA PARADO DE BELLIDO', 1, N'05', N'02', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050301', N'PERU', N'AYACUCHO', N'HUANTA', N'HUANTA', 1, N'05', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050302', N'PERU', N'AYACUCHO', N'HUANTA', N'AYAHUANCO', 1, N'05', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050303', N'PERU', N'AYACUCHO', N'HUANTA', N'HUAMANGUILLA', 1, N'05', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050304', N'PERU', N'AYACUCHO', N'HUANTA', N'IGUAIN', 1, N'05', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050305', N'PERU', N'AYACUCHO', N'HUANTA', N'LURICOCHA', 1, N'05', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050307', N'PERU', N'AYACUCHO', N'HUANTA', N'SANTILLANA', 1, N'05', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050308', N'PERU', N'AYACUCHO', N'HUANTA', N'SIVIA', 1, N'05', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050309', N'PERU', N'AYACUCHO', N'HUANTA', N'LLOCHEGUA', 1, N'05', N'03', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050401', N'PERU', N'AYACUCHO', N'LA MAR', N'SAN MIGUEL', 1, N'05', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050402', N'PERU', N'AYACUCHO', N'LA MAR', N'ANCO', 1, N'05', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050403', N'PERU', N'AYACUCHO', N'LA MAR', N'AYNA', 1, N'05', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050404', N'PERU', N'AYACUCHO', N'LA MAR', N'CHILCAS', 1, N'05', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050405', N'PERU', N'AYACUCHO', N'LA MAR', N'CHUNGUI', 1, N'05', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050406', N'PERU', N'AYACUCHO', N'LA MAR', N'TAMBO', 1, N'05', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050407', N'PERU', N'AYACUCHO', N'LA MAR', N'LUIS CARRANZA', 1, N'05', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050408', N'PERU', N'AYACUCHO', N'LA MAR', N'SANTA ROSA', 1, N'05', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050409', N'PERU', N'AYACUCHO', N'LA MAR', N'SAMUGARI', 1, N'05', N'04', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050501', N'PERU', N'AYACUCHO', N'LUCANAS', N'PUQUIO', 1, N'05', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050502', N'PERU', N'AYACUCHO', N'LUCANAS', N'AUCARA', 1, N'05', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050503', N'PERU', N'AYACUCHO', N'LUCANAS', N'CABANA', 1, N'05', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050504', N'PERU', N'AYACUCHO', N'LUCANAS', N'CARMEN SALCEDO', 1, N'05', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050506', N'PERU', N'AYACUCHO', N'LUCANAS', N'CHAVIÑA', 1, N'05', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050508', N'PERU', N'AYACUCHO', N'LUCANAS', N'CHIPAO', 1, N'05', N'05', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050510', N'PERU', N'AYACUCHO', N'LUCANAS', N'HUAC-HUAS', 1, N'05', N'05', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050511', N'PERU', N'AYACUCHO', N'LUCANAS', N'LARAMATE', 1, N'05', N'05', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050512', N'PERU', N'AYACUCHO', N'LUCANAS', N'LEONCIO PRADO', 1, N'05', N'05', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050513', N'PERU', N'AYACUCHO', N'LUCANAS', N'LUCANAS', 1, N'05', N'05', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050514', N'PERU', N'AYACUCHO', N'LUCANAS', N'LLAUTA', 1, N'05', N'05', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050516', N'PERU', N'AYACUCHO', N'LUCANAS', N'OCAÑA', 1, N'05', N'05', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050517', N'PERU', N'AYACUCHO', N'LUCANAS', N'OTOCA', 1, N'05', N'05', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050520', N'PERU', N'AYACUCHO', N'LUCANAS', N'SANCOS', 1, N'05', N'05', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050521', N'PERU', N'AYACUCHO', N'LUCANAS', N'SAN JUAN', 1, N'05', N'05', N'21')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050522', N'PERU', N'AYACUCHO', N'LUCANAS', N'SAN PEDRO', 1, N'05', N'05', N'22')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050524', N'PERU', N'AYACUCHO', N'LUCANAS', N'SANTA ANA DE HUAYCAHUACHO', 1, N'05', N'05', N'24')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050525', N'PERU', N'AYACUCHO', N'LUCANAS', N'SANTA LUCIA', 1, N'05', N'05', N'25')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050529', N'PERU', N'AYACUCHO', N'LUCANAS', N'SAISA', 1, N'05', N'05', N'29')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050531', N'PERU', N'AYACUCHO', N'LUCANAS', N'SAN PEDRO DE PALCO', 1, N'05', N'05', N'31')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050532', N'PERU', N'AYACUCHO', N'LUCANAS', N'SAN CRISTOBAL', 1, N'05', N'05', N'32')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050601', N'PERU', N'AYACUCHO', N'PARINACOCHAS', N'CORACORA', 1, N'05', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050604', N'PERU', N'AYACUCHO', N'PARINACOCHAS', N'CORONEL CASTAÑEDA', 1, N'05', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050605', N'PERU', N'AYACUCHO', N'PARINACOCHAS', N'CHUMPI', 1, N'05', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050608', N'PERU', N'AYACUCHO', N'PARINACOCHAS', N'PACAPAUSA', 1, N'05', N'06', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050611', N'PERU', N'AYACUCHO', N'PARINACOCHAS', N'PULLO', 1, N'05', N'06', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050612', N'PERU', N'AYACUCHO', N'PARINACOCHAS', N'PUYUSCA', 1, N'05', N'06', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050615', N'PERU', N'AYACUCHO', N'PARINACOCHAS', N'SAN FRANCISCO DE RAVACAYCO', 1, N'05', N'06', N'15')
GO
print 'Processed 500 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050616', N'PERU', N'AYACUCHO', N'PARINACOCHAS', N'UPAHUACHO', 1, N'05', N'06', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050701', N'PERU', N'AYACUCHO', N'VICTOR FAJARDO', N'HUANCAPI', 1, N'05', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050702', N'PERU', N'AYACUCHO', N'VICTOR FAJARDO', N'ALCAMENCA', 1, N'05', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050703', N'PERU', N'AYACUCHO', N'VICTOR FAJARDO', N'APONGO', 1, N'05', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050704', N'PERU', N'AYACUCHO', N'VICTOR FAJARDO', N'CANARIA', 1, N'05', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050706', N'PERU', N'AYACUCHO', N'VICTOR FAJARDO', N'CAYARA', 1, N'05', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050707', N'PERU', N'AYACUCHO', N'VICTOR FAJARDO', N'COLCA', 1, N'05', N'07', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050708', N'PERU', N'AYACUCHO', N'VICTOR FAJARDO', N'HUALLA', 1, N'05', N'07', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050709', N'PERU', N'AYACUCHO', N'VICTOR FAJARDO', N'HUAMANQUIQUIA', 1, N'05', N'07', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050710', N'PERU', N'AYACUCHO', N'VICTOR FAJARDO', N'HUANCARAYLLA', 1, N'05', N'07', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050713', N'PERU', N'AYACUCHO', N'VICTOR FAJARDO', N'SARHUA', 1, N'05', N'07', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050714', N'PERU', N'AYACUCHO', N'VICTOR FAJARDO', N'VILCANCHOS', 1, N'05', N'07', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050715', N'PERU', N'AYACUCHO', N'VICTOR FAJARDO', N'ASQUIPATA', 1, N'05', N'07', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050801', N'PERU', N'AYACUCHO', N'HUANCA SANCOS', N'SANCOS', 1, N'05', N'08', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050802', N'PERU', N'AYACUCHO', N'HUANCA SANCOS', N'SACSAMARCA', 1, N'05', N'08', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050803', N'PERU', N'AYACUCHO', N'HUANCA SANCOS', N'SANTIAGO DE LUCANAMARCA', 1, N'05', N'08', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050804', N'PERU', N'AYACUCHO', N'HUANCA SANCOS', N'CARAPO', 1, N'05', N'08', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050901', N'PERU', N'AYACUCHO', N'VILCAS HUAMAN', N'VILCAS HUAMAN', 1, N'05', N'09', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050902', N'PERU', N'AYACUCHO', N'VILCAS HUAMAN', N'VISCHONGO', 1, N'05', N'09', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050903', N'PERU', N'AYACUCHO', N'VILCAS HUAMAN', N'ACCOMARCA', 1, N'05', N'09', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050904', N'PERU', N'AYACUCHO', N'VILCAS HUAMAN', N'CARHUANCA', 1, N'05', N'09', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050905', N'PERU', N'AYACUCHO', N'VILCAS HUAMAN', N'CONCEPCION', 1, N'05', N'09', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050906', N'PERU', N'AYACUCHO', N'VILCAS HUAMAN', N'HUAMBALPA', 1, N'05', N'09', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050907', N'PERU', N'AYACUCHO', N'VILCAS HUAMAN', N'SAURAMA', 1, N'05', N'09', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'050908', N'PERU', N'AYACUCHO', N'VILCAS HUAMAN', N'INDEPENDENCIA', 1, N'05', N'09', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051001', N'PERU', N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'PAUSA', 1, N'05', N'10', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051002', N'PERU', N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'COLTA', 1, N'05', N'10', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051003', N'PERU', N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'CORCULLA', 1, N'05', N'10', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051004', N'PERU', N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'LAMPA', 1, N'05', N'10', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051005', N'PERU', N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'MARCABAMBA', 1, N'05', N'10', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051006', N'PERU', N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'OYOLO', 1, N'05', N'10', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051007', N'PERU', N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'PARARCA', 1, N'05', N'10', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051008', N'PERU', N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'SAN JAVIER DE ALPABAMBA', 1, N'05', N'10', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051009', N'PERU', N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'SAN JOSE DE USHUA', 1, N'05', N'10', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051010', N'PERU', N'AYACUCHO', N'PAUCAR DEL SARA SARA', N'SARA SARA', 1, N'05', N'10', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051101', N'PERU', N'AYACUCHO', N'SUCRE', N'QUEROBAMBA', 1, N'05', N'11', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051102', N'PERU', N'AYACUCHO', N'SUCRE', N'BELEN', 1, N'05', N'11', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051103', N'PERU', N'AYACUCHO', N'SUCRE', N'CHALCOS', 1, N'05', N'11', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051104', N'PERU', N'AYACUCHO', N'SUCRE', N'SAN SALVADOR DE QUIJE', 1, N'05', N'11', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051105', N'PERU', N'AYACUCHO', N'SUCRE', N'PAICO', 1, N'05', N'11', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051106', N'PERU', N'AYACUCHO', N'SUCRE', N'SANTIAGO DE PAUCARAY', 1, N'05', N'11', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051107', N'PERU', N'AYACUCHO', N'SUCRE', N'SAN PEDRO DE LARCAY', 1, N'05', N'11', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051108', N'PERU', N'AYACUCHO', N'SUCRE', N'SORAS', 1, N'05', N'11', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051109', N'PERU', N'AYACUCHO', N'SUCRE', N'HUACAÑA', 1, N'05', N'11', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051110', N'PERU', N'AYACUCHO', N'SUCRE', N'CHILCAYOC', 1, N'05', N'11', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'051111', N'PERU', N'AYACUCHO', N'SUCRE', N'MORCOLLA', 1, N'05', N'11', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060101', N'PERU', N'CAJAMARCA', N'CAJAMARCA', N'CAJAMARCA', 1, N'06', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060102', N'PERU', N'CAJAMARCA', N'CAJAMARCA', N'ASUNCION', 1, N'06', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060103', N'PERU', N'CAJAMARCA', N'CAJAMARCA', N'COSPAN', 1, N'06', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060104', N'PERU', N'CAJAMARCA', N'CAJAMARCA', N'CHETILLA', 1, N'06', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060105', N'PERU', N'CAJAMARCA', N'CAJAMARCA', N'ENCAÑADA', 1, N'06', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060106', N'PERU', N'CAJAMARCA', N'CAJAMARCA', N'JESUS', 1, N'06', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060107', N'PERU', N'CAJAMARCA', N'CAJAMARCA', N'LOS BAÑOS DEL INCA', 1, N'06', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060108', N'PERU', N'CAJAMARCA', N'CAJAMARCA', N'LLACANORA', 1, N'06', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060109', N'PERU', N'CAJAMARCA', N'CAJAMARCA', N'MAGDALENA', 1, N'06', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060110', N'PERU', N'CAJAMARCA', N'CAJAMARCA', N'MATARA', 1, N'06', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060111', N'PERU', N'CAJAMARCA', N'CAJAMARCA', N'NAMORA', 1, N'06', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060112', N'PERU', N'CAJAMARCA', N'CAJAMARCA', N'SAN JUAN', 1, N'06', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060201', N'PERU', N'CAJAMARCA', N'CAJABAMBA', N'CAJABAMBA', 1, N'06', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060202', N'PERU', N'CAJAMARCA', N'CAJABAMBA', N'CACHACHI', 1, N'06', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060203', N'PERU', N'CAJAMARCA', N'CAJABAMBA', N'CONDEBAMBA', 1, N'06', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060205', N'PERU', N'CAJAMARCA', N'CAJABAMBA', N'SITACOCHA', 1, N'06', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060301', N'PERU', N'CAJAMARCA', N'CELENDIN', N'CELENDIN', 1, N'06', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060302', N'PERU', N'CAJAMARCA', N'CELENDIN', N'CORTEGANA', 1, N'06', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060303', N'PERU', N'CAJAMARCA', N'CELENDIN', N'CHUMUCH', 1, N'06', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060304', N'PERU', N'CAJAMARCA', N'CELENDIN', N'HUASMIN', 1, N'06', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060305', N'PERU', N'CAJAMARCA', N'CELENDIN', N'JORGE CHAVEZ', 1, N'06', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060306', N'PERU', N'CAJAMARCA', N'CELENDIN', N'JOSE GALVEZ', 1, N'06', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060307', N'PERU', N'CAJAMARCA', N'CELENDIN', N'MIGUEL IGLESIAS', 1, N'06', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060308', N'PERU', N'CAJAMARCA', N'CELENDIN', N'OXAMARCA', 1, N'06', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060309', N'PERU', N'CAJAMARCA', N'CELENDIN', N'SOROCHUCO', 1, N'06', N'03', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060310', N'PERU', N'CAJAMARCA', N'CELENDIN', N'SUCRE', 1, N'06', N'03', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060311', N'PERU', N'CAJAMARCA', N'CELENDIN', N'UTCO', 1, N'06', N'03', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060312', N'PERU', N'CAJAMARCA', N'CELENDIN', N'LA LIBERTAD DE PALLAN', 1, N'06', N'03', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060401', N'PERU', N'CAJAMARCA', N'CONTUMAZA', N'CONTUMAZA', 1, N'06', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060403', N'PERU', N'CAJAMARCA', N'CONTUMAZA', N'CHILETE', 1, N'06', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060404', N'PERU', N'CAJAMARCA', N'CONTUMAZA', N'GUZMANGO', 1, N'06', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060405', N'PERU', N'CAJAMARCA', N'CONTUMAZA', N'SAN BENITO', 1, N'06', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060406', N'PERU', N'CAJAMARCA', N'CONTUMAZA', N'CUPISNIQUE', 1, N'06', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060407', N'PERU', N'CAJAMARCA', N'CONTUMAZA', N'TANTARICA', 1, N'06', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060408', N'PERU', N'CAJAMARCA', N'CONTUMAZA', N'YONAN', 1, N'06', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060409', N'PERU', N'CAJAMARCA', N'CONTUMAZA', N'SANTA CRUZ DE TOLED', 1, N'06', N'04', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060501', N'PERU', N'CAJAMARCA', N'CUTERVO', N'CUTERVO', 1, N'06', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060502', N'PERU', N'CAJAMARCA', N'CUTERVO', N'CALLAYUC', 1, N'06', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060503', N'PERU', N'CAJAMARCA', N'CUTERVO', N'CUJILLO', 1, N'06', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060504', N'PERU', N'CAJAMARCA', N'CUTERVO', N'CHOROS', 1, N'06', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060505', N'PERU', N'CAJAMARCA', N'CUTERVO', N'LA RAMADA', 1, N'06', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060506', N'PERU', N'CAJAMARCA', N'CUTERVO', N'PIMPINGOS', 1, N'06', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060507', N'PERU', N'CAJAMARCA', N'CUTERVO', N'QUEROCOTILLO', 1, N'06', N'05', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060508', N'PERU', N'CAJAMARCA', N'CUTERVO', N'SAN ANDRES DE CUTERVO', 1, N'06', N'05', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060509', N'PERU', N'CAJAMARCA', N'CUTERVO', N'SAN JUAN DE CUTERVO', 1, N'06', N'05', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060510', N'PERU', N'CAJAMARCA', N'CUTERVO', N'SAN LUIS DE LUCMA', 1, N'06', N'05', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060511', N'PERU', N'CAJAMARCA', N'CUTERVO', N'SANTA CRUZ', 1, N'06', N'05', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060512', N'PERU', N'CAJAMARCA', N'CUTERVO', N'SANTO DOMINGO DE LA CAPILLA', 1, N'06', N'05', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060513', N'PERU', N'CAJAMARCA', N'CUTERVO', N'SANTO TOMAS', 1, N'06', N'05', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060514', N'PERU', N'CAJAMARCA', N'CUTERVO', N'SOCOTA', 1, N'06', N'05', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060515', N'PERU', N'CAJAMARCA', N'CUTERVO', N'TORIBIO CASANOVA', 1, N'06', N'05', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060601', N'PERU', N'CAJAMARCA', N'CHOTA', N'CHOTA', 1, N'06', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060602', N'PERU', N'CAJAMARCA', N'CHOTA', N'ANGUIA', 1, N'06', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060603', N'PERU', N'CAJAMARCA', N'CHOTA', N'COCHABAMBA', 1, N'06', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060604', N'PERU', N'CAJAMARCA', N'CHOTA', N'CONCHAN', 1, N'06', N'06', N'04')
GO
print 'Processed 600 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060605', N'PERU', N'CAJAMARCA', N'CHOTA', N'CHADIN', 1, N'06', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060606', N'PERU', N'CAJAMARCA', N'CHOTA', N'CHIGUIRIP', 1, N'06', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060607', N'PERU', N'CAJAMARCA', N'CHOTA', N'CHIMBAN', 1, N'06', N'06', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060608', N'PERU', N'CAJAMARCA', N'CHOTA', N'HUAMBOS', 1, N'06', N'06', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060609', N'PERU', N'CAJAMARCA', N'CHOTA', N'LAJAS', 1, N'06', N'06', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060610', N'PERU', N'CAJAMARCA', N'CHOTA', N'LLAMA', 1, N'06', N'06', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060611', N'PERU', N'CAJAMARCA', N'CHOTA', N'MIRACOSTA', 1, N'06', N'06', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060612', N'PERU', N'CAJAMARCA', N'CHOTA', N'PACCHA', 1, N'06', N'06', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060613', N'PERU', N'CAJAMARCA', N'CHOTA', N'PION', 1, N'06', N'06', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060614', N'PERU', N'CAJAMARCA', N'CHOTA', N'QUEROCOTO', 1, N'06', N'06', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060615', N'PERU', N'CAJAMARCA', N'CHOTA', N'TACABAMBA', 1, N'06', N'06', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060616', N'PERU', N'CAJAMARCA', N'CHOTA', N'TOCMOCHE', 1, N'06', N'06', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060617', N'PERU', N'CAJAMARCA', N'CHOTA', N'SAN JUAN DE LICUPIS', 1, N'06', N'06', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060618', N'PERU', N'CAJAMARCA', N'CHOTA', N'CHOROPAMPA', 1, N'06', N'06', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060619', N'PERU', N'CAJAMARCA', N'CHOTA', N'CHALAMARCA', 1, N'06', N'06', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060701', N'PERU', N'CAJAMARCA', N'HUALGAYOC', N'BAMBAMARCA', 1, N'06', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060702', N'PERU', N'CAJAMARCA', N'HUALGAYOC', N'CHUGUR', 1, N'06', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060703', N'PERU', N'CAJAMARCA', N'HUALGAYOC', N'HUALGAYOC', 1, N'06', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060801', N'PERU', N'CAJAMARCA', N'JAEN', N'JAEN', 1, N'06', N'08', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060802', N'PERU', N'CAJAMARCA', N'JAEN', N'BELLAVISTA', 1, N'06', N'08', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060803', N'PERU', N'CAJAMARCA', N'JAEN', N'COLASAY', 1, N'06', N'08', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060804', N'PERU', N'CAJAMARCA', N'JAEN', N'CHONTALI', 1, N'06', N'08', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060805', N'PERU', N'CAJAMARCA', N'JAEN', N'POMAHUACA', 1, N'06', N'08', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060806', N'PERU', N'CAJAMARCA', N'JAEN', N'PUCARA', 1, N'06', N'08', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060807', N'PERU', N'CAJAMARCA', N'JAEN', N'SALLIQUE', 1, N'06', N'08', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060808', N'PERU', N'CAJAMARCA', N'JAEN', N'SAN FELIPE', 1, N'06', N'08', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060809', N'PERU', N'CAJAMARCA', N'JAEN', N'SAN JOSE DEL ALTO', 1, N'06', N'08', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060810', N'PERU', N'CAJAMARCA', N'JAEN', N'SANTA ROSA', 1, N'06', N'08', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060811', N'PERU', N'CAJAMARCA', N'JAEN', N'LAS PIRIAS', 1, N'06', N'08', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060812', N'PERU', N'CAJAMARCA', N'JAEN', N'HUABAL', 1, N'06', N'08', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060901', N'PERU', N'CAJAMARCA', N'SANTA CRUZ', N'SANTA CRUZ', 1, N'06', N'09', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060902', N'PERU', N'CAJAMARCA', N'SANTA CRUZ', N'CATACHE', 1, N'06', N'09', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060903', N'PERU', N'CAJAMARCA', N'SANTA CRUZ', N'CHANCAYBAÑOS', 1, N'06', N'09', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060904', N'PERU', N'CAJAMARCA', N'SANTA CRUZ', N'LA ESPERANZA', 1, N'06', N'09', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060905', N'PERU', N'CAJAMARCA', N'SANTA CRUZ', N'NINABAMBA', 1, N'06', N'09', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060906', N'PERU', N'CAJAMARCA', N'SANTA CRUZ', N'PULAN', 1, N'06', N'09', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060907', N'PERU', N'CAJAMARCA', N'SANTA CRUZ', N'SEXI', 1, N'06', N'09', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060908', N'PERU', N'CAJAMARCA', N'SANTA CRUZ', N'UTICYACU', 1, N'06', N'09', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060909', N'PERU', N'CAJAMARCA', N'SANTA CRUZ', N'YAUYUCAN', 1, N'06', N'09', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060910', N'PERU', N'CAJAMARCA', N'SANTA CRUZ', N'ANDABAMBA', 1, N'06', N'09', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'060911', N'PERU', N'CAJAMARCA', N'SANTA CRUZ', N'SAUCEPAMPA', 1, N'06', N'09', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061001', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'SAN MIGUEL', 1, N'06', N'10', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061002', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'CALQUIS', 1, N'06', N'10', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061003', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'LA FLORIDA', 1, N'06', N'10', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061004', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'LLAPA', 1, N'06', N'10', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061005', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'NANCHOC', 1, N'06', N'10', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061006', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'NIEPOS', 1, N'06', N'10', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061007', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'SAN GREGORIO', 1, N'06', N'10', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061008', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'SAN SILVESTRE DE COCHAN', 1, N'06', N'10', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061009', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'EL PRADO', 1, N'06', N'10', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061010', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'UNION AGUA BLANCA', 1, N'06', N'10', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061011', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'TONGOD', 1, N'06', N'10', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061012', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'CATILLUC', 1, N'06', N'10', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061013', N'PERU', N'CAJAMARCA', N'SAN MIGUEL', N'BOLIVAR', 1, N'06', N'10', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061101', N'PERU', N'CAJAMARCA', N'SAN IGNACIO', N'SAN IGNACIO', 1, N'06', N'11', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061102', N'PERU', N'CAJAMARCA', N'SAN IGNACIO', N'CHIRINOS', 1, N'06', N'11', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061103', N'PERU', N'CAJAMARCA', N'SAN IGNACIO', N'HUARANGO', 1, N'06', N'11', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061104', N'PERU', N'CAJAMARCA', N'SAN IGNACIO', N'NAMBALLE', 1, N'06', N'11', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061105', N'PERU', N'CAJAMARCA', N'SAN IGNACIO', N'LA COIPA', 1, N'06', N'11', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061106', N'PERU', N'CAJAMARCA', N'SAN IGNACIO', N'SAN JOSE DE LOURDES', 1, N'06', N'11', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061107', N'PERU', N'CAJAMARCA', N'SAN IGNACIO', N'TABACONAS', 1, N'06', N'11', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061201', N'PERU', N'CAJAMARCA', N'SAN MARCOS', N'PEDRO GALVEZ', 1, N'06', N'12', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061202', N'PERU', N'CAJAMARCA', N'SAN MARCOS', N'ICHOCAN', 1, N'06', N'12', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061203', N'PERU', N'CAJAMARCA', N'SAN MARCOS', N'GREGORIO PITA', 1, N'06', N'12', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061204', N'PERU', N'CAJAMARCA', N'SAN MARCOS', N'JOSE MANUEL QUIROZ', 1, N'06', N'12', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061205', N'PERU', N'CAJAMARCA', N'SAN MARCOS', N'EDUARDO VILLANUEVA', 1, N'06', N'12', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061206', N'PERU', N'CAJAMARCA', N'SAN MARCOS', N'JOSE SABOGAL', 1, N'06', N'12', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061207', N'PERU', N'CAJAMARCA', N'SAN MARCOS', N'CHANCAY', 1, N'06', N'12', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061301', N'PERU', N'CAJAMARCA', N'SAN PABLO', N'SAN PABLO', 1, N'06', N'13', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061302', N'PERU', N'CAJAMARCA', N'SAN PABLO', N'SAN BERNARDINO', 1, N'06', N'13', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061303', N'PERU', N'CAJAMARCA', N'SAN PABLO', N'SAN LUIS', 1, N'06', N'13', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'061304', N'PERU', N'CAJAMARCA', N'SAN PABLO', N'TUMBADEN', 1, N'06', N'13', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070101', N'PERU', N'CUSCO', N'CUSCO', N'CUSCO', 1, N'07', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070102', N'PERU', N'CUSCO', N'CUSCO', N'CCORCA', 1, N'07', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070103', N'PERU', N'CUSCO', N'CUSCO', N'POROY', 1, N'07', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070104', N'PERU', N'CUSCO', N'CUSCO', N'SAN JERONIMO', 1, N'07', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070105', N'PERU', N'CUSCO', N'CUSCO', N'SAN SEBASTIAN', 1, N'07', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070106', N'PERU', N'CUSCO', N'CUSCO', N'SANTIAGO', 1, N'07', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070107', N'PERU', N'CUSCO', N'CUSCO', N'SAYLLA', 1, N'07', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070108', N'PERU', N'CUSCO', N'CUSCO', N'WANCHAQ', 1, N'07', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070201', N'PERU', N'CUSCO', N'ACOMAYO', N'ACOMAYO', 1, N'07', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070202', N'PERU', N'CUSCO', N'ACOMAYO', N'ACOPIA', 1, N'07', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070203', N'PERU', N'CUSCO', N'ACOMAYO', N'ACOS', 1, N'07', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070204', N'PERU', N'CUSCO', N'ACOMAYO', N'POMACANCHI', 1, N'07', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070205', N'PERU', N'CUSCO', N'ACOMAYO', N'RONDOCAN', 1, N'07', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070206', N'PERU', N'CUSCO', N'ACOMAYO', N'SANGARARA', 1, N'07', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070207', N'PERU', N'CUSCO', N'ACOMAYO', N'MOSOC LLACTA', 1, N'07', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070301', N'PERU', N'CUSCO', N'ANTA', N'ANTA', 1, N'07', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070302', N'PERU', N'CUSCO', N'ANTA', N'CHINCHAYPUJIO', 1, N'07', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070303', N'PERU', N'CUSCO', N'ANTA', N'HUAROCONDO', 1, N'07', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070304', N'PERU', N'CUSCO', N'ANTA', N'LIMATAMBO', 1, N'07', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070305', N'PERU', N'CUSCO', N'ANTA', N'MOLLEPATA', 1, N'07', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070306', N'PERU', N'CUSCO', N'ANTA', N'PUCYURA', 1, N'07', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070307', N'PERU', N'CUSCO', N'ANTA', N'ZURITE', 1, N'07', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070308', N'PERU', N'CUSCO', N'ANTA', N'CACHIMAYO', 1, N'07', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070309', N'PERU', N'CUSCO', N'ANTA', N'ANCAHUASI', 1, N'07', N'03', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070401', N'PERU', N'CUSCO', N'CALCA', N'CALCA', 1, N'07', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070402', N'PERU', N'CUSCO', N'CALCA', N'COYA', 1, N'07', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070403', N'PERU', N'CUSCO', N'CALCA', N'LAMAY', 1, N'07', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070404', N'PERU', N'CUSCO', N'CALCA', N'LARES', 1, N'07', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070405', N'PERU', N'CUSCO', N'CALCA', N'PISAC', 1, N'07', N'04', N'05')
GO
print 'Processed 700 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070406', N'PERU', N'CUSCO', N'CALCA', N'SAN SALVADOR', 1, N'07', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070407', N'PERU', N'CUSCO', N'CALCA', N'TARAY', 1, N'07', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070408', N'PERU', N'CUSCO', N'CALCA', N'YANATILE', 1, N'07', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070501', N'PERU', N'CUSCO', N'CANAS', N'YANAOCA', 1, N'07', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070502', N'PERU', N'CUSCO', N'CANAS', N'CHECCA', 1, N'07', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070503', N'PERU', N'CUSCO', N'CANAS', N'KUNTURKANKI', 1, N'07', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070504', N'PERU', N'CUSCO', N'CANAS', N'LANGUI', 1, N'07', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070505', N'PERU', N'CUSCO', N'CANAS', N'LAYO', 1, N'07', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070506', N'PERU', N'CUSCO', N'CANAS', N'PAMPAMARCA', 1, N'07', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070507', N'PERU', N'CUSCO', N'CANAS', N'QUEHUE', 1, N'07', N'05', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070508', N'PERU', N'CUSCO', N'CANAS', N'TUPAC AMARU', 1, N'07', N'05', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070601', N'PERU', N'CUSCO', N'CANCHIS', N'SICUANI', 1, N'07', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070602', N'PERU', N'CUSCO', N'CANCHIS', N'COMBAPATA', 1, N'07', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070603', N'PERU', N'CUSCO', N'CANCHIS', N'CHECACUPE', 1, N'07', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070604', N'PERU', N'CUSCO', N'CANCHIS', N'MARANGANI', 1, N'07', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070605', N'PERU', N'CUSCO', N'CANCHIS', N'PITUMARCA', 1, N'07', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070606', N'PERU', N'CUSCO', N'CANCHIS', N'SAN PABLO', 1, N'07', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070607', N'PERU', N'CUSCO', N'CANCHIS', N'SAN PEDRO', 1, N'07', N'06', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070608', N'PERU', N'CUSCO', N'CANCHIS', N'TINTA', 1, N'07', N'06', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070701', N'PERU', N'CUSCO', N'CHUMBIVILCAS', N'SANTO TOMAS', 1, N'07', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070702', N'PERU', N'CUSCO', N'CHUMBIVILCAS', N'CAPACMARCA', 1, N'07', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070703', N'PERU', N'CUSCO', N'CHUMBIVILCAS', N'COLQUEMARCA', 1, N'07', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070704', N'PERU', N'CUSCO', N'CHUMBIVILCAS', N'CHAMACA', 1, N'07', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070705', N'PERU', N'CUSCO', N'CHUMBIVILCAS', N'LIVITACA', 1, N'07', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070706', N'PERU', N'CUSCO', N'CHUMBIVILCAS', N'LLUSCO', 1, N'07', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070707', N'PERU', N'CUSCO', N'CHUMBIVILCAS', N'QUIÑOTA', 1, N'07', N'07', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070708', N'PERU', N'CUSCO', N'CHUMBIVILCAS', N'VELILLE', 1, N'07', N'07', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070801', N'PERU', N'CUSCO', N'ESPINAR', N'ESPINAR', 1, N'07', N'08', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070802', N'PERU', N'CUSCO', N'ESPINAR', N'CONDOROMA', 1, N'07', N'08', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070803', N'PERU', N'CUSCO', N'ESPINAR', N'COPORAQUE', 1, N'07', N'08', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070804', N'PERU', N'CUSCO', N'ESPINAR', N'OCORURO', 1, N'07', N'08', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070805', N'PERU', N'CUSCO', N'ESPINAR', N'PALLPATA', 1, N'07', N'08', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070806', N'PERU', N'CUSCO', N'ESPINAR', N'PICHIGUA', 1, N'07', N'08', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070807', N'PERU', N'CUSCO', N'ESPINAR', N'SUYCKUTAMBO', 1, N'07', N'08', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070808', N'PERU', N'CUSCO', N'ESPINAR', N'ALTO PICHIGUA', 1, N'07', N'08', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070901', N'PERU', N'CUSCO', N'LA CONVENCION', N'SANTA ANA', 1, N'07', N'09', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070902', N'PERU', N'CUSCO', N'LA CONVENCION', N'ECHARATE', 1, N'07', N'09', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070903', N'PERU', N'CUSCO', N'LA CONVENCION', N'HUAYOPATA', 1, N'07', N'09', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070904', N'PERU', N'CUSCO', N'LA CONVENCION', N'MARANURA', 1, N'07', N'09', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070905', N'PERU', N'CUSCO', N'LA CONVENCION', N'OCOBAMBA', 1, N'07', N'09', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070906', N'PERU', N'CUSCO', N'LA CONVENCION', N'SANTA TERESA', 1, N'07', N'09', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070907', N'PERU', N'CUSCO', N'LA CONVENCION', N'VILCABAMBA', 1, N'07', N'09', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070908', N'PERU', N'CUSCO', N'LA CONVENCION', N'QUELLOUNO', 1, N'07', N'09', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070909', N'PERU', N'CUSCO', N'LA CONVENCION', N'KIMBIRI', 1, N'07', N'09', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'070910', N'PERU', N'CUSCO', N'LA CONVENCION', N'PICHARI', 1, N'07', N'09', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071001', N'PERU', N'CUSCO', N'PARURO', N'PARURO', 1, N'07', N'10', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071002', N'PERU', N'CUSCO', N'PARURO', N'ACCHA', 1, N'07', N'10', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071003', N'PERU', N'CUSCO', N'PARURO', N'CCAPI', 1, N'07', N'10', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071004', N'PERU', N'CUSCO', N'PARURO', N'COLCHA', 1, N'07', N'10', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071005', N'PERU', N'CUSCO', N'PARURO', N'HUANOQUITE', 1, N'07', N'10', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071006', N'PERU', N'CUSCO', N'PARURO', N'OMACHA', 1, N'07', N'10', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071007', N'PERU', N'CUSCO', N'PARURO', N'YAURISQUE', 1, N'07', N'10', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071008', N'PERU', N'CUSCO', N'PARURO', N'PACCARITAMBO', 1, N'07', N'10', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071009', N'PERU', N'CUSCO', N'PARURO', N'PILLPINTO', 1, N'07', N'10', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071101', N'PERU', N'CUSCO', N'PAUCARTAMBO', N'PAUCARTAMBO', 1, N'07', N'11', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071102', N'PERU', N'CUSCO', N'PAUCARTAMBO', N'CAICAY', 1, N'07', N'11', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071103', N'PERU', N'CUSCO', N'PAUCARTAMBO', N'COLQUEPATA', 1, N'07', N'11', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071104', N'PERU', N'CUSCO', N'PAUCARTAMBO', N'CHALLABAMBA', 1, N'07', N'11', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071105', N'PERU', N'CUSCO', N'PAUCARTAMBO', N'KOSÑIPATA', 1, N'07', N'11', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071106', N'PERU', N'CUSCO', N'PAUCARTAMBO', N'HUANCARANI', 1, N'07', N'11', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071201', N'PERU', N'CUSCO', N'QUISPICANCHI', N'URCOS', 1, N'07', N'12', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071202', N'PERU', N'CUSCO', N'QUISPICANCHI', N'ANDAHUAYLILLAS', 1, N'07', N'12', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071203', N'PERU', N'CUSCO', N'QUISPICANCHI', N'CAMANTI', 1, N'07', N'12', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071204', N'PERU', N'CUSCO', N'QUISPICANCHI', N'CCARHUAYO', 1, N'07', N'12', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071205', N'PERU', N'CUSCO', N'QUISPICANCHI', N'CCATCA', 1, N'07', N'12', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071206', N'PERU', N'CUSCO', N'QUISPICANCHI', N'CUSIPATA', 1, N'07', N'12', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071207', N'PERU', N'CUSCO', N'QUISPICANCHI', N'HUARO', 1, N'07', N'12', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071208', N'PERU', N'CUSCO', N'QUISPICANCHI', N'LUCRE', 1, N'07', N'12', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071209', N'PERU', N'CUSCO', N'QUISPICANCHI', N'MARCAPATA', 1, N'07', N'12', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071210', N'PERU', N'CUSCO', N'QUISPICANCHI', N'OCONGATE', 1, N'07', N'12', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071211', N'PERU', N'CUSCO', N'QUISPICANCHI', N'OROPESA', 1, N'07', N'12', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071212', N'PERU', N'CUSCO', N'QUISPICANCHI', N'QUIQUIJANA', 1, N'07', N'12', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071301', N'PERU', N'CUSCO', N'URUBAMBA', N'URUBAMBA', 1, N'07', N'13', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071302', N'PERU', N'CUSCO', N'URUBAMBA', N'CHINCHERO', 1, N'07', N'13', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071303', N'PERU', N'CUSCO', N'URUBAMBA', N'HUAYLLABAMBA', 1, N'07', N'13', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071304', N'PERU', N'CUSCO', N'URUBAMBA', N'MACHUPICCHU', 1, N'07', N'13', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071305', N'PERU', N'CUSCO', N'URUBAMBA', N'MARAS', 1, N'07', N'13', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071306', N'PERU', N'CUSCO', N'URUBAMBA', N'OLLANTAYTAMBO', 1, N'07', N'13', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'071307', N'PERU', N'CUSCO', N'URUBAMBA', N'YUCAY', 1, N'07', N'13', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080101', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'HUANCAVELICA', 1, N'08', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080102', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'ACOBAMBILLA', 1, N'08', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080103', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'ACORIA', 1, N'08', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080104', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'CONAYCA', 1, N'08', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080105', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'CUENCA', 1, N'08', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080106', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'HUACHOCOLPA', 1, N'08', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080108', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'HUAYLLAHUARA', 1, N'08', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080109', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'IZCUCHACA', 1, N'08', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080110', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'LARIA', 1, N'08', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080111', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'MANTA', 1, N'08', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080112', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'MARISCAL CACERES', 1, N'08', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080113', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'MOYA', 1, N'08', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080114', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'NUEVO OCCORO', 1, N'08', N'01', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080115', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'PALCA', 1, N'08', N'01', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080116', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'PILCHACA', 1, N'08', N'01', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080117', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'VILCA', 1, N'08', N'01', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080118', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'YAULI', 1, N'08', N'01', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080119', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'ASCENSION', 1, N'08', N'01', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080120', N'PERU', N'HUANCAVELICA', N'HUANCAVELICA', N'HUANDO', 1, N'08', N'01', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080201', N'PERU', N'HUANCAVELICA', N'ACOBAMBA', N'ACOBAMBA', 1, N'08', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080202', N'PERU', N'HUANCAVELICA', N'ACOBAMBA', N'ANTA', 1, N'08', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080203', N'PERU', N'HUANCAVELICA', N'ACOBAMBA', N'ANDABAMBA', 1, N'08', N'02', N'03')
GO
print 'Processed 800 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080204', N'PERU', N'HUANCAVELICA', N'ACOBAMBA', N'CAJA', 1, N'08', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080205', N'PERU', N'HUANCAVELICA', N'ACOBAMBA', N'MARCAS', 1, N'08', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080206', N'PERU', N'HUANCAVELICA', N'ACOBAMBA', N'PAUCARA', 1, N'08', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080207', N'PERU', N'HUANCAVELICA', N'ACOBAMBA', N'POMACOCHA', 1, N'08', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080208', N'PERU', N'HUANCAVELICA', N'ACOBAMBA', N'ROSARIO', 1, N'08', N'02', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080301', N'PERU', N'HUANCAVELICA', N'ANGARAES', N'LIRCAY', 1, N'08', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080302', N'PERU', N'HUANCAVELICA', N'ANGARAES', N'ANCHONGA', 1, N'08', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080303', N'PERU', N'HUANCAVELICA', N'ANGARAES', N'CALLANMARCA', 1, N'08', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080304', N'PERU', N'HUANCAVELICA', N'ANGARAES', N'CONGALLA', 1, N'08', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080305', N'PERU', N'HUANCAVELICA', N'ANGARAES', N'CHINCHO', 1, N'08', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080306', N'PERU', N'HUANCAVELICA', N'ANGARAES', N'HUALLAY-GRANDE', 1, N'08', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080307', N'PERU', N'HUANCAVELICA', N'ANGARAES', N'HUANCA-HUANCA', 1, N'08', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080308', N'PERU', N'HUANCAVELICA', N'ANGARAES', N'JULCAMARCA', 1, N'08', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080309', N'PERU', N'HUANCAVELICA', N'ANGARAES', N'SAN ANTONIO DE ANTAPARCO', 1, N'08', N'03', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080310', N'PERU', N'HUANCAVELICA', N'ANGARAES', N'SANTO TOMAS DE PATA', 1, N'08', N'03', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080311', N'PERU', N'HUANCAVELICA', N'ANGARAES', N'SECCLLA', 1, N'08', N'03', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080312', N'PERU', N'HUANCAVELICA', N'ANGARAES', N'CCOCHACCASA', 1, N'08', N'03', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080401', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'CASTROVIRREYNA', 1, N'08', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080402', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'ARMA', 1, N'08', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080403', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'AURAHUA', 1, N'08', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080405', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'CAPILLAS', 1, N'08', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080406', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'COCAS', 1, N'08', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080408', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'CHUPAMARCA', 1, N'08', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080409', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'HUACHOS', 1, N'08', N'04', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080410', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'HUAMATAMBO', 1, N'08', N'04', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080414', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'MOLLEPAMPA', 1, N'08', N'04', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080422', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'SAN JUAN', 1, N'08', N'04', N'22')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080427', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'TANTARA', 1, N'08', N'04', N'27')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080428', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'TICRAPO', 1, N'08', N'04', N'28')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080429', N'PERU', N'HUANCAVELICA', N'CASTROVIRREYNA', N'SANTA ANA', 1, N'08', N'04', N'29')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080501', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'PAMPAS', 1, N'08', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080502', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'ACOSTAMBO', 1, N'08', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080503', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'ACRAQUIA', 1, N'08', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080504', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'AHUAYCHA', 1, N'08', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080506', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'COLCABAMBA', 1, N'08', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080509', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'DANIEL HERNANDEZ', 1, N'08', N'05', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080511', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'HUACHOCOLPA', 1, N'08', N'05', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080512', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'HUARIBAMBA', 1, N'08', N'05', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080515', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'ÑAHUIMPUQUIO', 1, N'08', N'05', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080517', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'PAZOS', 1, N'08', N'05', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080518', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'QUISHUAR', 1, N'08', N'05', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080519', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'SALCABAMBA', 1, N'08', N'05', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080520', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'SAN MARCOS DE ROCCHAC', 1, N'08', N'05', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080523', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'SURCUBAMBA', 1, N'08', N'05', N'23')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080525', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'TINTAY PUNCU', 1, N'08', N'05', N'25')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080526', N'PERU', N'HUANCAVELICA', N'TAYACAJA', N'SALCAHUASI', 1, N'08', N'05', N'26')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080601', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'AYAVI', 1, N'08', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080602', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'CORDOVA', 1, N'08', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080603', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'HUAYACUNDO ARMA', 1, N'08', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080604', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'HUAYTARA', 1, N'08', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080605', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'LARAMARCA', 1, N'08', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080606', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'OCOYO', 1, N'08', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080607', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'PILPICHACA', 1, N'08', N'06', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080608', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'QUERCO', 1, N'08', N'06', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080609', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'QUITO ARMA', 1, N'08', N'06', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080610', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'SAN ANTONIO DE CUSICANCHA', 1, N'08', N'06', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080611', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'SAN FRANCISCO DE SANGAYAICO', 1, N'08', N'06', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080612', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'SAN ISIDRO', 1, N'08', N'06', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080613', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'SANTIAGO DE CHOCORVOS', 1, N'08', N'06', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080614', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'SANTIAGO DE QUIRAHUARA', 1, N'08', N'06', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080615', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'SANTO DOMINGO DE CAPILLAS', 1, N'08', N'06', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080616', N'PERU', N'HUANCAVELICA', N'HUAYTARA', N'TAMBO', 1, N'08', N'06', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080701', N'PERU', N'HUANCAVELICA', N'CHURCAMPA', N'CHURCAMPA', 1, N'08', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080702', N'PERU', N'HUANCAVELICA', N'CHURCAMPA', N'ANCO', 1, N'08', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080703', N'PERU', N'HUANCAVELICA', N'CHURCAMPA', N'CHINCHIHUASI', 1, N'08', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080704', N'PERU', N'HUANCAVELICA', N'CHURCAMPA', N'EL CARMEN', 1, N'08', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080705', N'PERU', N'HUANCAVELICA', N'CHURCAMPA', N'LA MERCED', 1, N'08', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080706', N'PERU', N'HUANCAVELICA', N'CHURCAMPA', N'LOCROJA', 1, N'08', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080707', N'PERU', N'HUANCAVELICA', N'CHURCAMPA', N'PAUCARBAMBA', 1, N'08', N'07', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080708', N'PERU', N'HUANCAVELICA', N'CHURCAMPA', N'SAN MIGUEL DE MAYOCC', 1, N'08', N'07', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080709', N'PERU', N'HUANCAVELICA', N'CHURCAMPA', N'SAN PEDRO DE CORIS', 1, N'08', N'07', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080710', N'PERU', N'HUANCAVELICA', N'CHURCAMPA', N'PACHAMARCA', 1, N'08', N'07', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'080711', N'PERU', N'HUANCAVELICA', N'CHURCAMPA', N'COSME', 1, N'08', N'07', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090101', N'PERU', N'HUANUCO', N'HUANUCO', N'HUANUCO', 1, N'09', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090102', N'PERU', N'HUANUCO', N'HUANUCO', N'CHINCHAO', 1, N'09', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090103', N'PERU', N'HUANUCO', N'HUANUCO', N'CHURUBAMBA', 1, N'09', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090104', N'PERU', N'HUANUCO', N'HUANUCO', N'MARGOS', 1, N'09', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090105', N'PERU', N'HUANUCO', N'HUANUCO', N'QUISQUI', 1, N'09', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090106', N'PERU', N'HUANUCO', N'HUANUCO', N'SAN FRANCISCO DE CAYRAN', 1, N'09', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090107', N'PERU', N'HUANUCO', N'HUANUCO', N'SAN PEDRO DE CHAULAN', 1, N'09', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090108', N'PERU', N'HUANUCO', N'HUANUCO', N'SANTA MARIA DEL VALLE', 1, N'09', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090109', N'PERU', N'HUANUCO', N'HUANUCO', N'YARUMAYO', 1, N'09', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090110', N'PERU', N'HUANUCO', N'HUANUCO', N'AMARILIS', 1, N'09', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090111', N'PERU', N'HUANUCO', N'HUANUCO', N'PILLCO MARCA', 1, N'09', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090112', N'PERU', N'HUANUCO', N'HUANUCO', N'YACUS', 1, N'09', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090201', N'PERU', N'HUANUCO', N'AMBO', N'AMBO', 1, N'09', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090202', N'PERU', N'HUANUCO', N'AMBO', N'CAYNA', 1, N'09', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090203', N'PERU', N'HUANUCO', N'AMBO', N'COLPAS', 1, N'09', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090204', N'PERU', N'HUANUCO', N'AMBO', N'CONCHAMARCA', 1, N'09', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090205', N'PERU', N'HUANUCO', N'AMBO', N'HUACAR', 1, N'09', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090206', N'PERU', N'HUANUCO', N'AMBO', N'SAN FRANCISCO', 1, N'09', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090207', N'PERU', N'HUANUCO', N'AMBO', N'SAN RAFAEL', 1, N'09', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090208', N'PERU', N'HUANUCO', N'AMBO', N'TOMAY-KICHWA', 1, N'09', N'02', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090301', N'PERU', N'HUANUCO', N'DOS DE MAYO', N'LA UNION', 1, N'09', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090307', N'PERU', N'HUANUCO', N'DOS DE MAYO', N'CHUQUIS', 1, N'09', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090312', N'PERU', N'HUANUCO', N'DOS DE MAYO', N'MARIAS', 1, N'09', N'03', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090314', N'PERU', N'HUANUCO', N'DOS DE MAYO', N'PACHAS', 1, N'09', N'03', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090316', N'PERU', N'HUANUCO', N'DOS DE MAYO', N'QUIVILLA', 1, N'09', N'03', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090317', N'PERU', N'HUANUCO', N'DOS DE MAYO', N'RIPAN', 1, N'09', N'03', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090321', N'PERU', N'HUANUCO', N'DOS DE MAYO', N'SHUNQUI', 1, N'09', N'03', N'21')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090322', N'PERU', N'HUANUCO', N'DOS DE MAYO', N'SILLAPATA', 1, N'09', N'03', N'22')
GO
print 'Processed 900 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090323', N'PERU', N'HUANUCO', N'DOS DE MAYO', N'YANAS', 1, N'09', N'03', N'23')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090401', N'PERU', N'HUANUCO', N'HUAMALIES', N'LLATA', 1, N'09', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090402', N'PERU', N'HUANUCO', N'HUAMALIES', N'ARANCAY', 1, N'09', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090403', N'PERU', N'HUANUCO', N'HUAMALIES', N'CHAVIN DE PARIARCA', 1, N'09', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090404', N'PERU', N'HUANUCO', N'HUAMALIES', N'JACAS GRANDE', 1, N'09', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090405', N'PERU', N'HUANUCO', N'HUAMALIES', N'JIRCAN', 1, N'09', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090406', N'PERU', N'HUANUCO', N'HUAMALIES', N'MIRAFLORES', 1, N'09', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090407', N'PERU', N'HUANUCO', N'HUAMALIES', N'MONZON', 1, N'09', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090408', N'PERU', N'HUANUCO', N'HUAMALIES', N'PUNCHAO', 1, N'09', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090409', N'PERU', N'HUANUCO', N'HUAMALIES', N'PUÑOS', 1, N'09', N'04', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090410', N'PERU', N'HUANUCO', N'HUAMALIES', N'SINGA', 1, N'09', N'04', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090411', N'PERU', N'HUANUCO', N'HUAMALIES', N'TANTAMAYO', 1, N'09', N'04', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090501', N'PERU', N'HUANUCO', N'MARAÑON', N'HUACRACHUCO', 1, N'09', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090502', N'PERU', N'HUANUCO', N'MARAÑON', N'CHOLON', 1, N'09', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090505', N'PERU', N'HUANUCO', N'MARAÑON', N'SAN BUENAVENTURA', 1, N'09', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090601', N'PERU', N'HUANUCO', N'LEONCIO PRADO', N'RUPA-RUPA', 1, N'09', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090602', N'PERU', N'HUANUCO', N'LEONCIO PRADO', N'DANIEL ALOMIA ROBLES', 1, N'09', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090603', N'PERU', N'HUANUCO', N'LEONCIO PRADO', N'HERMILIO VALDIZAN', 1, N'09', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090604', N'PERU', N'HUANUCO', N'LEONCIO PRADO', N'LUYANDO', 1, N'09', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090605', N'PERU', N'HUANUCO', N'LEONCIO PRADO', N'MARIANO DAMASO BERAUN', 1, N'09', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090606', N'PERU', N'HUANUCO', N'LEONCIO PRADO', N'JOSE CRESPO Y CASTILLO', 1, N'09', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090701', N'PERU', N'HUANUCO', N'PACHITEA', N'PANAO', 1, N'09', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090702', N'PERU', N'HUANUCO', N'PACHITEA', N'CHAGLLA', 1, N'09', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090704', N'PERU', N'HUANUCO', N'PACHITEA', N'MOLINO', 1, N'09', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090706', N'PERU', N'HUANUCO', N'PACHITEA', N'UMARI', 1, N'09', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090801', N'PERU', N'HUANUCO', N'PUERTO INCA', N'HONORIA', 1, N'09', N'08', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090802', N'PERU', N'HUANUCO', N'PUERTO INCA', N'PUERTO INCA', 1, N'09', N'08', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090803', N'PERU', N'HUANUCO', N'PUERTO INCA', N'CODO DEL POZUZO', 1, N'09', N'08', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090804', N'PERU', N'HUANUCO', N'PUERTO INCA', N'TOURNAVISTA', 1, N'09', N'08', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090805', N'PERU', N'HUANUCO', N'PUERTO INCA', N'YUYAPICHIS', 1, N'09', N'08', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090901', N'PERU', N'HUANUCO', N'HUACAYBAMBA', N'HUACAYBAMBA', 1, N'09', N'09', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090902', N'PERU', N'HUANUCO', N'HUACAYBAMBA', N'PINRA', 1, N'09', N'09', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090903', N'PERU', N'HUANUCO', N'HUACAYBAMBA', N'CANCHABAMBA', 1, N'09', N'09', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'090904', N'PERU', N'HUANUCO', N'HUACAYBAMBA', N'COCHABAMBA', 1, N'09', N'09', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091001', N'PERU', N'HUANUCO', N'LAURICOCHA', N'JESUS', 1, N'09', N'10', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091002', N'PERU', N'HUANUCO', N'LAURICOCHA', N'BAÑOS', 1, N'09', N'10', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091003', N'PERU', N'HUANUCO', N'LAURICOCHA', N'SAN FRANCISCO DE ASIS', 1, N'09', N'10', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091004', N'PERU', N'HUANUCO', N'LAURICOCHA', N'QUEROPALCA', 1, N'09', N'10', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091005', N'PERU', N'HUANUCO', N'LAURICOCHA', N'SAN MIGUEL DE CAURI', 1, N'09', N'10', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091006', N'PERU', N'HUANUCO', N'LAURICOCHA', N'RONDOS', 1, N'09', N'10', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091007', N'PERU', N'HUANUCO', N'LAURICOCHA', N'JIVIA', 1, N'09', N'10', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091101', N'PERU', N'HUANUCO', N'YAROWILCA', N'CHAVINILLO', 1, N'09', N'11', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091102', N'PERU', N'HUANUCO', N'YAROWILCA', N'APARICIO POMARES', 1, N'09', N'11', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091103', N'PERU', N'HUANUCO', N'YAROWILCA', N'CAHUAC', 1, N'09', N'11', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091104', N'PERU', N'HUANUCO', N'YAROWILCA', N'CHACABAMBA', 1, N'09', N'11', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091105', N'PERU', N'HUANUCO', N'YAROWILCA', N'JACAS CHICO', 1, N'09', N'11', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091106', N'PERU', N'HUANUCO', N'YAROWILCA', N'OBAS', 1, N'09', N'11', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091107', N'PERU', N'HUANUCO', N'YAROWILCA', N'PAMPAMARCA', 1, N'09', N'11', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'091108', N'PERU', N'HUANUCO', N'YAROWILCA', N'CHORAS', 1, N'09', N'11', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100101', N'PERU', N'ICA', N'ICA', N'ICA', 1, N'10', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100102', N'PERU', N'ICA', N'ICA', N'LA TINGUIÑA', 1, N'10', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100103', N'PERU', N'ICA', N'ICA', N'LOS AQUIJES', 1, N'10', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100104', N'PERU', N'ICA', N'ICA', N'PARCONA', 1, N'10', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100105', N'PERU', N'ICA', N'ICA', N'PUEBLO NUEVO', 1, N'10', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100106', N'PERU', N'ICA', N'ICA', N'SALAS', 1, N'10', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100107', N'PERU', N'ICA', N'ICA', N'SAN JOSE DE LOS MOLINOS', 1, N'10', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100108', N'PERU', N'ICA', N'ICA', N'SAN JUAN BAUTISTA', 1, N'10', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100109', N'PERU', N'ICA', N'ICA', N'SANTIAGO', 1, N'10', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100110', N'PERU', N'ICA', N'ICA', N'SUBTANJALLA', 1, N'10', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100111', N'PERU', N'ICA', N'ICA', N'YAUCA DEL ROSARIO', 1, N'10', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100112', N'PERU', N'ICA', N'ICA', N'TATE', 1, N'10', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100113', N'PERU', N'ICA', N'ICA', N'PACHACUTEC', 1, N'10', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100114', N'PERU', N'ICA', N'ICA', N'OCUCAJE', 1, N'10', N'01', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100201', N'PERU', N'ICA', N'CHINCHA', N'CHINCHA ALTA', 1, N'10', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100202', N'PERU', N'ICA', N'CHINCHA', N'CHAVIN', 1, N'10', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100203', N'PERU', N'ICA', N'CHINCHA', N'CHINCHA BAJA', 1, N'10', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100204', N'PERU', N'ICA', N'CHINCHA', N'EL CARMEN', 1, N'10', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100205', N'PERU', N'ICA', N'CHINCHA', N'GROCIO PRADO', 1, N'10', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100206', N'PERU', N'ICA', N'CHINCHA', N'SAN PEDRO DE HUACARPANA', 1, N'10', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100207', N'PERU', N'ICA', N'CHINCHA', N'SUNAMPE', 1, N'10', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100208', N'PERU', N'ICA', N'CHINCHA', N'TAMBO DE MORA', 1, N'10', N'02', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100209', N'PERU', N'ICA', N'CHINCHA', N'ALTO LARAN', 1, N'10', N'02', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100210', N'PERU', N'ICA', N'CHINCHA', N'PUEBLO NUEVO', 1, N'10', N'02', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100211', N'PERU', N'ICA', N'CHINCHA', N'SAN JUAN DE YANAC', 1, N'10', N'02', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100301', N'PERU', N'ICA', N'NAZCA', N'NAZCA', 1, N'10', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100302', N'PERU', N'ICA', N'NAZCA', N'CHANGUILLO', 1, N'10', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100303', N'PERU', N'ICA', N'NAZCA', N'EL INGENIO', 1, N'10', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100304', N'PERU', N'ICA', N'NAZCA', N'MARCONA', 1, N'10', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100305', N'PERU', N'ICA', N'NAZCA', N'VISTA ALEGRE', 1, N'10', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100401', N'PERU', N'ICA', N'PISCO', N'PISCO', 1, N'10', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100402', N'PERU', N'ICA', N'PISCO', N'HUANCANO', 1, N'10', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100403', N'PERU', N'ICA', N'PISCO', N'HUMAY', 1, N'10', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100404', N'PERU', N'ICA', N'PISCO', N'INDEPENDENCIA', 1, N'10', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100405', N'PERU', N'ICA', N'PISCO', N'PARACAS', 1, N'10', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100406', N'PERU', N'ICA', N'PISCO', N'SAN ANDRES', 1, N'10', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100407', N'PERU', N'ICA', N'PISCO', N'SAN CLEMENTE', 1, N'10', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100408', N'PERU', N'ICA', N'PISCO', N'TUPAC AMARU INCA', 1, N'10', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100501', N'PERU', N'ICA', N'PALPA', N'PALPA', 1, N'10', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100502', N'PERU', N'ICA', N'PALPA', N'LLIPATA', 1, N'10', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100503', N'PERU', N'ICA', N'PALPA', N'RIO GRANDE', 1, N'10', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100504', N'PERU', N'ICA', N'PALPA', N'SANTA CRUZ', 1, N'10', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'100505', N'PERU', N'ICA', N'PALPA', N'TIBILLO', 1, N'10', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110101', N'PERU', N'JUNIN', N'HUANCAYO', N'HUANCAYO', 1, N'11', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110103', N'PERU', N'JUNIN', N'HUANCAYO', N'CARHUACALLANGA', 1, N'11', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110104', N'PERU', N'JUNIN', N'HUANCAYO', N'COLCA', 1, N'11', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110105', N'PERU', N'JUNIN', N'HUANCAYO', N'CULLHUAS', 1, N'11', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110106', N'PERU', N'JUNIN', N'HUANCAYO', N'CHACAPAMPA', 1, N'11', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110107', N'PERU', N'JUNIN', N'HUANCAYO', N'CHICCHE', 1, N'11', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110108', N'PERU', N'JUNIN', N'HUANCAYO', N'CHILCA', 1, N'11', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110109', N'PERU', N'JUNIN', N'HUANCAYO', N'CHONGOS ALTO', 1, N'11', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110112', N'PERU', N'JUNIN', N'HUANCAYO', N'CHUPURO', 1, N'11', N'01', N'12')
GO
print 'Processed 1000 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110113', N'PERU', N'JUNIN', N'HUANCAYO', N'EL TAMBO', 1, N'11', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110114', N'PERU', N'JUNIN', N'HUANCAYO', N'HUACRAPUQUIO', 1, N'11', N'01', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110116', N'PERU', N'JUNIN', N'HUANCAYO', N'HUALHUAS', 1, N'11', N'01', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110118', N'PERU', N'JUNIN', N'HUANCAYO', N'HUANCAN', 1, N'11', N'01', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110119', N'PERU', N'JUNIN', N'HUANCAYO', N'HUASICANCHA', 1, N'11', N'01', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110120', N'PERU', N'JUNIN', N'HUANCAYO', N'HUAYUCACHI', 1, N'11', N'01', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110121', N'PERU', N'JUNIN', N'HUANCAYO', N'INGENIO', 1, N'11', N'01', N'21')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110122', N'PERU', N'JUNIN', N'HUANCAYO', N'PARIAHUANCA', 1, N'11', N'01', N'22')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110123', N'PERU', N'JUNIN', N'HUANCAYO', N'PILCOMAYO', 1, N'11', N'01', N'23')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110124', N'PERU', N'JUNIN', N'HUANCAYO', N'PUCARA', 1, N'11', N'01', N'24')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110125', N'PERU', N'JUNIN', N'HUANCAYO', N'QUICHUAY', 1, N'11', N'01', N'25')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110126', N'PERU', N'JUNIN', N'HUANCAYO', N'QUILCAS', 1, N'11', N'01', N'26')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110127', N'PERU', N'JUNIN', N'HUANCAYO', N'SAN AGUSTIN', 1, N'11', N'01', N'27')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110128', N'PERU', N'JUNIN', N'HUANCAYO', N'SAN JERONIMO DE TUNAN', 1, N'11', N'01', N'28')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110131', N'PERU', N'JUNIN', N'HUANCAYO', N'SANTO DOMINGO DE ACOBAMBA', 1, N'11', N'01', N'31')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110132', N'PERU', N'JUNIN', N'HUANCAYO', N'SAÑO', 1, N'11', N'01', N'32')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110133', N'PERU', N'JUNIN', N'HUANCAYO', N'SAPALLANGA', 1, N'11', N'01', N'33')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110134', N'PERU', N'JUNIN', N'HUANCAYO', N'SICAYA', 1, N'11', N'01', N'34')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110136', N'PERU', N'JUNIN', N'HUANCAYO', N'VIQUES', 1, N'11', N'01', N'36')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110201', N'PERU', N'JUNIN', N'CONCEPCION', N'CONCEPCION', 1, N'11', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110202', N'PERU', N'JUNIN', N'CONCEPCION', N'ACO', 1, N'11', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110203', N'PERU', N'JUNIN', N'CONCEPCION', N'ANDAMARCA', 1, N'11', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110204', N'PERU', N'JUNIN', N'CONCEPCION', N'COMAS', 1, N'11', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110205', N'PERU', N'JUNIN', N'CONCEPCION', N'COCHAS', 1, N'11', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110206', N'PERU', N'JUNIN', N'CONCEPCION', N'CHAMBARA', 1, N'11', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110207', N'PERU', N'JUNIN', N'CONCEPCION', N'HEROINAS TOLEDO', 1, N'11', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110208', N'PERU', N'JUNIN', N'CONCEPCION', N'MANZANARES', 1, N'11', N'02', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110209', N'PERU', N'JUNIN', N'CONCEPCION', N'MARISCAL CASTILLA', 1, N'11', N'02', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110210', N'PERU', N'JUNIN', N'CONCEPCION', N'MATAHUASI', 1, N'11', N'02', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110211', N'PERU', N'JUNIN', N'CONCEPCION', N'MITO', 1, N'11', N'02', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110212', N'PERU', N'JUNIN', N'CONCEPCION', N'NUEVE DE JULIO', 1, N'11', N'02', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110213', N'PERU', N'JUNIN', N'CONCEPCION', N'ORCOTUNA', 1, N'11', N'02', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110214', N'PERU', N'JUNIN', N'CONCEPCION', N'SANTA ROSA DE OCOPA', 1, N'11', N'02', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110215', N'PERU', N'JUNIN', N'CONCEPCION', N'SAN JOSE DE QUERO', 1, N'11', N'02', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110301', N'PERU', N'JUNIN', N'JAUJA', N'JAUJA', 1, N'11', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110302', N'PERU', N'JUNIN', N'JAUJA', N'ACOLLA', 1, N'11', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110303', N'PERU', N'JUNIN', N'JAUJA', N'APATA', 1, N'11', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110304', N'PERU', N'JUNIN', N'JAUJA', N'ATAURA', 1, N'11', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110305', N'PERU', N'JUNIN', N'JAUJA', N'CANCHAYLLO', 1, N'11', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110306', N'PERU', N'JUNIN', N'JAUJA', N'EL MANTARO', 1, N'11', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110307', N'PERU', N'JUNIN', N'JAUJA', N'HUAMALI', 1, N'11', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110308', N'PERU', N'JUNIN', N'JAUJA', N'HUARIPAMPA', 1, N'11', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110309', N'PERU', N'JUNIN', N'JAUJA', N'HUERTAS', 1, N'11', N'03', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110310', N'PERU', N'JUNIN', N'JAUJA', N'JANJAILLO', 1, N'11', N'03', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110311', N'PERU', N'JUNIN', N'JAUJA', N'JULCAN', 1, N'11', N'03', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110312', N'PERU', N'JUNIN', N'JAUJA', N'LEONOR ORDOÑEZ', 1, N'11', N'03', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110313', N'PERU', N'JUNIN', N'JAUJA', N'LLOCLLAPAMPA', 1, N'11', N'03', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110314', N'PERU', N'JUNIN', N'JAUJA', N'MARCO', 1, N'11', N'03', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110315', N'PERU', N'JUNIN', N'JAUJA', N'MASMA', 1, N'11', N'03', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110316', N'PERU', N'JUNIN', N'JAUJA', N'MOLINOS', 1, N'11', N'03', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110317', N'PERU', N'JUNIN', N'JAUJA', N'MONOBAMBA', 1, N'11', N'03', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110318', N'PERU', N'JUNIN', N'JAUJA', N'MUQUI', 1, N'11', N'03', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110319', N'PERU', N'JUNIN', N'JAUJA', N'MUQUIYAUYO', 1, N'11', N'03', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110320', N'PERU', N'JUNIN', N'JAUJA', N'PACA', 1, N'11', N'03', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110321', N'PERU', N'JUNIN', N'JAUJA', N'PACCHA', 1, N'11', N'03', N'21')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110322', N'PERU', N'JUNIN', N'JAUJA', N'PANCAN', 1, N'11', N'03', N'22')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110323', N'PERU', N'JUNIN', N'JAUJA', N'PARCO', 1, N'11', N'03', N'23')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110324', N'PERU', N'JUNIN', N'JAUJA', N'POMACANCHA', 1, N'11', N'03', N'24')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110325', N'PERU', N'JUNIN', N'JAUJA', N'RICRAN', 1, N'11', N'03', N'25')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110326', N'PERU', N'JUNIN', N'JAUJA', N'SAN LORENZO', 1, N'11', N'03', N'26')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110327', N'PERU', N'JUNIN', N'JAUJA', N'SAN PEDRO DE CHUNAN', 1, N'11', N'03', N'27')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110328', N'PERU', N'JUNIN', N'JAUJA', N'SINCOS', 1, N'11', N'03', N'28')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110329', N'PERU', N'JUNIN', N'JAUJA', N'TUNAN MARCA', 1, N'11', N'03', N'29')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110330', N'PERU', N'JUNIN', N'JAUJA', N'YAULI', 1, N'11', N'03', N'30')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110331', N'PERU', N'JUNIN', N'JAUJA', N'CURICACA', 1, N'11', N'03', N'31')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110332', N'PERU', N'JUNIN', N'JAUJA', N'MASMA CHICCHE', 1, N'11', N'03', N'32')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110333', N'PERU', N'JUNIN', N'JAUJA', N'SAUSA', 1, N'11', N'03', N'33')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110334', N'PERU', N'JUNIN', N'JAUJA', N'YAUYOS', 1, N'11', N'03', N'34')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110401', N'PERU', N'JUNIN', N'JUNIN', N'JUNIN', 1, N'11', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110402', N'PERU', N'JUNIN', N'JUNIN', N'CARHUAMAYO', 1, N'11', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110403', N'PERU', N'JUNIN', N'JUNIN', N'ONDORES', 1, N'11', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110404', N'PERU', N'JUNIN', N'JUNIN', N'ULCUMAYO', 1, N'11', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110501', N'PERU', N'JUNIN', N'TARMA', N'TARMA', 1, N'11', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110502', N'PERU', N'JUNIN', N'TARMA', N'ACOBAMBA', 1, N'11', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110503', N'PERU', N'JUNIN', N'TARMA', N'HUARICOLCA', 1, N'11', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110504', N'PERU', N'JUNIN', N'TARMA', N'HUASAHUASI', 1, N'11', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110505', N'PERU', N'JUNIN', N'TARMA', N'LA UNION', 1, N'11', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110506', N'PERU', N'JUNIN', N'TARMA', N'PALCA', 1, N'11', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110507', N'PERU', N'JUNIN', N'TARMA', N'PALCAMAYO', 1, N'11', N'05', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110508', N'PERU', N'JUNIN', N'TARMA', N'SAN PEDRO DE CAJAS', 1, N'11', N'05', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110509', N'PERU', N'JUNIN', N'TARMA', N'TAPO', 1, N'11', N'05', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110601', N'PERU', N'JUNIN', N'YAULI', N'LA OROYA', 1, N'11', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110602', N'PERU', N'JUNIN', N'YAULI', N'CHACAPALPA', 1, N'11', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110603', N'PERU', N'JUNIN', N'YAULI', N'HUAY HUAY', 1, N'11', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110604', N'PERU', N'JUNIN', N'YAULI', N'MARCAPOMACOCHA', 1, N'11', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110605', N'PERU', N'JUNIN', N'YAULI', N'MOROCOCHA', 1, N'11', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110606', N'PERU', N'JUNIN', N'YAULI', N'PACCHA', 1, N'11', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110607', N'PERU', N'JUNIN', N'YAULI', N'SANTA BARBARA DE CARHUACAYAN', 1, N'11', N'06', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110608', N'PERU', N'JUNIN', N'YAULI', N'SUITUCANCHA', 1, N'11', N'06', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110609', N'PERU', N'JUNIN', N'YAULI', N'YAULI', 1, N'11', N'06', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110610', N'PERU', N'JUNIN', N'YAULI', N'SANTA ROSA DE SACCO', 1, N'11', N'06', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110701', N'PERU', N'JUNIN', N'SATIPO', N'SATIPO', 1, N'11', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110702', N'PERU', N'JUNIN', N'SATIPO', N'COVIRIALI', 1, N'11', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110703', N'PERU', N'JUNIN', N'SATIPO', N'LLAYLLA', 1, N'11', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110704', N'PERU', N'JUNIN', N'SATIPO', N'MAZAMARI', 1, N'11', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110705', N'PERU', N'JUNIN', N'SATIPO', N'PAMPA HERMOSA', 1, N'11', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110706', N'PERU', N'JUNIN', N'SATIPO', N'PANGOA', 1, N'11', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110707', N'PERU', N'JUNIN', N'SATIPO', N'RIO NEGRO', 1, N'11', N'07', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110708', N'PERU', N'JUNIN', N'SATIPO', N'RIO TAMBO', 1, N'11', N'07', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110801', N'PERU', N'JUNIN', N'CHANCHAMAYO', N'CHANCHAMAYO', 1, N'11', N'08', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110802', N'PERU', N'JUNIN', N'CHANCHAMAYO', N'SAN RAMON', 1, N'11', N'08', N'02')
GO
print 'Processed 1100 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110803', N'PERU', N'JUNIN', N'CHANCHAMAYO', N'VITOC', 1, N'11', N'08', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110804', N'PERU', N'JUNIN', N'CHANCHAMAYO', N'SAN LUIS DE SHUARO', 1, N'11', N'08', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110805', N'PERU', N'JUNIN', N'CHANCHAMAYO', N'PICHANAQUI', 1, N'11', N'08', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110806', N'PERU', N'JUNIN', N'CHANCHAMAYO', N'PERENE', 1, N'11', N'08', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110901', N'PERU', N'JUNIN', N'CHUPACA', N'CHUPACA', 1, N'11', N'09', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110902', N'PERU', N'JUNIN', N'CHUPACA', N'AHUAC', 1, N'11', N'09', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110903', N'PERU', N'JUNIN', N'CHUPACA', N'CHONGOS BAJO', 1, N'11', N'09', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110904', N'PERU', N'JUNIN', N'CHUPACA', N'HUACHAC', 1, N'11', N'09', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110905', N'PERU', N'JUNIN', N'CHUPACA', N'HUAMANCACA CHICO', 1, N'11', N'09', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110906', N'PERU', N'JUNIN', N'CHUPACA', N'SAN JUAN DE YSCOS', 1, N'11', N'09', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110907', N'PERU', N'JUNIN', N'CHUPACA', N'SAN JUAN DE JARPA', 1, N'11', N'09', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110908', N'PERU', N'JUNIN', N'CHUPACA', N'TRES DE DICIEMBRE', 1, N'11', N'09', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'110909', N'PERU', N'JUNIN', N'CHUPACA', N'YANACANCHA', 1, N'11', N'09', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120101', N'PERU', N'LA LIBERTAD', N'TRUJILLO', N'TRUJILLO', 1, N'12', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120102', N'PERU', N'LA LIBERTAD', N'TRUJILLO', N'HUANCHACO', 1, N'12', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120103', N'PERU', N'LA LIBERTAD', N'TRUJILLO', N'LAREDO', 1, N'12', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120104', N'PERU', N'LA LIBERTAD', N'TRUJILLO', N'MOCHE', 1, N'12', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120105', N'PERU', N'LA LIBERTAD', N'TRUJILLO', N'SALAVERRY', 1, N'12', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120106', N'PERU', N'LA LIBERTAD', N'TRUJILLO', N'SIMBAL', 1, N'12', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120107', N'PERU', N'LA LIBERTAD', N'TRUJILLO', N'VICTOR LARCO HERRERA', 1, N'12', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120109', N'PERU', N'LA LIBERTAD', N'TRUJILLO', N'POROTO', 1, N'12', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120110', N'PERU', N'LA LIBERTAD', N'TRUJILLO', N'EL PORVENIR', 1, N'12', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120111', N'PERU', N'LA LIBERTAD', N'TRUJILLO', N'LA ESPERANZA', 1, N'12', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120112', N'PERU', N'LA LIBERTAD', N'TRUJILLO', N'FLORENCIA DE MORA', 1, N'12', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120201', N'PERU', N'LA LIBERTAD', N'BOLIVAR', N'BOLIVAR', 1, N'12', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120202', N'PERU', N'LA LIBERTAD', N'BOLIVAR', N'BAMBAMARCA', 1, N'12', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120203', N'PERU', N'LA LIBERTAD', N'BOLIVAR', N'CONDORMARCA', 1, N'12', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120204', N'PERU', N'LA LIBERTAD', N'BOLIVAR', N'LONGOTEA', 1, N'12', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120205', N'PERU', N'LA LIBERTAD', N'BOLIVAR', N'UCUNCHA', 1, N'12', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120206', N'PERU', N'LA LIBERTAD', N'BOLIVAR', N'UCHUMARCA', 1, N'12', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120301', N'PERU', N'LA LIBERTAD', N'SANCHEZ CARRION', N'HUAMACHUCO', 1, N'12', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120302', N'PERU', N'LA LIBERTAD', N'SANCHEZ CARRION', N'COCHORCO', 1, N'12', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120303', N'PERU', N'LA LIBERTAD', N'SANCHEZ CARRION', N'CURGOS', 1, N'12', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120304', N'PERU', N'LA LIBERTAD', N'SANCHEZ CARRION', N'CHUGAY', 1, N'12', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120305', N'PERU', N'LA LIBERTAD', N'SANCHEZ CARRION', N'MARCABAL', 1, N'12', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120306', N'PERU', N'LA LIBERTAD', N'SANCHEZ CARRION', N'SANAGORAN', 1, N'12', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120307', N'PERU', N'LA LIBERTAD', N'SANCHEZ CARRION', N'SARIN', 1, N'12', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120308', N'PERU', N'LA LIBERTAD', N'SANCHEZ CARRION', N'SARTIMBAMBA', 1, N'12', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120401', N'PERU', N'LA LIBERTAD', N'OTUZCO', N'OTUZCO', 1, N'12', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120402', N'PERU', N'LA LIBERTAD', N'OTUZCO', N'AGALLPAMPA', 1, N'12', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120403', N'PERU', N'LA LIBERTAD', N'OTUZCO', N'CHARAT', 1, N'12', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120404', N'PERU', N'LA LIBERTAD', N'OTUZCO', N'HUARANCHAL', 1, N'12', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120405', N'PERU', N'LA LIBERTAD', N'OTUZCO', N'LA CUESTA', 1, N'12', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120408', N'PERU', N'LA LIBERTAD', N'OTUZCO', N'PARANDAY', 1, N'12', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120409', N'PERU', N'LA LIBERTAD', N'OTUZCO', N'SALPO', 1, N'12', N'04', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120410', N'PERU', N'LA LIBERTAD', N'OTUZCO', N'SINSICAP', 1, N'12', N'04', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120411', N'PERU', N'LA LIBERTAD', N'OTUZCO', N'USQUIL', 1, N'12', N'04', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120413', N'PERU', N'LA LIBERTAD', N'OTUZCO', N'MACHE', 1, N'12', N'04', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120501', N'PERU', N'LA LIBERTAD', N'PACASMAYO', N'SAN PEDRO DE LLOC', 1, N'12', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120503', N'PERU', N'LA LIBERTAD', N'PACASMAYO', N'GUADALUPE', 1, N'12', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120504', N'PERU', N'LA LIBERTAD', N'PACASMAYO', N'JEQUETEPEQUE', 1, N'12', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120506', N'PERU', N'LA LIBERTAD', N'PACASMAYO', N'PACASMAYO', 1, N'12', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120508', N'PERU', N'LA LIBERTAD', N'PACASMAYO', N'SAN JOSE', 1, N'12', N'05', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120601', N'PERU', N'LA LIBERTAD', N'PATAZ', N'TAYABAMBA', 1, N'12', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120602', N'PERU', N'LA LIBERTAD', N'PATAZ', N'BULDIBUYO', 1, N'12', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120603', N'PERU', N'LA LIBERTAD', N'PATAZ', N'CHILLIA', 1, N'12', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120604', N'PERU', N'LA LIBERTAD', N'PATAZ', N'HUAYLILLAS', 1, N'12', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120605', N'PERU', N'LA LIBERTAD', N'PATAZ', N'HUANCASPATA', 1, N'12', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120606', N'PERU', N'LA LIBERTAD', N'PATAZ', N'HUAYO', 1, N'12', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120607', N'PERU', N'LA LIBERTAD', N'PATAZ', N'ONGON', 1, N'12', N'06', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120608', N'PERU', N'LA LIBERTAD', N'PATAZ', N'PARCOY', 1, N'12', N'06', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120609', N'PERU', N'LA LIBERTAD', N'PATAZ', N'PATAZ', 1, N'12', N'06', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120610', N'PERU', N'LA LIBERTAD', N'PATAZ', N'PIAS', 1, N'12', N'06', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120611', N'PERU', N'LA LIBERTAD', N'PATAZ', N'TAURIJA', 1, N'12', N'06', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120612', N'PERU', N'LA LIBERTAD', N'PATAZ', N'URPAY', 1, N'12', N'06', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120613', N'PERU', N'LA LIBERTAD', N'PATAZ', N'SANTIAGO DE CHALLAS', 1, N'12', N'06', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120701', N'PERU', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'SANTIAGO DE CHUCO', 1, N'12', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120702', N'PERU', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'CACHICADAN', 1, N'12', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120703', N'PERU', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'MOLLEBAMBA', 1, N'12', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120704', N'PERU', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'MOLLEPATA', 1, N'12', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120705', N'PERU', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'QUIRUVILCA', 1, N'12', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120706', N'PERU', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'SANTA CRUZ DE CHUCA', 1, N'12', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120707', N'PERU', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'SITABAMBA', 1, N'12', N'07', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120708', N'PERU', N'LA LIBERTAD', N'SANTIAGO DE CHUCO', N'ANGASMARCA', 1, N'12', N'07', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120801', N'PERU', N'LA LIBERTAD', N'ASCOPE', N'ASCOPE', 1, N'12', N'08', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120802', N'PERU', N'LA LIBERTAD', N'ASCOPE', N'CHICAMA', 1, N'12', N'08', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120803', N'PERU', N'LA LIBERTAD', N'ASCOPE', N'CHOCOPE', 1, N'12', N'08', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120804', N'PERU', N'LA LIBERTAD', N'ASCOPE', N'SANTIAGO DE CAO', 1, N'12', N'08', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120805', N'PERU', N'LA LIBERTAD', N'ASCOPE', N'MAGDALENA DE CAO', 1, N'12', N'08', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120806', N'PERU', N'LA LIBERTAD', N'ASCOPE', N'PAIJAN', 1, N'12', N'08', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120807', N'PERU', N'LA LIBERTAD', N'ASCOPE', N'RAZURI', 1, N'12', N'08', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120808', N'PERU', N'LA LIBERTAD', N'ASCOPE', N'CASA GRANDE', 1, N'12', N'08', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120901', N'PERU', N'LA LIBERTAD', N'CHEPEN', N'CHEPEN', 1, N'12', N'09', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120902', N'PERU', N'LA LIBERTAD', N'CHEPEN', N'PACANGA', 1, N'12', N'09', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'120903', N'PERU', N'LA LIBERTAD', N'CHEPEN', N'PUEBLO NUEVO', 1, N'12', N'09', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'121001', N'PERU', N'LA LIBERTAD', N'JULCAN', N'JULCAN', 1, N'12', N'10', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'121002', N'PERU', N'LA LIBERTAD', N'JULCAN', N'CARABAMBA', 1, N'12', N'10', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'121003', N'PERU', N'LA LIBERTAD', N'JULCAN', N'CALAMARCA', 1, N'12', N'10', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'121004', N'PERU', N'LA LIBERTAD', N'JULCAN', N'HUASO', 1, N'12', N'10', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'121101', N'PERU', N'LA LIBERTAD', N'GRAN CHIMU', N'CASCAS', 1, N'12', N'11', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'121102', N'PERU', N'LA LIBERTAD', N'GRAN CHIMU', N'LUCMA', 1, N'12', N'11', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'121103', N'PERU', N'LA LIBERTAD', N'GRAN CHIMU', N'MARMOT', 1, N'12', N'11', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'121104', N'PERU', N'LA LIBERTAD', N'GRAN CHIMU', N'SAYAPULLO', 1, N'12', N'11', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'121201', N'PERU', N'LA LIBERTAD', N'VIRU', N'VIRU', 1, N'12', N'12', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'121202', N'PERU', N'LA LIBERTAD', N'VIRU', N'CHAO', 1, N'12', N'12', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'121203', N'PERU', N'LA LIBERTAD', N'VIRU', N'GUADALUPITO', 1, N'12', N'12', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130101', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'CHICLAYO', 1, N'13', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130102', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'CHONGOYAPE', 1, N'13', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130103', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'ETEN', 1, N'13', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130104', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'ETEN PUERTO', 1, N'13', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130105', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'LAGUNAS', 1, N'13', N'01', N'05')
GO
print 'Processed 1200 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130106', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'MONSEFU', 1, N'13', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130107', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'NUEVA ARICA', 1, N'13', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130108', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'OYOTUN', 1, N'13', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130109', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'PICSI', 1, N'13', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130110', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'PIMENTEL', 1, N'13', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130111', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'REQUE', 1, N'13', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130112', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'JOSE LEONARDO ORTIZ', 1, N'13', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130113', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'SANTA ROSA', 1, N'13', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130114', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'SAÑA', 1, N'13', N'01', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130115', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'LA VICTORIA', 1, N'13', N'01', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130116', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'CAYALTI', 1, N'13', N'01', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130117', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'PATAPO', 1, N'13', N'01', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130118', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'POMALCA', 1, N'13', N'01', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130119', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'PUCALA', 1, N'13', N'01', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130120', N'PERU', N'LAMBAYEQUE', N'CHICLAYO', N'TUMAN', 1, N'13', N'01', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130201', N'PERU', N'LAMBAYEQUE', N'FERREÑAFE', N'FERREÑAFE', 1, N'13', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130202', N'PERU', N'LAMBAYEQUE', N'FERREÑAFE', N'INCAHUASI', 1, N'13', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130203', N'PERU', N'LAMBAYEQUE', N'FERREÑAFE', N'CAÑARIS', 1, N'13', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130204', N'PERU', N'LAMBAYEQUE', N'FERREÑAFE', N'PITIPO', 1, N'13', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130205', N'PERU', N'LAMBAYEQUE', N'FERREÑAFE', N'PUEBLO NUEVO', 1, N'13', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130206', N'PERU', N'LAMBAYEQUE', N'FERREÑAFE', N'MANUEL ANTONIO MESONES MURO', 1, N'13', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130301', N'PERU', N'LAMBAYEQUE', N'LAMBAYEQUE', N'LAMBAYEQUE', 1, N'13', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130302', N'PERU', N'LAMBAYEQUE', N'LAMBAYEQUE', N'CHOCHOPE', 1, N'13', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130303', N'PERU', N'LAMBAYEQUE', N'LAMBAYEQUE', N'ILLIMO', 1, N'13', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130304', N'PERU', N'LAMBAYEQUE', N'LAMBAYEQUE', N'JAYANCA', 1, N'13', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130305', N'PERU', N'LAMBAYEQUE', N'LAMBAYEQUE', N'MOCHUMI', 1, N'13', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130306', N'PERU', N'LAMBAYEQUE', N'LAMBAYEQUE', N'MORROPE', 1, N'13', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130307', N'PERU', N'LAMBAYEQUE', N'LAMBAYEQUE', N'MOTUPE', 1, N'13', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130308', N'PERU', N'LAMBAYEQUE', N'LAMBAYEQUE', N'OLMOS', 1, N'13', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130309', N'PERU', N'LAMBAYEQUE', N'LAMBAYEQUE', N'PACORA', 1, N'13', N'03', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130310', N'PERU', N'LAMBAYEQUE', N'LAMBAYEQUE', N'SALAS', 1, N'13', N'03', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130311', N'PERU', N'LAMBAYEQUE', N'LAMBAYEQUE', N'SAN JOSE', 1, N'13', N'03', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'130312', N'PERU', N'LAMBAYEQUE', N'LAMBAYEQUE', N'TUCUME', 1, N'13', N'03', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140101', N'PERU', N'LIMA', N'LIMA', N'LIMA', 1, N'14', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140102', N'PERU', N'LIMA', N'LIMA', N'ANCON', 1, N'14', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140103', N'PERU', N'LIMA', N'LIMA', N'ATE', 1, N'14', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140104', N'PERU', N'LIMA', N'LIMA', N'BREÑA', 1, N'14', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140105', N'PERU', N'LIMA', N'LIMA', N'CARABAYLLO', 1, N'14', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140106', N'PERU', N'LIMA', N'LIMA', N'COMAS', 1, N'14', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140107', N'PERU', N'LIMA', N'LIMA', N'CHACLACAYO', 1, N'14', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140108', N'PERU', N'LIMA', N'LIMA', N'CHORRILLOS', 1, N'14', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140109', N'PERU', N'LIMA', N'LIMA', N'LA VICTORIA', 1, N'14', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140110', N'PERU', N'LIMA', N'LIMA', N'LA MOLINA', 1, N'14', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140111', N'PERU', N'LIMA', N'LIMA', N'LINCE', 1, N'14', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140112', N'PERU', N'LIMA', N'LIMA', N'LURIGANCHO', 1, N'14', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140113', N'PERU', N'LIMA', N'LIMA', N'LURIN', 1, N'14', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140114', N'PERU', N'LIMA', N'LIMA', N'MAGDALENA DEL MAR', 1, N'14', N'01', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140115', N'PERU', N'LIMA', N'LIMA', N'MIRAFLORES', 1, N'14', N'01', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140116', N'PERU', N'LIMA', N'LIMA', N'PACHACAMAC', 1, N'14', N'01', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140117', N'PERU', N'LIMA', N'LIMA', N'PUEBLO LIBRE', 1, N'14', N'01', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140118', N'PERU', N'LIMA', N'LIMA', N'PUCUSANA', 1, N'14', N'01', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140119', N'PERU', N'LIMA', N'LIMA', N'PUENTE PIEDRA', 1, N'14', N'01', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140120', N'PERU', N'LIMA', N'LIMA', N'PUNTA HERMOSA', 1, N'14', N'01', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140121', N'PERU', N'LIMA', N'LIMA', N'PUNTA NEGRA', 1, N'14', N'01', N'21')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140122', N'PERU', N'LIMA', N'LIMA', N'RIMAC', 1, N'14', N'01', N'22')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140123', N'PERU', N'LIMA', N'LIMA', N'SAN BARTOLO', 1, N'14', N'01', N'23')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140124', N'PERU', N'LIMA', N'LIMA', N'SAN ISIDRO', 1, N'14', N'01', N'24')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140125', N'PERU', N'LIMA', N'LIMA', N'BARRANCO', 1, N'14', N'01', N'25')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140126', N'PERU', N'LIMA', N'LIMA', N'SAN MARTIN DE PORRES', 1, N'14', N'01', N'26')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140127', N'PERU', N'LIMA', N'LIMA', N'SAN MIGUEL', 1, N'14', N'01', N'27')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140128', N'PERU', N'LIMA', N'LIMA', N'SANTA MARIA DEL MAR', 1, N'14', N'01', N'28')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140129', N'PERU', N'LIMA', N'LIMA', N'SANTA ROSA', 1, N'14', N'01', N'29')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140130', N'PERU', N'LIMA', N'LIMA', N'SANTIAGO DE SURCO', 1, N'14', N'01', N'30')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140131', N'PERU', N'LIMA', N'LIMA', N'SURQUILLO', 1, N'14', N'01', N'31')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140132', N'PERU', N'LIMA', N'LIMA', N'VILLA MARIA DEL TRIUNFO', 1, N'14', N'01', N'32')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140133', N'PERU', N'LIMA', N'LIMA', N'JESUS MARIA', 1, N'14', N'01', N'33')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140134', N'PERU', N'LIMA', N'LIMA', N'INDEPENDENCIA', 1, N'14', N'01', N'34')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140135', N'PERU', N'LIMA', N'LIMA', N'EL AGUSTINO', 1, N'14', N'01', N'35')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140136', N'PERU', N'LIMA', N'LIMA', N'SAN JUAN DE MIRAFLORES', 1, N'14', N'01', N'36')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140137', N'PERU', N'LIMA', N'LIMA', N'SAN JUAN DE LURIGANCHO', 1, N'14', N'01', N'37')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140138', N'PERU', N'LIMA', N'LIMA', N'SAN LUIS', 1, N'14', N'01', N'38')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140139', N'PERU', N'LIMA', N'LIMA', N'CIENEGUILLA', 1, N'14', N'01', N'39')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140140', N'PERU', N'LIMA', N'LIMA', N'SAN BORJA', 1, N'14', N'01', N'40')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140141', N'PERU', N'LIMA', N'LIMA', N'VILLA EL SALVADOR', 1, N'14', N'01', N'41')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140142', N'PERU', N'LIMA', N'LIMA', N'LOS OLIVOS', 1, N'14', N'01', N'42')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140143', N'PERU', N'LIMA', N'LIMA', N'SANTA ANITA', 1, N'14', N'01', N'43')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140201', N'PERU', N'LIMA', N'CAJATAMBO', N'CAJATAMBO', 1, N'14', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140205', N'PERU', N'LIMA', N'CAJATAMBO', N'COPA', 1, N'14', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140206', N'PERU', N'LIMA', N'CAJATAMBO', N'GORGOR', 1, N'14', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140207', N'PERU', N'LIMA', N'CAJATAMBO', N'HUANCAPON', 1, N'14', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140208', N'PERU', N'LIMA', N'CAJATAMBO', N'MANAS', 1, N'14', N'02', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140301', N'PERU', N'LIMA', N'CANTA', N'CANTA', 1, N'14', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140302', N'PERU', N'LIMA', N'CANTA', N'ARAHUAY', 1, N'14', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140303', N'PERU', N'LIMA', N'CANTA', N'HUAMANTANGA', 1, N'14', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140304', N'PERU', N'LIMA', N'CANTA', N'HUAROS', 1, N'14', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140305', N'PERU', N'LIMA', N'CANTA', N'LACHAQUI', 1, N'14', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140306', N'PERU', N'LIMA', N'CANTA', N'SAN BUENAVENTURA', 1, N'14', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140307', N'PERU', N'LIMA', N'CANTA', N'SANTA ROSA DE QUIVES', 1, N'14', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140401', N'PERU', N'LIMA', N'CAÑETE', N'SAN VICENTE DE CAÑETE', 1, N'14', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140402', N'PERU', N'LIMA', N'CAÑETE', N'CALANGO', 1, N'14', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140403', N'PERU', N'LIMA', N'CAÑETE', N'CERRO AZUL', 1, N'14', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140404', N'PERU', N'LIMA', N'CAÑETE', N'COAYLLO', 1, N'14', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140405', N'PERU', N'LIMA', N'CAÑETE', N'CHILCA', 1, N'14', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140406', N'PERU', N'LIMA', N'CAÑETE', N'IMPERIAL', 1, N'14', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140407', N'PERU', N'LIMA', N'CAÑETE', N'LUNAHUANA', 1, N'14', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140408', N'PERU', N'LIMA', N'CAÑETE', N'MALA', 1, N'14', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140409', N'PERU', N'LIMA', N'CAÑETE', N'NUEVO IMPERIAL', 1, N'14', N'04', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140410', N'PERU', N'LIMA', N'CAÑETE', N'PACARAN', 1, N'14', N'04', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140411', N'PERU', N'LIMA', N'CAÑETE', N'QUILMANA', 1, N'14', N'04', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140412', N'PERU', N'LIMA', N'CAÑETE', N'SAN ANTONIO', 1, N'14', N'04', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140413', N'PERU', N'LIMA', N'CAÑETE', N'SAN LUIS', 1, N'14', N'04', N'13')
GO
print 'Processed 1300 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140414', N'PERU', N'LIMA', N'CAÑETE', N'SANTA CRUZ DE FLORES', 1, N'14', N'04', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140415', N'PERU', N'LIMA', N'CAÑETE', N'ZUÑIGA', 1, N'14', N'04', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140416', N'PERU', N'LIMA', N'CAÑETE', N'ASIA', 1, N'14', N'04', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140501', N'PERU', N'LIMA', N'HUAURA', N'HUACHO', 1, N'14', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140502', N'PERU', N'LIMA', N'HUAURA', N'AMBAR', 1, N'14', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140504', N'PERU', N'LIMA', N'HUAURA', N'CALETA DE CARQUIN', 1, N'14', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140505', N'PERU', N'LIMA', N'HUAURA', N'CHECRAS', 1, N'14', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140506', N'PERU', N'LIMA', N'HUAURA', N'HUALMAY', 1, N'14', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140507', N'PERU', N'LIMA', N'HUAURA', N'HUAURA', 1, N'14', N'05', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140508', N'PERU', N'LIMA', N'HUAURA', N'LEONCIO PRADO', 1, N'14', N'05', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140509', N'PERU', N'LIMA', N'HUAURA', N'PACCHO', 1, N'14', N'05', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140511', N'PERU', N'LIMA', N'HUAURA', N'SANTA LEONOR', 1, N'14', N'05', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140512', N'PERU', N'LIMA', N'HUAURA', N'SANTA MARIA', 1, N'14', N'05', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140513', N'PERU', N'LIMA', N'HUAURA', N'SAYAN', 1, N'14', N'05', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140516', N'PERU', N'LIMA', N'HUAURA', N'VEGUETA', 1, N'14', N'05', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140601', N'PERU', N'LIMA', N'HUAROCHIRI', N'MATUCANA', 1, N'14', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140602', N'PERU', N'LIMA', N'HUAROCHIRI', N'ANTIOQUIA', 1, N'14', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140603', N'PERU', N'LIMA', N'HUAROCHIRI', N'CALLAHUANCA', 1, N'14', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140604', N'PERU', N'LIMA', N'HUAROCHIRI', N'CARAMPOMA', 1, N'14', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140605', N'PERU', N'LIMA', N'HUAROCHIRI', N'CASTA', 1, N'14', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140606', N'PERU', N'LIMA', N'HUAROCHIRI', N'SAN JOSE DE LOS CHORRILLOS', 1, N'14', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140607', N'PERU', N'LIMA', N'HUAROCHIRI', N'CHICLA', 1, N'14', N'06', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140608', N'PERU', N'LIMA', N'HUAROCHIRI', N'HUANZA', 1, N'14', N'06', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140609', N'PERU', N'LIMA', N'HUAROCHIRI', N'HUAROCHIRI', 1, N'14', N'06', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140610', N'PERU', N'LIMA', N'HUAROCHIRI', N'LAHUAYTAMBO', 1, N'14', N'06', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140611', N'PERU', N'LIMA', N'HUAROCHIRI', N'LANGA', 1, N'14', N'06', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140612', N'PERU', N'LIMA', N'HUAROCHIRI', N'MARIATANA', 1, N'14', N'06', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140613', N'PERU', N'LIMA', N'HUAROCHIRI', N'RICARDO PALMA', 1, N'14', N'06', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140614', N'PERU', N'LIMA', N'HUAROCHIRI', N'SAN ANDRES DE TUPICOCHA', 1, N'14', N'06', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140615', N'PERU', N'LIMA', N'HUAROCHIRI', N'SAN ANTONIO', 1, N'14', N'06', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140616', N'PERU', N'LIMA', N'HUAROCHIRI', N'SAN BARTOLOME', 1, N'14', N'06', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140617', N'PERU', N'LIMA', N'HUAROCHIRI', N'SAN DAMIAN', 1, N'14', N'06', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140618', N'PERU', N'LIMA', N'HUAROCHIRI', N'SANGALLAYA', 1, N'14', N'06', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140619', N'PERU', N'LIMA', N'HUAROCHIRI', N'SAN JUAN DE TANTARANCHE', 1, N'14', N'06', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140620', N'PERU', N'LIMA', N'HUAROCHIRI', N'SAN LORENZO DE QUINTI', 1, N'14', N'06', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140621', N'PERU', N'LIMA', N'HUAROCHIRI', N'SAN MATEO', 1, N'14', N'06', N'21')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140622', N'PERU', N'LIMA', N'HUAROCHIRI', N'SAN MATEO DE OTAO', 1, N'14', N'06', N'22')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140623', N'PERU', N'LIMA', N'HUAROCHIRI', N'SAN PEDRO DE HUANCAYRE', 1, N'14', N'06', N'23')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140624', N'PERU', N'LIMA', N'HUAROCHIRI', N'SANTA CRUZ DE COCACHACRA', 1, N'14', N'06', N'24')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140625', N'PERU', N'LIMA', N'HUAROCHIRI', N'SANTA EULALIA', 1, N'14', N'06', N'25')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140626', N'PERU', N'LIMA', N'HUAROCHIRI', N'SANTIAGO DE ANCHUCAYA', 1, N'14', N'06', N'26')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140627', N'PERU', N'LIMA', N'HUAROCHIRI', N'SANTIAGO DE TUNA', 1, N'14', N'06', N'27')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140628', N'PERU', N'LIMA', N'HUAROCHIRI', N'SANTO DOMINGO DE LOS OLLEROS', 1, N'14', N'06', N'28')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140629', N'PERU', N'LIMA', N'HUAROCHIRI', N'SURCO', 1, N'14', N'06', N'29')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140630', N'PERU', N'LIMA', N'HUAROCHIRI', N'HUACHUPAMPA', 1, N'14', N'06', N'30')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140631', N'PERU', N'LIMA', N'HUAROCHIRI', N'LARAOS', 1, N'14', N'06', N'31')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140632', N'PERU', N'LIMA', N'HUAROCHIRI', N'SAN JUAN DE IRIS', 1, N'14', N'06', N'32')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140701', N'PERU', N'LIMA', N'YAUYOS', N'YAUYOS', 1, N'14', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140702', N'PERU', N'LIMA', N'YAUYOS', N'ALIS', 1, N'14', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140703', N'PERU', N'LIMA', N'YAUYOS', N'ALLAUCA', 1, N'14', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140704', N'PERU', N'LIMA', N'YAUYOS', N'AYAVIRI', 1, N'14', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140705', N'PERU', N'LIMA', N'YAUYOS', N'AZANGARO', 1, N'14', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140706', N'PERU', N'LIMA', N'YAUYOS', N'CACRA', 1, N'14', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140707', N'PERU', N'LIMA', N'YAUYOS', N'CARANIA', 1, N'14', N'07', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140708', N'PERU', N'LIMA', N'YAUYOS', N'COCHAS', 1, N'14', N'07', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140709', N'PERU', N'LIMA', N'YAUYOS', N'COLONIA', 1, N'14', N'07', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140710', N'PERU', N'LIMA', N'YAUYOS', N'CHOCOS', 1, N'14', N'07', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140711', N'PERU', N'LIMA', N'YAUYOS', N'HUAMPARA', 1, N'14', N'07', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140712', N'PERU', N'LIMA', N'YAUYOS', N'HUANCAYA', 1, N'14', N'07', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140713', N'PERU', N'LIMA', N'YAUYOS', N'HUANGASCAR', 1, N'14', N'07', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140714', N'PERU', N'LIMA', N'YAUYOS', N'HUANTAN', 1, N'14', N'07', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140715', N'PERU', N'LIMA', N'YAUYOS', N'HUAÑEC', 1, N'14', N'07', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140716', N'PERU', N'LIMA', N'YAUYOS', N'LARAOS', 1, N'14', N'07', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140717', N'PERU', N'LIMA', N'YAUYOS', N'LINCHA', 1, N'14', N'07', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140718', N'PERU', N'LIMA', N'YAUYOS', N'MIRAFLORES', 1, N'14', N'07', N'18')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140719', N'PERU', N'LIMA', N'YAUYOS', N'OMAS', 1, N'14', N'07', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140720', N'PERU', N'LIMA', N'YAUYOS', N'QUINCHES', 1, N'14', N'07', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140721', N'PERU', N'LIMA', N'YAUYOS', N'QUINOCAY', 1, N'14', N'07', N'21')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140722', N'PERU', N'LIMA', N'YAUYOS', N'SAN JOAQUIN', 1, N'14', N'07', N'22')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140723', N'PERU', N'LIMA', N'YAUYOS', N'SAN PEDRO DE PILAS', 1, N'14', N'07', N'23')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140724', N'PERU', N'LIMA', N'YAUYOS', N'TANTA', 1, N'14', N'07', N'24')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140725', N'PERU', N'LIMA', N'YAUYOS', N'TAURIPAMPA', 1, N'14', N'07', N'25')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140726', N'PERU', N'LIMA', N'YAUYOS', N'TUPE', 1, N'14', N'07', N'26')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140727', N'PERU', N'LIMA', N'YAUYOS', N'TOMAS', 1, N'14', N'07', N'27')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140728', N'PERU', N'LIMA', N'YAUYOS', N'VIÑAC', 1, N'14', N'07', N'28')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140729', N'PERU', N'LIMA', N'YAUYOS', N'VITIS', 1, N'14', N'07', N'29')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140730', N'PERU', N'LIMA', N'YAUYOS', N'HONGOS', 1, N'14', N'07', N'30')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140731', N'PERU', N'LIMA', N'YAUYOS', N'MADEAN', 1, N'14', N'07', N'31')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140732', N'PERU', N'LIMA', N'YAUYOS', N'PUTINZA', 1, N'14', N'07', N'32')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140733', N'PERU', N'LIMA', N'YAUYOS', N'CATAHUASI', 1, N'14', N'07', N'33')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140801', N'PERU', N'LIMA', N'HUARAL', N'HUARAL', 1, N'14', N'08', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140802', N'PERU', N'LIMA', N'HUARAL', N'ATAVILLOS ALTO', 1, N'14', N'08', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140803', N'PERU', N'LIMA', N'HUARAL', N'ATAVILLOS BAJO', 1, N'14', N'08', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140804', N'PERU', N'LIMA', N'HUARAL', N'AUCALLAMA', 1, N'14', N'08', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140805', N'PERU', N'LIMA', N'HUARAL', N'CHANCAY', 1, N'14', N'08', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140806', N'PERU', N'LIMA', N'HUARAL', N'IHUARI', 1, N'14', N'08', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140807', N'PERU', N'LIMA', N'HUARAL', N'LAMPIAN', 1, N'14', N'08', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140808', N'PERU', N'LIMA', N'HUARAL', N'PACARAOS', 1, N'14', N'08', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140809', N'PERU', N'LIMA', N'HUARAL', N'SAN MIGUEL DE ACOS', 1, N'14', N'08', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140810', N'PERU', N'LIMA', N'HUARAL', N'VEINTISIETE DE NOVIEMBRE', 1, N'14', N'08', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140811', N'PERU', N'LIMA', N'HUARAL', N'SANTA CRUZ DE ANDAMARCA', 1, N'14', N'08', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140812', N'PERU', N'LIMA', N'HUARAL', N'SUMBILCA', 1, N'14', N'08', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140901', N'PERU', N'LIMA', N'BARRANCA', N'BARRANCA', 1, N'14', N'09', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140902', N'PERU', N'LIMA', N'BARRANCA', N'PARAMONGA', 1, N'14', N'09', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140903', N'PERU', N'LIMA', N'BARRANCA', N'PATIVILCA', 1, N'14', N'09', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140904', N'PERU', N'LIMA', N'BARRANCA', N'SUPE', 1, N'14', N'09', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'140905', N'PERU', N'LIMA', N'BARRANCA', N'SUPE PUERTO', 1, N'14', N'09', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'141001', N'PERU', N'LIMA', N'OYON', N'OYON', 1, N'14', N'10', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'141002', N'PERU', N'LIMA', N'OYON', N'NAVAN', 1, N'14', N'10', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'141003', N'PERU', N'LIMA', N'OYON', N'CAUJUL', 1, N'14', N'10', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'141004', N'PERU', N'LIMA', N'OYON', N'ANDAJES', 1, N'14', N'10', N'04')
GO
print 'Processed 1400 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'141005', N'PERU', N'LIMA', N'OYON', N'PACHANGARA', 1, N'14', N'10', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'141006', N'PERU', N'LIMA', N'OYON', N'COCHAMARCA', 1, N'14', N'10', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150101', N'PERU', N'LORETO', N'MAYNAS', N'IQUITOS', 1, N'15', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150102', N'PERU', N'LORETO', N'MAYNAS', N'ALTO NANAY', 1, N'15', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150103', N'PERU', N'LORETO', N'MAYNAS', N'FERNANDO LORES', 1, N'15', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150104', N'PERU', N'LORETO', N'MAYNAS', N'LAS AMAZONAS', 1, N'15', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150105', N'PERU', N'LORETO', N'MAYNAS', N'MAZAN', 1, N'15', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150106', N'PERU', N'LORETO', N'MAYNAS', N'NAPO', 1, N'15', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150107', N'PERU', N'LORETO', N'MAYNAS', N'PUTUMAYO', 1, N'15', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150108', N'PERU', N'LORETO', N'MAYNAS', N'TORRES CAUSANA', 1, N'15', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150110', N'PERU', N'LORETO', N'MAYNAS', N'INDIANA', 1, N'15', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150111', N'PERU', N'LORETO', N'MAYNAS', N'PUNCHANA', 1, N'15', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150112', N'PERU', N'LORETO', N'MAYNAS', N'BELEN', 1, N'15', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150113', N'PERU', N'LORETO', N'MAYNAS', N'SAN JUAN BAUTISTA', 1, N'15', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150114', N'PERU', N'LORETO', N'MAYNAS', N'TENIENTE MANUEL CLAVERO', 1, N'15', N'01', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150201', N'PERU', N'LORETO', N'ALTO AMAZONAS', N'YURIMAGUAS', 1, N'15', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150202', N'PERU', N'LORETO', N'ALTO AMAZONAS', N'BALSAPUERTO', 1, N'15', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150205', N'PERU', N'LORETO', N'ALTO AMAZONAS', N'JEBEROS', 1, N'15', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150206', N'PERU', N'LORETO', N'ALTO AMAZONAS', N'LAGUNAS', 1, N'15', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150210', N'PERU', N'LORETO', N'ALTO AMAZONAS', N'SANTA CRUZ', 1, N'15', N'02', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150211', N'PERU', N'LORETO', N'ALTO AMAZONAS', N'TENIENTE CESAR LOPEZ ROJAS', 1, N'15', N'02', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150301', N'PERU', N'LORETO', N'LORETO', N'NAUTA', 1, N'15', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150302', N'PERU', N'LORETO', N'LORETO', N'PARINARI', 1, N'15', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150303', N'PERU', N'LORETO', N'LORETO', N'TIGRE', 1, N'15', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150304', N'PERU', N'LORETO', N'LORETO', N'URARINAS', 1, N'15', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150305', N'PERU', N'LORETO', N'LORETO', N'TROMPETEROS', 1, N'15', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150401', N'PERU', N'LORETO', N'REQUENA', N'REQUENA', 1, N'15', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150402', N'PERU', N'LORETO', N'REQUENA', N'ALTO TAPICHE', 1, N'15', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150403', N'PERU', N'LORETO', N'REQUENA', N'CAPELO', 1, N'15', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150404', N'PERU', N'LORETO', N'REQUENA', N'EMILIO SAN MARTIN', 1, N'15', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150405', N'PERU', N'LORETO', N'REQUENA', N'MAQUIA', 1, N'15', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150406', N'PERU', N'LORETO', N'REQUENA', N'PUINAHUA', 1, N'15', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150407', N'PERU', N'LORETO', N'REQUENA', N'SAQUENA', 1, N'15', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150408', N'PERU', N'LORETO', N'REQUENA', N'SOPLIN', 1, N'15', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150409', N'PERU', N'LORETO', N'REQUENA', N'TAPICHE', 1, N'15', N'04', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150410', N'PERU', N'LORETO', N'REQUENA', N'JENARO HERRERA', 1, N'15', N'04', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150411', N'PERU', N'LORETO', N'REQUENA', N'YAQUERANA', 1, N'15', N'04', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150501', N'PERU', N'LORETO', N'UCAYALI', N'CONTAMANA', 1, N'15', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150502', N'PERU', N'LORETO', N'UCAYALI', N'VARGAS GUERRA', 1, N'15', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150503', N'PERU', N'LORETO', N'UCAYALI', N'PADRE MARQUEZ', 1, N'15', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150504', N'PERU', N'LORETO', N'UCAYALI', N'PAMPA HERMOSA', 1, N'15', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150505', N'PERU', N'LORETO', N'UCAYALI', N'SARAYACU', 1, N'15', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150506', N'PERU', N'LORETO', N'UCAYALI', N'INAHUAYA', 1, N'15', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150601', N'PERU', N'LORETO', N'MARISCAL RAMON CASTILLA', N'RAMON CASTILLA', 1, N'15', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150602', N'PERU', N'LORETO', N'MARISCAL RAMON CASTILLA', N'PEBAS', 1, N'15', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150603', N'PERU', N'LORETO', N'MARISCAL RAMON CASTILLA', N'YAVARI', 1, N'15', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150604', N'PERU', N'LORETO', N'MARISCAL RAMON CASTILLA', N'SAN PABLO', 1, N'15', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150701', N'PERU', N'LORETO', N'DATEM DEL MARAÑON', N'BARRANCA', 1, N'15', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150702', N'PERU', N'LORETO', N'DATEM DEL MARAÑON', N'ANDOAS', 1, N'15', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150703', N'PERU', N'LORETO', N'DATEM DEL MARAÑON', N'CAHUAPANAS', 1, N'15', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150704', N'PERU', N'LORETO', N'DATEM DEL MARAÑON', N'MANSERICHE', 1, N'15', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150705', N'PERU', N'LORETO', N'DATEM DEL MARAÑON', N'MORONA', 1, N'15', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'150706', N'PERU', N'LORETO', N'DATEM DEL MARAÑON', N'PASTAZA', 1, N'15', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'160101', N'PERU', N'MADRE DE DIOS', N'TAMBOPATA', N'TAMBOPATA', 1, N'16', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'160102', N'PERU', N'MADRE DE DIOS', N'TAMBOPATA', N'INAMBARI', 1, N'16', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'160103', N'PERU', N'MADRE DE DIOS', N'TAMBOPATA', N'LAS PIEDRAS', 1, N'16', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'160104', N'PERU', N'MADRE DE DIOS', N'TAMBOPATA', N'LABERINTO', 1, N'16', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'160201', N'PERU', N'MADRE DE DIOS', N'MANU', N'MANU', 1, N'16', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'160202', N'PERU', N'MADRE DE DIOS', N'MANU', N'FITZCARRALD', 1, N'16', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'160203', N'PERU', N'MADRE DE DIOS', N'MANU', N'MADRE DE DIOS', 1, N'16', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'160204', N'PERU', N'MADRE DE DIOS', N'MANU', N'HUEPETUHE', 1, N'16', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'160301', N'PERU', N'MADRE DE DIOS', N'TAHUAMANU', N'IÑAPARI', 1, N'16', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'160302', N'PERU', N'MADRE DE DIOS', N'TAHUAMANU', N'IBERIA', 1, N'16', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'160303', N'PERU', N'MADRE DE DIOS', N'TAHUAMANU', N'TAHUAMANU', 1, N'16', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170101', N'PERU', N'MOQUEGUA', N'MARISCAL NIETO', N'MOQUEGUA', 1, N'17', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170102', N'PERU', N'MOQUEGUA', N'MARISCAL NIETO', N'CARUMAS', 1, N'17', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170103', N'PERU', N'MOQUEGUA', N'MARISCAL NIETO', N'CUCHUMBAYA', 1, N'17', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170104', N'PERU', N'MOQUEGUA', N'MARISCAL NIETO', N'SAN CRISTOBAL', 1, N'17', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170105', N'PERU', N'MOQUEGUA', N'MARISCAL NIETO', N'TORATA', 1, N'17', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170106', N'PERU', N'MOQUEGUA', N'MARISCAL NIETO', N'SAMEGUA', 1, N'17', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170201', N'PERU', N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'OMATE', 1, N'17', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170202', N'PERU', N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'COALAQUE', 1, N'17', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170203', N'PERU', N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'CHOJATA', 1, N'17', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170204', N'PERU', N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'ICHUÑA', 1, N'17', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170205', N'PERU', N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'LA CAPILLA', 1, N'17', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170206', N'PERU', N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'LLOQUE', 1, N'17', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170207', N'PERU', N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'MATALAQUE', 1, N'17', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170208', N'PERU', N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'PUQUINA', 1, N'17', N'02', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170209', N'PERU', N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'QUINISTAQUILLAS', 1, N'17', N'02', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170210', N'PERU', N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'UBINAS', 1, N'17', N'02', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170211', N'PERU', N'MOQUEGUA', N'GENERAL SANCHEZ CERRO', N'YUNGA', 1, N'17', N'02', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170301', N'PERU', N'MOQUEGUA', N'ILO', N'ILO', 1, N'17', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170302', N'PERU', N'MOQUEGUA', N'ILO', N'EL ALGARROBAL', 1, N'17', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'170303', N'PERU', N'MOQUEGUA', N'ILO', N'PACOCHA', 1, N'17', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180101', N'PERU', N'PASCO', N'PASCO', N'CHAUPIMARCA', 1, N'18', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180103', N'PERU', N'PASCO', N'PASCO', N'HUACHON', 1, N'18', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180104', N'PERU', N'PASCO', N'PASCO', N'HUARIACA', 1, N'18', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180105', N'PERU', N'PASCO', N'PASCO', N'HUAYLLAY', 1, N'18', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180106', N'PERU', N'PASCO', N'PASCO', N'NINACACA', 1, N'18', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180107', N'PERU', N'PASCO', N'PASCO', N'PALLANCHACRA', 1, N'18', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180108', N'PERU', N'PASCO', N'PASCO', N'PAUCARTAMBO', 1, N'18', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180109', N'PERU', N'PASCO', N'PASCO', N'SAN FCO DE ASIS DE YARUSYACAN', 1, N'18', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180110', N'PERU', N'PASCO', N'PASCO', N'SIMON BOLIVAR', 1, N'18', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180111', N'PERU', N'PASCO', N'PASCO', N'TICLACAYAN', 1, N'18', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180112', N'PERU', N'PASCO', N'PASCO', N'TINYAHUARCO', 1, N'18', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180113', N'PERU', N'PASCO', N'PASCO', N'VICCO', 1, N'18', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180114', N'PERU', N'PASCO', N'PASCO', N'YANACANCHA', 1, N'18', N'01', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180201', N'PERU', N'PASCO', N'DANIEL ALCIDES CARRION', N'YANAHUANCA', 1, N'18', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180202', N'PERU', N'PASCO', N'DANIEL ALCIDES CARRION', N'CHACAYAN', 1, N'18', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180203', N'PERU', N'PASCO', N'DANIEL ALCIDES CARRION', N'GOYLLARISQUIZGA', 1, N'18', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180204', N'PERU', N'PASCO', N'DANIEL ALCIDES CARRION', N'PAUCAR', 1, N'18', N'02', N'04')
GO
print 'Processed 1500 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180205', N'PERU', N'PASCO', N'DANIEL ALCIDES CARRION', N'SAN PEDRO DE PILLAO', 1, N'18', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180206', N'PERU', N'PASCO', N'DANIEL ALCIDES CARRION', N'SANTA ANA DE TUSI', 1, N'18', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180207', N'PERU', N'PASCO', N'DANIEL ALCIDES CARRION', N'TAPUC', 1, N'18', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180208', N'PERU', N'PASCO', N'DANIEL ALCIDES CARRION', N'VILCABAMBA', 1, N'18', N'02', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180301', N'PERU', N'PASCO', N'OXAPAMPA', N'OXAPAMPA', 1, N'18', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180302', N'PERU', N'PASCO', N'OXAPAMPA', N'CHONTABAMBA', 1, N'18', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180303', N'PERU', N'PASCO', N'OXAPAMPA', N'HUANCABAMBA', 1, N'18', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180304', N'PERU', N'PASCO', N'OXAPAMPA', N'PUERTO BERMUDEZ', 1, N'18', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180305', N'PERU', N'PASCO', N'OXAPAMPA', N'VILLA RICA', 1, N'18', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180306', N'PERU', N'PASCO', N'OXAPAMPA', N'POZUZO', 1, N'18', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180307', N'PERU', N'PASCO', N'OXAPAMPA', N'PALCAZU', 1, N'18', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'180308', N'PERU', N'PASCO', N'OXAPAMPA', N'CONSTITUCION', 1, N'18', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190101', N'PERU', N'PIURA', N'PIURA', N'PIURA', 1, N'19', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190103', N'PERU', N'PIURA', N'PIURA', N'CASTILLA', 1, N'19', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190104', N'PERU', N'PIURA', N'PIURA', N'CATACAOS', 1, N'19', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190105', N'PERU', N'PIURA', N'PIURA', N'LA ARENA', 1, N'19', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190106', N'PERU', N'PIURA', N'PIURA', N'LA UNION', 1, N'19', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190107', N'PERU', N'PIURA', N'PIURA', N'LAS LOMAS', 1, N'19', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190109', N'PERU', N'PIURA', N'PIURA', N'TAMBO GRANDE', 1, N'19', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190113', N'PERU', N'PIURA', N'PIURA', N'CURA MORI', 1, N'19', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190114', N'PERU', N'PIURA', N'PIURA', N'EL TALLAN', 1, N'19', N'01', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190115', N'PERU', N'PIURA', N'PIURA', N'VEINTISEIS DE OCTUBRE', 1, N'19', N'01', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190201', N'PERU', N'PIURA', N'AYABACA', N'AYABACA', 1, N'19', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190202', N'PERU', N'PIURA', N'AYABACA', N'FRIAS', 1, N'19', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190203', N'PERU', N'PIURA', N'AYABACA', N'LAGUNAS', 1, N'19', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190204', N'PERU', N'PIURA', N'AYABACA', N'MONTERO', 1, N'19', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190205', N'PERU', N'PIURA', N'AYABACA', N'PACAIPAMPA', 1, N'19', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190206', N'PERU', N'PIURA', N'AYABACA', N'SAPILLICA', 1, N'19', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190207', N'PERU', N'PIURA', N'AYABACA', N'SICCHEZ', 1, N'19', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190208', N'PERU', N'PIURA', N'AYABACA', N'SUYO', 1, N'19', N'02', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190209', N'PERU', N'PIURA', N'AYABACA', N'JILILI', 1, N'19', N'02', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190210', N'PERU', N'PIURA', N'AYABACA', N'PAIMAS', 1, N'19', N'02', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190301', N'PERU', N'PIURA', N'HUANCABAMBA', N'HUANCABAMBA', 1, N'19', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190302', N'PERU', N'PIURA', N'HUANCABAMBA', N'CANCHAQUE', 1, N'19', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190303', N'PERU', N'PIURA', N'HUANCABAMBA', N'HUARMACA', 1, N'19', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190304', N'PERU', N'PIURA', N'HUANCABAMBA', N'SONDOR', 1, N'19', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190305', N'PERU', N'PIURA', N'HUANCABAMBA', N'SONDORILLO', 1, N'19', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190306', N'PERU', N'PIURA', N'HUANCABAMBA', N'EL CARMEN DE LA FRONTERA', 1, N'19', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190307', N'PERU', N'PIURA', N'HUANCABAMBA', N'SAN MIGUEL DE EL FAIQUE', 1, N'19', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190308', N'PERU', N'PIURA', N'HUANCABAMBA', N'LALAQUIZ', 1, N'19', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190401', N'PERU', N'PIURA', N'MORROPON', N'CHULUCANAS', 1, N'19', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190402', N'PERU', N'PIURA', N'MORROPON', N'BUENOS AIRES', 1, N'19', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190403', N'PERU', N'PIURA', N'MORROPON', N'CHALACO', 1, N'19', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190404', N'PERU', N'PIURA', N'MORROPON', N'MORROPON', 1, N'19', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190405', N'PERU', N'PIURA', N'MORROPON', N'SALITRAL', 1, N'19', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190406', N'PERU', N'PIURA', N'MORROPON', N'SANTA CATALINA DE MOSSA', 1, N'19', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190407', N'PERU', N'PIURA', N'MORROPON', N'SANTO DOMINGO', 1, N'19', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190408', N'PERU', N'PIURA', N'MORROPON', N'LA MATANZA', 1, N'19', N'04', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190409', N'PERU', N'PIURA', N'MORROPON', N'YAMANGO', 1, N'19', N'04', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190410', N'PERU', N'PIURA', N'MORROPON', N'SAN JUAN DE BIGOTE', 1, N'19', N'04', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190501', N'PERU', N'PIURA', N'PAITA', N'PAITA', 1, N'19', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190502', N'PERU', N'PIURA', N'PAITA', N'AMOTAPE', 1, N'19', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190503', N'PERU', N'PIURA', N'PAITA', N'ARENAL', 1, N'19', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190504', N'PERU', N'PIURA', N'PAITA', N'LA HUACA', 1, N'19', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190505', N'PERU', N'PIURA', N'PAITA', N'COLAN', 1, N'19', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190506', N'PERU', N'PIURA', N'PAITA', N'TAMARINDO', 1, N'19', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190507', N'PERU', N'PIURA', N'PAITA', N'VICHAYAL', 1, N'19', N'05', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190601', N'PERU', N'PIURA', N'SULLANA', N'SULLANA', 1, N'19', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190602', N'PERU', N'PIURA', N'SULLANA', N'BELLAVISTA', 1, N'19', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190603', N'PERU', N'PIURA', N'SULLANA', N'LANCONES', 1, N'19', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190604', N'PERU', N'PIURA', N'SULLANA', N'MARCAVELICA', 1, N'19', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190605', N'PERU', N'PIURA', N'SULLANA', N'MIGUEL CHECA', 1, N'19', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190606', N'PERU', N'PIURA', N'SULLANA', N'QUERECOTILLO', 1, N'19', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190607', N'PERU', N'PIURA', N'SULLANA', N'SALITRAL', 1, N'19', N'06', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190608', N'PERU', N'PIURA', N'SULLANA', N'IGNACIO ESCUDERO', 1, N'19', N'06', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190701', N'PERU', N'PIURA', N'TALARA', N'PARIÑAS', 1, N'19', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190702', N'PERU', N'PIURA', N'TALARA', N'EL ALTO', 1, N'19', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190703', N'PERU', N'PIURA', N'TALARA', N'LA BREA', 1, N'19', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190704', N'PERU', N'PIURA', N'TALARA', N'LOBITOS', 1, N'19', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190705', N'PERU', N'PIURA', N'TALARA', N'MANCORA', 1, N'19', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190706', N'PERU', N'PIURA', N'TALARA', N'LOS ORGANOS', 1, N'19', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190801', N'PERU', N'PIURA', N'SECHURA', N'SECHURA', 1, N'19', N'08', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190802', N'PERU', N'PIURA', N'SECHURA', N'VICE', 1, N'19', N'08', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190803', N'PERU', N'PIURA', N'SECHURA', N'BERNAL', 1, N'19', N'08', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190804', N'PERU', N'PIURA', N'SECHURA', N'BELLAVISTA DE LA UNION', 1, N'19', N'08', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190805', N'PERU', N'PIURA', N'SECHURA', N'CRISTO NOS VALGA', 1, N'19', N'08', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'190806', N'PERU', N'PIURA', N'SECHURA', N'RINCONADA-LLICUAR', 1, N'19', N'08', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200101', N'PERU', N'PUNO', N'PUNO', N'PUNO', 1, N'20', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200102', N'PERU', N'PUNO', N'PUNO', N'ACORA', 1, N'20', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200103', N'PERU', N'PUNO', N'PUNO', N'ATUNCOLLA', 1, N'20', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200104', N'PERU', N'PUNO', N'PUNO', N'CAPACHICA', 1, N'20', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200105', N'PERU', N'PUNO', N'PUNO', N'COATA', 1, N'20', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200106', N'PERU', N'PUNO', N'PUNO', N'CHUCUITO', 1, N'20', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200107', N'PERU', N'PUNO', N'PUNO', N'HUATA', 1, N'20', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200108', N'PERU', N'PUNO', N'PUNO', N'MAÑAZO', 1, N'20', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200109', N'PERU', N'PUNO', N'PUNO', N'PAUCARCOLLA', 1, N'20', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200110', N'PERU', N'PUNO', N'PUNO', N'PICHACANI', 1, N'20', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200111', N'PERU', N'PUNO', N'PUNO', N'SAN ANTONIO', 1, N'20', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200112', N'PERU', N'PUNO', N'PUNO', N'TIQUILLACA', 1, N'20', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200113', N'PERU', N'PUNO', N'PUNO', N'VILQUE', 1, N'20', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200114', N'PERU', N'PUNO', N'PUNO', N'PLATERIA', 1, N'20', N'01', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200115', N'PERU', N'PUNO', N'PUNO', N'AMANTANI', 1, N'20', N'01', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200201', N'PERU', N'PUNO', N'AZANGARO', N'AZANGARO', 1, N'20', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200202', N'PERU', N'PUNO', N'AZANGARO', N'ACHAYA', 1, N'20', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200203', N'PERU', N'PUNO', N'AZANGARO', N'ARAPA', 1, N'20', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200204', N'PERU', N'PUNO', N'AZANGARO', N'ASILLO', 1, N'20', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200205', N'PERU', N'PUNO', N'AZANGARO', N'CAMINACA', 1, N'20', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200206', N'PERU', N'PUNO', N'AZANGARO', N'CHUPA', 1, N'20', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200207', N'PERU', N'PUNO', N'AZANGARO', N'JOSE DOMINGO CHOQUEHUANCA', 1, N'20', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200208', N'PERU', N'PUNO', N'AZANGARO', N'MUÑANI', 1, N'20', N'02', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200210', N'PERU', N'PUNO', N'AZANGARO', N'POTONI', 1, N'20', N'02', N'10')
GO
print 'Processed 1600 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200212', N'PERU', N'PUNO', N'AZANGARO', N'SAMAN', 1, N'20', N'02', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200213', N'PERU', N'PUNO', N'AZANGARO', N'SAN ANTON', 1, N'20', N'02', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200214', N'PERU', N'PUNO', N'AZANGARO', N'SAN JOSE', 1, N'20', N'02', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200215', N'PERU', N'PUNO', N'AZANGARO', N'SAN JUAN DE SALINAS', 1, N'20', N'02', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200216', N'PERU', N'PUNO', N'AZANGARO', N'SANTIAGO DE PUPUJA', 1, N'20', N'02', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200217', N'PERU', N'PUNO', N'AZANGARO', N'TIRAPATA', 1, N'20', N'02', N'17')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200301', N'PERU', N'PUNO', N'CARABAYA', N'MACUSANI', 1, N'20', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200302', N'PERU', N'PUNO', N'CARABAYA', N'AJOYANI', 1, N'20', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200303', N'PERU', N'PUNO', N'CARABAYA', N'AYAPATA', 1, N'20', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200304', N'PERU', N'PUNO', N'CARABAYA', N'COASA', 1, N'20', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200305', N'PERU', N'PUNO', N'CARABAYA', N'CORANI', 1, N'20', N'03', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200306', N'PERU', N'PUNO', N'CARABAYA', N'CRUCERO', 1, N'20', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200307', N'PERU', N'PUNO', N'CARABAYA', N'ITUATA', 1, N'20', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200308', N'PERU', N'PUNO', N'CARABAYA', N'OLLACHEA', 1, N'20', N'03', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200309', N'PERU', N'PUNO', N'CARABAYA', N'SAN GABAN', 1, N'20', N'03', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200310', N'PERU', N'PUNO', N'CARABAYA', N'USICAYOS', 1, N'20', N'03', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200401', N'PERU', N'PUNO', N'CHUCUITO', N'JULI', 1, N'20', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200402', N'PERU', N'PUNO', N'CHUCUITO', N'DESAGUADERO', 1, N'20', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200403', N'PERU', N'PUNO', N'CHUCUITO', N'HUACULLANI', 1, N'20', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200406', N'PERU', N'PUNO', N'CHUCUITO', N'PISACOMA', 1, N'20', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200407', N'PERU', N'PUNO', N'CHUCUITO', N'POMATA', 1, N'20', N'04', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200410', N'PERU', N'PUNO', N'CHUCUITO', N'ZEPITA', 1, N'20', N'04', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200412', N'PERU', N'PUNO', N'CHUCUITO', N'KELLUYO', 1, N'20', N'04', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200501', N'PERU', N'PUNO', N'HUANCANE', N'HUANCANE', 1, N'20', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200502', N'PERU', N'PUNO', N'HUANCANE', N'COJATA', 1, N'20', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200504', N'PERU', N'PUNO', N'HUANCANE', N'INCHUPALLA', 1, N'20', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200506', N'PERU', N'PUNO', N'HUANCANE', N'PUSI', 1, N'20', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200507', N'PERU', N'PUNO', N'HUANCANE', N'ROSASPATA', 1, N'20', N'05', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200508', N'PERU', N'PUNO', N'HUANCANE', N'TARACO', 1, N'20', N'05', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200509', N'PERU', N'PUNO', N'HUANCANE', N'VILQUE CHICO', 1, N'20', N'05', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200511', N'PERU', N'PUNO', N'HUANCANE', N'HUATASANI', 1, N'20', N'05', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200601', N'PERU', N'PUNO', N'LAMPA', N'LAMPA', 1, N'20', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200602', N'PERU', N'PUNO', N'LAMPA', N'CABANILLA', 1, N'20', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200603', N'PERU', N'PUNO', N'LAMPA', N'CALAPUJA', 1, N'20', N'06', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200604', N'PERU', N'PUNO', N'LAMPA', N'NICASIO', 1, N'20', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200605', N'PERU', N'PUNO', N'LAMPA', N'OCUVIRI', 1, N'20', N'06', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200606', N'PERU', N'PUNO', N'LAMPA', N'PALCA', 1, N'20', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200607', N'PERU', N'PUNO', N'LAMPA', N'PARATIA', 1, N'20', N'06', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200608', N'PERU', N'PUNO', N'LAMPA', N'PUCARA', 1, N'20', N'06', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200609', N'PERU', N'PUNO', N'LAMPA', N'SANTA LUCIA', 1, N'20', N'06', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200610', N'PERU', N'PUNO', N'LAMPA', N'VILAVILA', 1, N'20', N'06', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200701', N'PERU', N'PUNO', N'MELGAR', N'AYAVIRI', 1, N'20', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200702', N'PERU', N'PUNO', N'MELGAR', N'ANTAUTA', 1, N'20', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200703', N'PERU', N'PUNO', N'MELGAR', N'CUPI', 1, N'20', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200704', N'PERU', N'PUNO', N'MELGAR', N'LLALLI', 1, N'20', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200705', N'PERU', N'PUNO', N'MELGAR', N'MACARI', 1, N'20', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200706', N'PERU', N'PUNO', N'MELGAR', N'NUÑOA', 1, N'20', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200707', N'PERU', N'PUNO', N'MELGAR', N'ORURILLO', 1, N'20', N'07', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200708', N'PERU', N'PUNO', N'MELGAR', N'SANTA ROSA', 1, N'20', N'07', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200709', N'PERU', N'PUNO', N'MELGAR', N'UMACHIRI', 1, N'20', N'07', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200801', N'PERU', N'PUNO', N'SANDIA', N'SANDIA', 1, N'20', N'08', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200803', N'PERU', N'PUNO', N'SANDIA', N'CUYOCUYO', 1, N'20', N'08', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200804', N'PERU', N'PUNO', N'SANDIA', N'LIMBANI', 1, N'20', N'08', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200805', N'PERU', N'PUNO', N'SANDIA', N'PHARA', 1, N'20', N'08', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200806', N'PERU', N'PUNO', N'SANDIA', N'PATAMBUCO', 1, N'20', N'08', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200807', N'PERU', N'PUNO', N'SANDIA', N'QUIACA', 1, N'20', N'08', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200808', N'PERU', N'PUNO', N'SANDIA', N'SAN JUAN DEL ORO', 1, N'20', N'08', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200810', N'PERU', N'PUNO', N'SANDIA', N'YANAHUAYA', 1, N'20', N'08', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200811', N'PERU', N'PUNO', N'SANDIA', N'ALTO INAMBARI', 1, N'20', N'08', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200812', N'PERU', N'PUNO', N'SANDIA', N'SAN PEDRO DE PUTINA PUNCO', 1, N'20', N'08', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200901', N'PERU', N'PUNO', N'SAN ROMAN', N'JULIACA', 1, N'20', N'09', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200902', N'PERU', N'PUNO', N'SAN ROMAN', N'CABANA', 1, N'20', N'09', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200903', N'PERU', N'PUNO', N'SAN ROMAN', N'CABANILLAS', 1, N'20', N'09', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'200904', N'PERU', N'PUNO', N'SAN ROMAN', N'CARACOTO', 1, N'20', N'09', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201001', N'PERU', N'PUNO', N'YUNGUYO', N'YUNGUYO', 1, N'20', N'10', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201002', N'PERU', N'PUNO', N'YUNGUYO', N'UNICACHI', 1, N'20', N'10', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201003', N'PERU', N'PUNO', N'YUNGUYO', N'ANAPIA', 1, N'20', N'10', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201004', N'PERU', N'PUNO', N'YUNGUYO', N'COPANI', 1, N'20', N'10', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201005', N'PERU', N'PUNO', N'YUNGUYO', N'CUTURAPI', 1, N'20', N'10', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201006', N'PERU', N'PUNO', N'YUNGUYO', N'OLLARAYA', 1, N'20', N'10', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201007', N'PERU', N'PUNO', N'YUNGUYO', N'TINICACHI', 1, N'20', N'10', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201101', N'PERU', N'PUNO', N'SAN ANTONIO DE PUTINA', N'PUTINA', 1, N'20', N'11', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201102', N'PERU', N'PUNO', N'SAN ANTONIO DE PUTINA', N'PEDRO VILCA APAZA', 1, N'20', N'11', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201103', N'PERU', N'PUNO', N'SAN ANTONIO DE PUTINA', N'QUILCAPUNCU', 1, N'20', N'11', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201104', N'PERU', N'PUNO', N'SAN ANTONIO DE PUTINA', N'ANANEA', 1, N'20', N'11', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201105', N'PERU', N'PUNO', N'SAN ANTONIO DE PUTINA', N'SINA', 1, N'20', N'11', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201201', N'PERU', N'PUNO', N'EL COLLAO', N'ILAVE', 1, N'20', N'12', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201202', N'PERU', N'PUNO', N'EL COLLAO', N'PILCUYO', 1, N'20', N'12', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201203', N'PERU', N'PUNO', N'EL COLLAO', N'SANTA ROSA', 1, N'20', N'12', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201204', N'PERU', N'PUNO', N'EL COLLAO', N'CAPASO', 1, N'20', N'12', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201205', N'PERU', N'PUNO', N'EL COLLAO', N'CONDURIRI', 1, N'20', N'12', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201301', N'PERU', N'PUNO', N'MOHO', N'MOHO', 1, N'20', N'13', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201302', N'PERU', N'PUNO', N'MOHO', N'CONIMA', 1, N'20', N'13', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201303', N'PERU', N'PUNO', N'MOHO', N'TILALI', 1, N'20', N'13', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'201304', N'PERU', N'PUNO', N'MOHO', N'HUAYRAPATA', 1, N'20', N'13', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210101', N'PERU', N'SAN MARTIN', N'MOYOBAMBA', N'MOYOBAMBA', 1, N'21', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210102', N'PERU', N'SAN MARTIN', N'MOYOBAMBA', N'CALZADA', 1, N'21', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210103', N'PERU', N'SAN MARTIN', N'MOYOBAMBA', N'HABANA', 1, N'21', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210104', N'PERU', N'SAN MARTIN', N'MOYOBAMBA', N'JEPELACIO', 1, N'21', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210105', N'PERU', N'SAN MARTIN', N'MOYOBAMBA', N'SORITOR', 1, N'21', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210106', N'PERU', N'SAN MARTIN', N'MOYOBAMBA', N'YANTALO', 1, N'21', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210201', N'PERU', N'SAN MARTIN', N'HUALLAGA', N'SAPOSOA', 1, N'21', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210202', N'PERU', N'SAN MARTIN', N'HUALLAGA', N'PISCOYACU', 1, N'21', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210203', N'PERU', N'SAN MARTIN', N'HUALLAGA', N'SACANCHE', 1, N'21', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210204', N'PERU', N'SAN MARTIN', N'HUALLAGA', N'TINGO DE SAPOSOA', 1, N'21', N'02', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210205', N'PERU', N'SAN MARTIN', N'HUALLAGA', N'ALTO SAPOSOA', 1, N'21', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210206', N'PERU', N'SAN MARTIN', N'HUALLAGA', N'EL ESLABON', 1, N'21', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210301', N'PERU', N'SAN MARTIN', N'LAMAS', N'LAMAS', 1, N'21', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210303', N'PERU', N'SAN MARTIN', N'LAMAS', N'BARRANQUITA', 1, N'21', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210304', N'PERU', N'SAN MARTIN', N'LAMAS', N'CAYNARACHI', 1, N'21', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210305', N'PERU', N'SAN MARTIN', N'LAMAS', N'CUÑUMBUQUI', 1, N'21', N'03', N'05')
GO
print 'Processed 1700 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210306', N'PERU', N'SAN MARTIN', N'LAMAS', N'PINTO RECODO', 1, N'21', N'03', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210307', N'PERU', N'SAN MARTIN', N'LAMAS', N'RUMISAPA', 1, N'21', N'03', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210311', N'PERU', N'SAN MARTIN', N'LAMAS', N'SHANAO', 1, N'21', N'03', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210313', N'PERU', N'SAN MARTIN', N'LAMAS', N'TABALOSOS', 1, N'21', N'03', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210314', N'PERU', N'SAN MARTIN', N'LAMAS', N'ZAPATERO', 1, N'21', N'03', N'14')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210315', N'PERU', N'SAN MARTIN', N'LAMAS', N'ALONSO DE ALVARADO', 1, N'21', N'03', N'15')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210316', N'PERU', N'SAN MARTIN', N'LAMAS', N'SAN ROQUE DE CUMBAZA', 1, N'21', N'03', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210401', N'PERU', N'SAN MARTIN', N'MARISCAL CACERES', N'JUANJUI', 1, N'21', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210402', N'PERU', N'SAN MARTIN', N'MARISCAL CACERES', N'CAMPANILLA', 1, N'21', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210403', N'PERU', N'SAN MARTIN', N'MARISCAL CACERES', N'HUICUNGO', 1, N'21', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210404', N'PERU', N'SAN MARTIN', N'MARISCAL CACERES', N'PACHIZA', 1, N'21', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210405', N'PERU', N'SAN MARTIN', N'MARISCAL CACERES', N'PAJARILLO', 1, N'21', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210501', N'PERU', N'SAN MARTIN', N'RIOJA', N'RIOJA', 1, N'21', N'05', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210502', N'PERU', N'SAN MARTIN', N'RIOJA', N'POSIC', 1, N'21', N'05', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210503', N'PERU', N'SAN MARTIN', N'RIOJA', N'YORONGOS', 1, N'21', N'05', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210504', N'PERU', N'SAN MARTIN', N'RIOJA', N'YURACYACU', 1, N'21', N'05', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210505', N'PERU', N'SAN MARTIN', N'RIOJA', N'NUEVA CAJAMARCA', 1, N'21', N'05', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210506', N'PERU', N'SAN MARTIN', N'RIOJA', N'ELIAS SOPLIN VARGAS', 1, N'21', N'05', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210507', N'PERU', N'SAN MARTIN', N'RIOJA', N'SAN FERNANDO', 1, N'21', N'05', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210508', N'PERU', N'SAN MARTIN', N'RIOJA', N'PARDO MIGUEL', 1, N'21', N'05', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210509', N'PERU', N'SAN MARTIN', N'RIOJA', N'AWAJUN', 1, N'21', N'05', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210601', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'TARAPOTO', 1, N'21', N'06', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210602', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'ALBERTO LEVEAU', 1, N'21', N'06', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210604', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'CACATACHI', 1, N'21', N'06', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210606', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'CHAZUTA', 1, N'21', N'06', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210607', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'CHIPURANA', 1, N'21', N'06', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210608', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'EL PORVENIR', 1, N'21', N'06', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210609', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'HUIMBAYOC', 1, N'21', N'06', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210610', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'JUAN GUERRA', 1, N'21', N'06', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210611', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'MORALES', 1, N'21', N'06', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210612', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'PAPAPLAYA', 1, N'21', N'06', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210616', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'SAN ANTONIO', 1, N'21', N'06', N'16')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210619', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'SAUCE', 1, N'21', N'06', N'19')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210620', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'SHAPAJA', 1, N'21', N'06', N'20')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210621', N'PERU', N'SAN MARTIN', N'SAN MARTIN', N'LA BANDA DE SHILCAYO', 1, N'21', N'06', N'21')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210701', N'PERU', N'SAN MARTIN', N'BELLAVISTA', N'BELLAVISTA', 1, N'21', N'07', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210702', N'PERU', N'SAN MARTIN', N'BELLAVISTA', N'SAN RAFAEL', 1, N'21', N'07', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210703', N'PERU', N'SAN MARTIN', N'BELLAVISTA', N'SAN PABLO', 1, N'21', N'07', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210704', N'PERU', N'SAN MARTIN', N'BELLAVISTA', N'ALTO BIAVO', 1, N'21', N'07', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210705', N'PERU', N'SAN MARTIN', N'BELLAVISTA', N'HUALLAGA', 1, N'21', N'07', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210706', N'PERU', N'SAN MARTIN', N'BELLAVISTA', N'BAJO BIAVO', 1, N'21', N'07', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210801', N'PERU', N'SAN MARTIN', N'TOCACHE', N'TOCACHE', 1, N'21', N'08', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210802', N'PERU', N'SAN MARTIN', N'TOCACHE', N'NUEVO PROGRESO', 1, N'21', N'08', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210803', N'PERU', N'SAN MARTIN', N'TOCACHE', N'POLVORA', 1, N'21', N'08', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210804', N'PERU', N'SAN MARTIN', N'TOCACHE', N'SHUNTE', 1, N'21', N'08', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210805', N'PERU', N'SAN MARTIN', N'TOCACHE', N'UCHIZA', 1, N'21', N'08', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210901', N'PERU', N'SAN MARTIN', N'PICOTA', N'PICOTA', 1, N'21', N'09', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210902', N'PERU', N'SAN MARTIN', N'PICOTA', N'BUENOS AIRES', 1, N'21', N'09', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210903', N'PERU', N'SAN MARTIN', N'PICOTA', N'CASPIZAPA', 1, N'21', N'09', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210904', N'PERU', N'SAN MARTIN', N'PICOTA', N'PILLUANA', 1, N'21', N'09', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210905', N'PERU', N'SAN MARTIN', N'PICOTA', N'PUCACACA', 1, N'21', N'09', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210906', N'PERU', N'SAN MARTIN', N'PICOTA', N'SAN CRISTOBAL', 1, N'21', N'09', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210907', N'PERU', N'SAN MARTIN', N'PICOTA', N'SAN HILARION', 1, N'21', N'09', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210908', N'PERU', N'SAN MARTIN', N'PICOTA', N'TINGO DE PONASA', 1, N'21', N'09', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210909', N'PERU', N'SAN MARTIN', N'PICOTA', N'TRES UNIDOS', 1, N'21', N'09', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'210910', N'PERU', N'SAN MARTIN', N'PICOTA', N'SHAMBOYACU', 1, N'21', N'09', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'211001', N'PERU', N'SAN MARTIN', N'EL DORADO', N'SAN JOSE DE SISA', 1, N'21', N'10', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'211002', N'PERU', N'SAN MARTIN', N'EL DORADO', N'AGUA BLANCA', 1, N'21', N'10', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'211003', N'PERU', N'SAN MARTIN', N'EL DORADO', N'SHATOJA', 1, N'21', N'10', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'211004', N'PERU', N'SAN MARTIN', N'EL DORADO', N'SAN MARTIN', 1, N'21', N'10', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'211005', N'PERU', N'SAN MARTIN', N'EL DORADO', N'SANTA ROSA', 1, N'21', N'10', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220101', N'PERU', N'TACNA', N'TACNA', N'TACNA', 1, N'22', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220102', N'PERU', N'TACNA', N'TACNA', N'CALANA', 1, N'22', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220104', N'PERU', N'TACNA', N'TACNA', N'INCLAN', 1, N'22', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220107', N'PERU', N'TACNA', N'TACNA', N'PACHIA', 1, N'22', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220108', N'PERU', N'TACNA', N'TACNA', N'PALCA', 1, N'22', N'01', N'08')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220109', N'PERU', N'TACNA', N'TACNA', N'POCOLLAY', 1, N'22', N'01', N'09')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220110', N'PERU', N'TACNA', N'TACNA', N'SAMA', 1, N'22', N'01', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220111', N'PERU', N'TACNA', N'TACNA', N'ALTO DE LA ALIANZA', 1, N'22', N'01', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220112', N'PERU', N'TACNA', N'TACNA', N'CIUDAD NUEVA', 1, N'22', N'01', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220113', N'PERU', N'TACNA', N'TACNA', N'CORONEL GREGORIO ALBARRACIN L.', 1, N'22', N'01', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220201', N'PERU', N'TACNA', N'TARATA', N'TARATA', 1, N'22', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220205', N'PERU', N'TACNA', N'TARATA', N'HEROES ALBARRACIN', 1, N'22', N'02', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220206', N'PERU', N'TACNA', N'TARATA', N'ESTIQUE', 1, N'22', N'02', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220207', N'PERU', N'TACNA', N'TARATA', N'ESTIQUE PAMPA', 1, N'22', N'02', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220210', N'PERU', N'TACNA', N'TARATA', N'SITAJARA', 1, N'22', N'02', N'10')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220211', N'PERU', N'TACNA', N'TARATA', N'SUSAPAYA', 1, N'22', N'02', N'11')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220212', N'PERU', N'TACNA', N'TARATA', N'TARUCACHI', 1, N'22', N'02', N'12')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220213', N'PERU', N'TACNA', N'TARATA', N'TICACO', 1, N'22', N'02', N'13')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220301', N'PERU', N'TACNA', N'JORGE BASADRE', N'LOCUMBA', 1, N'22', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220302', N'PERU', N'TACNA', N'JORGE BASADRE', N'ITE', 1, N'22', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220303', N'PERU', N'TACNA', N'JORGE BASADRE', N'ILABAYA', 1, N'22', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220401', N'PERU', N'TACNA', N'CANDARAVE', N'CANDARAVE', 1, N'22', N'04', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220402', N'PERU', N'TACNA', N'CANDARAVE', N'CAIRANI', 1, N'22', N'04', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220403', N'PERU', N'TACNA', N'CANDARAVE', N'CURIBAYA', 1, N'22', N'04', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220404', N'PERU', N'TACNA', N'CANDARAVE', N'HUANUARA', 1, N'22', N'04', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220405', N'PERU', N'TACNA', N'CANDARAVE', N'QUILAHUANI', 1, N'22', N'04', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'220406', N'PERU', N'TACNA', N'CANDARAVE', N'CAMILACA', 1, N'22', N'04', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230101', N'PERU', N'TUMBES', N'TUMBES', N'TUMBES', 1, N'23', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230102', N'PERU', N'TUMBES', N'TUMBES', N'CORRALES', 1, N'23', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230103', N'PERU', N'TUMBES', N'TUMBES', N'LA CRUZ', 1, N'23', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230104', N'PERU', N'TUMBES', N'TUMBES', N'PAMPAS DE HOSPITAL', 1, N'23', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230105', N'PERU', N'TUMBES', N'TUMBES', N'SAN JACINTO', 1, N'23', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230106', N'PERU', N'TUMBES', N'TUMBES', N'SAN JUAN DE LA VIRGEN', 1, N'23', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230201', N'PERU', N'TUMBES', N'CONTRALMIRANTE VILLAR', N'ZORRITOS', 1, N'23', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230202', N'PERU', N'TUMBES', N'CONTRALMIRANTE VILLAR', N'CASITAS', 1, N'23', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230203', N'PERU', N'TUMBES', N'CONTRALMIRANTE VILLAR', N'CANOAS DE PUNTA SAL', 1, N'23', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230301', N'PERU', N'TUMBES', N'ZARUMILLA', N'ZARUMILLA', 1, N'23', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230302', N'PERU', N'TUMBES', N'ZARUMILLA', N'MATAPALO', 1, N'23', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230303', N'PERU', N'TUMBES', N'ZARUMILLA', N'PAPAYAL', 1, N'23', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'230304', N'PERU', N'TUMBES', N'ZARUMILLA', N'AGUAS VERDES', 1, N'23', N'03', N'04')
GO
print 'Processed 1800 total records'
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'240101', N'PERU', N'CALLAO', N'CALLAO', N'CALLAO', 1, N'24', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'240102', N'PERU', N'CALLAO', N'CALLAO', N'BELLAVISTA', 1, N'24', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'240103', N'PERU', N'CALLAO', N'CALLAO', N'LA PUNTA', 1, N'24', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'240104', N'PERU', N'CALLAO', N'CALLAO', N'CARMEN DE LA LEGUA-REYNOSO', 1, N'24', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'240105', N'PERU', N'CALLAO', N'CALLAO', N'LA PERLA', 1, N'24', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'240106', N'PERU', N'CALLAO', N'CALLAO', N'VENTANILLA', 1, N'24', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250101', N'PERU', N'UCAYALI', N'CORONEL PORTILLO', N'CALLERIA', 1, N'25', N'01', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250102', N'PERU', N'UCAYALI', N'CORONEL PORTILLO', N'YARINACOCHA', 1, N'25', N'01', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250103', N'PERU', N'UCAYALI', N'CORONEL PORTILLO', N'MASISEA', 1, N'25', N'01', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250104', N'PERU', N'UCAYALI', N'CORONEL PORTILLO', N'CAMPOVERDE', 1, N'25', N'01', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250105', N'PERU', N'UCAYALI', N'CORONEL PORTILLO', N'IPARIA', 1, N'25', N'01', N'05')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250106', N'PERU', N'UCAYALI', N'CORONEL PORTILLO', N'NUEVA REQUENA', 1, N'25', N'01', N'06')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250107', N'PERU', N'UCAYALI', N'CORONEL PORTILLO', N'MANANTAY', 1, N'25', N'01', N'07')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250201', N'PERU', N'UCAYALI', N'PADRE ABAD', N'PADRE ABAD', 1, N'25', N'02', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250202', N'PERU', N'UCAYALI', N'PADRE ABAD', N'IRAZOLA', 1, N'25', N'02', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250203', N'PERU', N'UCAYALI', N'PADRE ABAD', N'CURIMANA', 1, N'25', N'02', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250301', N'PERU', N'UCAYALI', N'ATALAYA', N'RAIMONDI', 1, N'25', N'03', N'01')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250302', N'PERU', N'UCAYALI', N'ATALAYA', N'TAHUANIA', 1, N'25', N'03', N'02')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250303', N'PERU', N'UCAYALI', N'ATALAYA', N'YURUA', 1, N'25', N'03', N'03')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250304', N'PERU', N'UCAYALI', N'ATALAYA', N'SEPAHUA', 1, N'25', N'03', N'04')
INSERT [dbo].[Ubigeo] ([CodUbigeo], [Pais], [Departamento], [Provincia], [Distrito], [Estado], [codDepartamento], [codProvincia], [codDistrito]) VALUES (N'250401', N'PERU', N'UCAYALI', N'PURUS', N'PURUS', 1, N'25', N'04', N'01')
/****** Object:  Table [dbo].[TipoAcceso]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoAcceso](
	[IdTipoAcceso] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_TipoAcceso] PRIMARY KEY CLUSTERED 
(
	[IdTipoAcceso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoAcceso] ON
INSERT [dbo].[TipoAcceso] ([IdTipoAcceso], [Nombre], [Estado]) VALUES (1, N'CREACION', 1)
INSERT [dbo].[TipoAcceso] ([IdTipoAcceso], [Nombre], [Estado]) VALUES (2, N'MODIFICACION', 1)
INSERT [dbo].[TipoAcceso] ([IdTipoAcceso], [Nombre], [Estado]) VALUES (3, N'ELIMINACION', 1)
INSERT [dbo].[TipoAcceso] ([IdTipoAcceso], [Nombre], [Estado]) VALUES (4, N'CAMBIO DE CONTRASEÑA', 1)
SET IDENTITY_INSERT [dbo].[TipoAcceso] OFF
/****** Object:  Table [dbo].[SwMalicioso]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SwMalicioso](
	[idPrograma] [int] IDENTITY(1,1) NOT NULL,
	[NombrePrograma] [varchar](250) NOT NULL,
	[TipoPrograma] [varchar](250) NOT NULL,
 CONSTRAINT [PK_SwMalicioso] PRIMARY KEY CLUSTERED 
(
	[idPrograma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SwMalicioso] ON
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (1, N'Access Remote PC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (2, N'Acronis True Image ', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (3, N'AetherPal', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (4, N'Ammyy Admin', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (5, N'Anyplace ', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (6, N'Anyplace Control', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (7, N'AnywhereTS', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (8, N'Apple Remote Desktop', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (9, N'Apple Screen Sharing (iChat)', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (10, N'AstroApp ', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (11, N'Atelier', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (12, N'Bomgar', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (13, N'Brindys BriWake', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (14, N'Cendio ThinLinc', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (15, N'Chicken', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (16, N'Chicken of the VNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (17, N'Chrome Remote Desktop', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (18, N'ChunkVNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (19, N'Citrix XenApp', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (20, N'Cliente VPN IPSec', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (21, N'Conexión a Escritorio Remoto', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (22, N'CoRD', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (23, N'Crossloop', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (24, N'CyberLink Live', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (25, N'DameWare', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (26, N'DameWare Mini Remote Control', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (27, N'Deep Freeze', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (28, N'Drive Clone Express', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (29, N'DriveClone 3.05 ', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (30, N'DrvClonerXP 2.1 ', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (31, N'DualDesk', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (32, N'EchoVNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (33, N'Ericom Blaze', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (34, N'Ericom PowerTerm WebConnect', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (35, N'Fog Creek Copilot', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (36, N'FreeNX', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (37, N'FreeRDP', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (38, N'GO-Global', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (39, N'GoSupportNow', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (40, N'GoToMyPC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (41, N'Goverlan Remote Control', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (42, N'HDClone', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (43, N'HOB HOB MacGate', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (44, N'HOB HOBLink JWT', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (45, N'HOB HOBLink UWT', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (46, N'IBM Director Remote Control', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (47, N'I''m InTouch', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (48, N'Instant Housecall Specialist 1.0 Free Edition', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (49, N'Internet Remote Control', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (50, N'iRemotePC Free', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (51, N'ISL Light', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (52, N'iTALC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (53, N'JollysFastVNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (54, N'KRDC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (55, N'LAN Bridger', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (56, N'Live Desktop Pro', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (57, N'LogMeIn', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (58, N'LogMeIn Free', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (59, N'LogMeIn Hamachi 2.1.0.159 ', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (60, N'LogMeIn Pro', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (61, N'Mac HelpMate', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (62, N'MAGIX Screenshare', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (63, N'Messenger (MSN)', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (64, N'Mikogo', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (65, N'My Remote Files', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (66, N'N-central', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (67, N'NComputing', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (68, N'Netman', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (69, N'Netmeeting', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (70, N'Netop Remote Control, OnDemand, WebConnect', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (71, N'Netretina EVO', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (72, N'Netsupport Manager', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (73, N'Netviewer', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (74, N'Network LookOut Administrator Professional', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (75, N'NoMachine NX', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (76, N'NoMachine NX Server / NX Client', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (77, N'Norton Ghost', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (78, N'noVNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (79, N'NTRadmin', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (80, N'OnlineVNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (81, N'OnLive Desktop', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (82, N'Open Text Exceed onDemand', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (83, N'Open Text Exceed onDemand[15]', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (84, N'OpenText Exceed onDemand', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (85, N'Oracle Secure Global Desktop Software/Sun VDI', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (86, N'PC Anywhere', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (87, N'PC Inspector clone maxx ', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (88, N'Pc Mover', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (89, N'Proxy Networks', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (90, N'QVD', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (91, N'QVD Free', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (92, N'Radmin', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (93, N'Radmin (Remote Administrator)', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (94, N'RapidSupport', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (95, N'rdesktop', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (96, N'RealVNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (97, N'RealVNC Enterprise', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (98, N'RealVNC Free', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (99, N'RealVNC Open', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (100, N'RealVNC Personal', N'Access Remote PC')
GO
print 'Processed 100 total records'
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (101, N'Remote Control Pro', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (102, N'Remote Desktop Control', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (103, N'Remote Desktop Manager', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (104, N'Remote Desktop Manager', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (105, N'Remote Desktop Services/Terminal Services', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (106, N'Remote Graphics Software', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (107, N'Remote Screen', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (108, N'Remote Utilities', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (109, N'Remoter VNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (110, N'Remotix', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (111, N'Remotix RDP', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (112, N'RHUB TurboMeeting', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (113, N'RSUPPORT', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (114, N'Screenconnect', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (115, N'Sercam', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (116, N'Servidor y cliente en un solo instalador.', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (117, N'ShowMyPC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (118, N'SimpleDesktop', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (119, N'SimpleHelp', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (120, N'SmartCode VNC Manager Standard Edition', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (121, N'SoftRay', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (122, N'SolarWinds', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (123, N'Splashtop Remote', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (124, N'SSH with VNC forwarding[4]', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (125, N'SSH with X forwarding', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (126, N'Sub7', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (127, N'Subsonic', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (128, N'Sun Ray/SRSS', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (129, N'Symantec pcAnywhere', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (130, N'TeamViewer', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (131, N'Techinline', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (132, N'Teradici', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (133, N'Thinc', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (134, N'TigerVNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (135, N'TightVNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (136, N'Timbuktu', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (137, N'TRAVELClip USB 1.10', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (138, N'TurboVNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (139, N'Twonky Manager', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (140, N'Ulteo Open Virtual Desktop', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (141, N'UltraVNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (142, N'VanDyke', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (143, N'VNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (144, N'WebEx', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (145, N'WebTrain', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (146, N'Win2VNC', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (147, N'Winflector', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (148, N'X11vnc', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (149, N'X2go', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (150, N'x2vnc', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (151, N'x2x', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (152, N'XDMCP', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (153, N'xpra', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (154, N'XPVS Server', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (155, N'xrdp', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (156, N'Xxclone', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (157, N'Zsoporte', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (158, N'UltraSurf', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (159, N'Mupcs', N'Access Remote PC')
INSERT [dbo].[SwMalicioso] ([idPrograma], [NombrePrograma], [TipoPrograma]) VALUES (160, N'Hotspot Shield', N'Access Remote PC')
SET IDENTITY_INSERT [dbo].[SwMalicioso] OFF
/****** Object:  Table [dbo].[DetalleGenAgenValidador]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetalleGenAgenValidador](
	[IdDetAgenValidador] [int] IDENTITY(1,1) NOT NULL,
	[IdGenAgenteValidador] [int] NOT NULL,
	[CodGenerado] [varchar](50) NOT NULL,
	[Activador] [varchar](50) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[FechaCaducidad] [date] NOT NULL,
	[Estado] [int] NOT NULL,
	[EstadoActivo] [bit] NOT NULL,
	[RutaValidador] [varchar](200) NULL,
	[NombreValidador] [varchar](100) NULL,
 CONSTRAINT [PK_DetalleGenAgenValidador] PRIMARY KEY CLUSTERED 
(
	[IdDetAgenValidador] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DetalleGenAgenValidador] ON
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (1, 2, N'VAL0000000002', N'Password01', CAST(0xC3360B00 AS Date), CAST(0xD2360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (2, 2, N'VAL0000000002', N'Password02', CAST(0xC3360B00 AS Date), CAST(0xD2360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (3, 3, N'VAL10000000003', N'Password01', CAST(0xC3360B00 AS Date), CAST(0xD2360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (4, 3, N'VAL20000000003', N'Password02', CAST(0xC3360B00 AS Date), CAST(0xD2360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (5, 4, N'VAL10000000004', N'Password01', CAST(0xC3360B00 AS Date), CAST(0xD2360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (6, 4, N'VAL20000000004', N'Password02', CAST(0xC3360B00 AS Date), CAST(0xD2360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (7, 4, N'VAL30000000004', N'Password03', CAST(0xC3360B00 AS Date), CAST(0xD2360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (8, 5, N'VAL10000000005', N'Password01', CAST(0xC3360B00 AS Date), CAST(0xD2360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (9, 5, N'VAL20000000005', N'Password02', CAST(0xC3360B00 AS Date), CAST(0xD2360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (10, 5, N'VAL30000000005', N'Password03', CAST(0xC3360B00 AS Date), CAST(0xD2360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (11, 6, N'VAL10000000006', N'Password01', CAST(0xC6360B00 AS Date), CAST(0xD5360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (12, 6, N'VAL20000000006', N'Password02', CAST(0xC6360B00 AS Date), CAST(0xD5360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (13, 6, N'VAL30000000006', N'Password03', CAST(0xC6360B00 AS Date), CAST(0xD5360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (14, 7, N'VAL10000000007', N'Password01', CAST(0xC6360B00 AS Date), CAST(0xD5360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (15, 7, N'VAL20000000007', N'Password02', CAST(0xC6360B00 AS Date), CAST(0xD5360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (16, 7, N'VAL30000000007', N'Password03', CAST(0xC6360B00 AS Date), CAST(0xD5360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (17, 7, N'VAL40000000007', N'Password04', CAST(0xC6360B00 AS Date), CAST(0xD5360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (18, 8, N'VAL10000000008', N'Password01', CAST(0xE5360B00 AS Date), CAST(0xF4360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (19, 8, N'VAL20000000008', N'Password02', CAST(0xE5360B00 AS Date), CAST(0xF4360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (20, 8, N'VAL30000000008', N'Password03', CAST(0xE5360B00 AS Date), CAST(0xF4360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (21, 8, N'VAL40000000008', N'Password04', CAST(0xE5360B00 AS Date), CAST(0xF4360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (22, 9, N'VAL10000000009', N'Password01', CAST(0xE5360B00 AS Date), CAST(0xF4360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (23, 10, N'VAL10000000010', N'Password01', CAST(0xE6360B00 AS Date), CAST(0xF5360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (24, 10, N'VAL20000000010', N'Password02', CAST(0xE6360B00 AS Date), CAST(0xF5360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (25, 11, N'VAL10000000011', N'Password01', CAST(0xE7360B00 AS Date), CAST(0xF6360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (26, 12, N'VAL10000000012', N'Password01', CAST(0xE7360B00 AS Date), CAST(0xF6360B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (27, 14, N'VAL10000000014', N'Password01', CAST(0xF7360B00 AS Date), CAST(0x06370B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (28, 15, N'VAL10000000015', N'Password01', CAST(0xF7360B00 AS Date), CAST(0x06370B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (29, 16, N'VAL10000000016', N'Password01', CAST(0xF8360B00 AS Date), CAST(0x07370B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (30, 17, N'VAL10000000017', N'Password01', CAST(0xF9360B00 AS Date), CAST(0x08370B00 AS Date), 7, 1, N'/', N'Cliente.exe')
INSERT [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador], [IdGenAgenteValidador], [CodGenerado], [Activador], [FechaCreacion], [FechaCaducidad], [Estado], [EstadoActivo], [RutaValidador], [NombreValidador]) VALUES (31, 18, N'VAL10000000018', N'Password01', CAST(0x94370B00 AS Date), CAST(0xA3370B00 AS Date), 7, 1, N'/', N'Cliente.exe')
SET IDENTITY_INSERT [dbo].[DetalleGenAgenValidador] OFF
/****** Object:  Table [dbo].[Rol]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rol](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[NombreRol] [varchar](50) NULL,
	[DescripcionRol] [varchar](200) NULL,
	[EstadoRol] [bit] NOT NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Rol] ON
INSERT [dbo].[Rol] ([IdRol], [NombreRol], [DescripcionRol], [EstadoRol]) VALUES (1, N'CLIENTE', N'DESCRIPCION DE CLIENTE', 1)
INSERT [dbo].[Rol] ([IdRol], [NombreRol], [DescripcionRol], [EstadoRol]) VALUES (2, N'VALIDADOR', N'VALIDADOR', 1)
INSERT [dbo].[Rol] ([IdRol], [NombreRol], [DescripcionRol], [EstadoRol]) VALUES (3, N'APROVISIONADOR', N'APROVISIONADOR', 1)
INSERT [dbo].[Rol] ([IdRol], [NombreRol], [DescripcionRol], [EstadoRol]) VALUES (4, N'SEGURIDAD', N'SEGURIDAD DEL SISTEMA', 1)
SET IDENTITY_INSERT [dbo].[Rol] OFF
/****** Object:  Table [dbo].[ResultadoValidacionEquipo]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ResultadoValidacionEquipo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pcid] [varchar](250) NULL,
	[Tipo] [varchar](20) NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [PK_ResultadoValidacionEquipo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ResultadoValidacionEquipo] ON
INSERT [dbo].[ResultadoValidacionEquipo] ([id], [pcid], [Tipo], [Descripcion]) VALUES (70, N'd08bd16d-e771-4c15-a538-1bae84d291f9', N'Característica', N'Sistema Operativo')
INSERT [dbo].[ResultadoValidacionEquipo] ([id], [pcid], [Tipo], [Descripcion]) VALUES (71, N'd08bd16d-e771-4c15-a538-1bae84d291f9', N'Característica', N'Procesador')
INSERT [dbo].[ResultadoValidacionEquipo] ([id], [pcid], [Tipo], [Descripcion]) VALUES (72, N'd08bd16d-e771-4c15-a538-1bae84d291f9', N'Característica', N'Memoria')
INSERT [dbo].[ResultadoValidacionEquipo] ([id], [pcid], [Tipo], [Descripcion]) VALUES (73, N'd08bd16d-e771-4c15-a538-1bae84d291f9', N'Característica', N'Sistema Operativo')
INSERT [dbo].[ResultadoValidacionEquipo] ([id], [pcid], [Tipo], [Descripcion]) VALUES (74, N'd08bd16d-e771-4c15-a538-1bae84d291f9', N'Característica', N'Procesador')
INSERT [dbo].[ResultadoValidacionEquipo] ([id], [pcid], [Tipo], [Descripcion]) VALUES (75, N'd08bd16d-e771-4c15-a538-1bae84d291f9', N'Característica', N'Memoria')
INSERT [dbo].[ResultadoValidacionEquipo] ([id], [pcid], [Tipo], [Descripcion]) VALUES (76, N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0', N'Aplicación', N'LogMeIn Hamachi')
INSERT [dbo].[ResultadoValidacionEquipo] ([id], [pcid], [Tipo], [Descripcion]) VALUES (77, N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0', N'Aplicación', N'LogMeIn Hamachi')
INSERT [dbo].[ResultadoValidacionEquipo] ([id], [pcid], [Tipo], [Descripcion]) VALUES (78, N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0', N'Aplicación', N'LogMeIn Hamachi')
INSERT [dbo].[ResultadoValidacionEquipo] ([id], [pcid], [Tipo], [Descripcion]) VALUES (79, N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0', N'Aplicación', N'LogMeIn Hamachi')
INSERT [dbo].[ResultadoValidacionEquipo] ([id], [pcid], [Tipo], [Descripcion]) VALUES (80, N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0', N'Aplicación', N'LogMeIn Hamachi')
SET IDENTITY_INSERT [dbo].[ResultadoValidacionEquipo] OFF
/****** Object:  Table [dbo].[GenAgenValidador]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenAgenValidador](
	[IdGenAgenteValidador] [int] IDENTITY(1,1) NOT NULL,
	[IdSolicitud] [int] NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[IdUsuarioCreacion] [int] NOT NULL,
	[IdEstadoGeneracion] [int] NOT NULL,
	[EstadoActivo] [bit] NOT NULL,
 CONSTRAINT [PK_GenAgenValidador] PRIMARY KEY CLUSTERED 
(
	[IdGenAgenteValidador] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GenAgenValidador] ON
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (2, 5, CAST(0xC3360B00 AS Date), 2, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (3, 8, CAST(0xC3360B00 AS Date), 2, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (4, 27, CAST(0xC3360B00 AS Date), 2, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (5, 21, CAST(0xC3360B00 AS Date), 2, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (6, 20, CAST(0xC6360B00 AS Date), 2, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (7, 24, CAST(0xC6360B00 AS Date), 2, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (8, 25, CAST(0xE5360B00 AS Date), 1, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (9, 29, CAST(0xE5360B00 AS Date), 1, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (10, 31, CAST(0xE6360B00 AS Date), 1, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (11, 32, CAST(0xE7360B00 AS Date), 1, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (12, 33, CAST(0xE7360B00 AS Date), 1, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (13, 34, CAST(0xF7360B00 AS Date), 1, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (14, 37, CAST(0xF7360B00 AS Date), 1, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (15, 36, CAST(0xF7360B00 AS Date), 1, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (16, 40, CAST(0xF8360B00 AS Date), 1, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (17, 39, CAST(0xF9360B00 AS Date), 4, 8, 1)
INSERT [dbo].[GenAgenValidador] ([IdGenAgenteValidador], [IdSolicitud], [FechaCreacion], [IdUsuarioCreacion], [IdEstadoGeneracion], [EstadoActivo]) VALUES (18, 41, CAST(0x94370B00 AS Date), 1, 8, 1)
SET IDENTITY_INSERT [dbo].[GenAgenValidador] OFF
/****** Object:  StoredProcedure [dbo].[up_ParametroGeneracionCuenta_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_ParametroGeneracionCuenta_Obtener]
(
	@IdParametro int
)
AS
	SET NOCOUNT ON

	SELECT 		IdParametro,
		DescripcionParametro,
		Prefijo,
		LongitudCuenta,
		Correlativo,
		FechaRegistro,
		EstadoActivo
	FROM   ParametroGeneracionCuenta
	WHERE  
		IdParametro = @IdParametro
GO
/****** Object:  StoredProcedure [dbo].[up_ParametroGeneracionCuenta_Actualizar_Correl]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_ParametroGeneracionCuenta_Actualizar_Correl]
(
	@IdParametro int,
	@Correlativo int 
	
)
AS
	SET NOCOUNT ON
	
	UPDATE ParametroGeneracionCuenta
	SET
		
		Correlativo = @Correlativo + 1
		
	WHERE 
		IdParametro = @IdParametro
GO
/****** Object:  StoredProcedure [dbo].[up_Rol_Obtener]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Rol_Obtener]
(
	@IdRol int
)
AS
	SET NOCOUNT ON

	SELECT 		IdRol,
		NombreRol,
		DescripcionRol,
		EstadoRol
	FROM   Rol
	WHERE  
		IdRol = @IdRol

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Rol_Insertar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Rol_Insertar]
(
	@IdRol int = NULL OUTPUT,
	@NombreRol varchar(50) = NULL,
	@DescripcionRol varchar(200) = NULL,
	@EstadoRol bit
)
AS
	SET NOCOUNT ON

	INSERT INTO Rol
	(
		NombreRol,
		DescripcionRol,
		EstadoRol
	)
	VALUES
	(
		@NombreRol,
		@DescripcionRol,
		@EstadoRol
	)

	SELECT @IdRol = SCOPE_IDENTITY();

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Rol_Eliminar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Rol_Eliminar]
(
	@IdRol int
)
AS
	SET NOCOUNT ON

	DELETE 
	FROM   Rol
	WHERE  
		IdRol = @IdRol

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Rol_Buscar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Rol_Buscar]
(
	@NombreRol varchar(50)
)
AS
	SET NOCOUNT ON

	SELECT 		IdRol,
		NombreRol,
		DescripcionRol,
		EstadoRol
	FROM   Rol
	WHERE  
		NombreRol  like @NombreRol

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Rol_Actualizar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Rol_Actualizar]
(
	@IdRol int,
	@NombreRol varchar(50) = NULL,
	@DescripcionRol varchar(200) = NULL,
	@EstadoRol bit
)
AS
	SET NOCOUNT ON
	
	UPDATE Rol
	SET
		NombreRol = @NombreRol,
		DescripcionRol = @DescripcionRol,
		EstadoRol = @EstadoRol
	WHERE 
		IdRol = @IdRol

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Menu_Buscar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Menu_Buscar]
 @VchEtiquetaobjeto varchar (50)

AS
	SET NOCOUNT ON

	SELECT 		IdMenu,
		NombreFisicoMenu,
		DescripcionMenu,
		EtiquetaMenu,
		UrlMenu,
		IdMenuPadre,
		EstadoMenu
	FROM   Menu
	--WhERE (@VchEtiquetaobjeto IS NULL OR @VchEtiquetaobjeto='' OR EtiquetaMenu LIKE @VchEtiquetaobjeto)
	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Menu_Actualizar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Menu_Actualizar]
(
	@IdMenu int,
	@NombreFisicoMenu varchar(50),
	@DescripcionMenu varchar(150) = NULL,
	@EtiquetaMenu varchar(50),
	@UrlMenu varchar(60) = NULL,
	@IdMenuPadre int = NULL,
	@EstadoMenu bit
)
AS
	SET NOCOUNT ON
	
	UPDATE Menu
	SET
		NombreFisicoMenu = @NombreFisicoMenu,
		DescripcionMenu = @DescripcionMenu,
		EtiquetaMenu = @EtiquetaMenu,
		UrlMenu = @UrlMenu,
		IdMenuPadre = @IdMenuPadre,
		EstadoMenu = @EstadoMenu
	WHERE 
		IdMenu = @IdMenu
GO
/****** Object:  StoredProcedure [dbo].[up_Menu_Listar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Menu_Listar]

AS
	SET NOCOUNT ON

	SELECT 		IdMenu,
		NombreFisicoMenu,
		DescripcionMenu,
		EtiquetaMenu,
		UrlMenu,
		IdMenuPadre,
		EstadoMenu
	FROM   Menu
	

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Menu_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Menu_Insertar]
(
	@IdMenu int = NULL OUTPUT,
	@NombreFisicoMenu varchar(50),
	@DescripcionMenu varchar(150) = NULL,
	@EtiquetaMenu varchar(50),
	@UrlMenu varchar(60) = NULL,
	@IdMenuPadre int = NULL,
	@EstadoMenu bit
)
AS
	SET NOCOUNT ON

	INSERT INTO Menu
	(
		NombreFisicoMenu,
		DescripcionMenu,
		EtiquetaMenu,
		UrlMenu,
		IdMenuPadre,
		EstadoMenu
	)
	VALUES
	(
		@NombreFisicoMenu,
		@DescripcionMenu,
		@EtiquetaMenu,
		@UrlMenu,
		@IdMenuPadre,
		@EstadoMenu
	)

	SELECT @IdMenu = SCOPE_IDENTITY();

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Menu_Obtener_Hijos]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Menu_Obtener_Hijos]
@IdMenu int
AS
	WITH Managers AS
	(
	
	SELECT IdMenu--, IdObjetoPadre, NombreFisicoObjeto
	FROM Menu
	WHERE IdMenu = @IdMenu
	UNION ALL
	
	SELECT e.IdMenu--, e.IdObjetoPadre, e.NombreFisicoObjeto
	FROM Menu e INNER JOIN Managers m 
	ON e.IdMenuPadre = m.IdMenu
	)
	SELECT IdMenu FROM Managers
	WHERE IdMenu <> @IdMenu OPTION (MAXRECURSION 50)
GO
/****** Object:  StoredProcedure [dbo].[up_Menu_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Menu_Obtener]
(
	@IdMenu int
)
AS
	SET NOCOUNT ON

	SELECT 		IdMenu,
		NombreFisicoMenu,
		DescripcionMenu,
		EtiquetaMenu,
		UrlMenu,
		IdMenuPadre,
		EstadoMenu
	FROM   Menu
	WHERE  
		IdMenu = @IdMenu

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Persona_ObtenerDatosCompletos]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Persona_ObtenerDatosCompletos]

AS
	SET NOCOUNT ON

	SELECT IdPersona,
		Nombres,
		ApePaterno,
		ApeMaterno,
		FechaCreacion,
		DocumentoIdentidad,
		Estado,
		Correo
	FROM   Persona
	WHERE  
		Estado =1;
GO
/****** Object:  StoredProcedure [dbo].[up_Persona_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Persona_Obtener]
(
	@IdPersona int,
	@DocumentoIdentidad varchar(10)=null
)
AS
	SET NOCOUNT ON

	SELECT IdPersona,
		Nombres,
		ApePaterno,
		ApeMaterno,
		FechaCreacion,
		DocumentoIdentidad,
		Estado,
		Correo
	FROM   Persona
	WHERE  
		(@IdPersona =-1 or IdPersona = @IdPersona)
	AND (@DocumentoIdentidad is null or DocumentoIdentidad=@DocumentoIdentidad)
GO
/****** Object:  StoredProcedure [dbo].[up_Persona_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Persona_Insertar]
@IdPersona int = NULL OUTPUT,
@Nombres varchar(100),
@ApePaterno varchar(100),
@ApeMaterno varchar(100),
@DocumentoIdentidad varchar(10),
@Estado bit,
@Correo varchar(100)


AS
INSERT INTO [Persona]
           ([Nombres]
           ,[ApePaterno]
           ,[ApeMaterno]
           ,[FechaCreacion]
           ,[DocumentoIdentidad]
           ,[Estado]
           ,[Correo])
     VALUES
           (@Nombres, 
           @ApePaterno, 
           @ApeMaterno, 
           GETDATE(),
           @DocumentoIdentidad,
           @Estado,
           @Correo)

SELECT @IdPersona = SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[up_Persona_Eliminar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Persona_Eliminar]
(
	@IdPersona int
)
AS
	SET NOCOUNT ON

	DELETE 
	FROM   Persona
	WHERE  
		IdPersona = @IdPersona

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Persona_Buscar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Persona_Buscar]
(
	
	@Nombres varchar(100)=null,
	@ApePaterno varchar(100)=null,
	@ApeMaterno varchar(100)=null,
	@DocumentoIdentidad varchar(100)=null
)
AS
	SET NOCOUNT ON

	SELECT IdPersona,
		Nombres,
		ApePaterno,
		ApeMaterno,
		FechaCreacion,
		DocumentoIdentidad,
		Estado,
		Correo
	FROM   Persona
	WHERE  		
	 (@Nombres='' or Nombres like @Nombres)
	 AND (@ApePaterno ='' or ApePaterno like @ApePaterno)
	 AND (@ApeMaterno ='' or ApeMaterno like @ApeMaterno)
	 AND (@DocumentoIdentidad ='' or DocumentoIdentidad like @DocumentoIdentidad)
GO
/****** Object:  StoredProcedure [dbo].[up_Persona_Actualizar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Persona_Actualizar]
@IdPersona int ,
@Nombres varchar(100),
@ApePaterno varchar(100),
@ApeMaterno varchar(100),
@DocumentoIdentidad varchar(10),
@Estado bit,
@Correo varchar(100)


AS

UPDATE [Persona]
   SET [Nombres] = @Nombres
      ,[ApePaterno] = @ApePaterno
      ,[ApeMaterno] = @ApeMaterno
      ,[DocumentoIdentidad] = @DocumentoIdentidad
      ,[Estado] = @Estado
      ,[Correo] = @Correo
 WHERE IdPersona = @IdPersona
GO
/****** Object:  StoredProcedure [dbo].[up_GenAgenValidador_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_GenAgenValidador_Insertar]
(
	@IdGenAgenteValidador int = NULL OUTPUT,
	@IdSolicitud int,	
	@IdUsuarioCreacion int,
	@IdEstadoGeneracion int
	
)
AS
	SET NOCOUNT ON

	INSERT INTO GenAgenValidador
	(
		IdSolicitud,
		FechaCreacion,
		IdUsuarioCreacion,
		IdEstadoGeneracion,
		EstadoActivo
	)
	VALUES
	(
		@IdSolicitud,
		GETDATE(),
		@IdUsuarioCreacion,
		@IdEstadoGeneracion,
		1
	)

	SELECT @IdGenAgenteValidador = SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[up_Estado_Listar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Estado_Listar]
@TipoEstado int = 1
AS
	SET NOCOUNT ON

	SELECT IdEstado,
	NombreEstado,
	EstadoActivo,
	TipoEstado
	FROM   Estado
	WHERE TipoEstado = @TipoEstado
GO
/****** Object:  StoredProcedure [dbo].[up_EscaneoAgenciaSucursal_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_EscaneoAgenciaSucursal_Obtener]
@idSolicitud varchar(25)
AS

select fsolicitud, idagente, estado , idsolicitud
from xmls  
WHERE idsolicitud = @idSolicitud
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleGenAgenValidador_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleGenAgenValidador_Obtener]
(
	@IdDetAgenValidador int
)
AS
	SET NOCOUNT ON

SELECT     DetalleGenAgenValidador.IdGenAgenteValidador, DetalleGenAgenValidador.CodGenerado, DetalleGenAgenValidador.Activador, 
          DetalleGenAgenValidador.FechaCreacion, DetalleGenAgenValidador.FechaCaducidad, DetalleGenAgenValidador.Estado, 
          DetalleGenAgenValidador.EstadoActivo, Estado.NombreEstado, DetalleGenAgenValidador.IdDetAgenValidador, DetalleGenAgenValidador.RutaValidador, DetalleGenAgenValidador.NombreValidador
FROM         DetalleGenAgenValidador INNER JOIN
          Estado ON DetalleGenAgenValidador.Estado = Estado.IdEstado
WHERE  
DetalleGenAgenValidador.IdDetAgenValidador = @IdDetAgenValidador
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleGenAgenValidador_Listar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleGenAgenValidador_Listar]
(
	@IdGenAgenteValidador int
)
AS
	SET NOCOUNT ON

SELECT     DetalleGenAgenValidador.IdGenAgenteValidador, DetalleGenAgenValidador.CodGenerado, DetalleGenAgenValidador.Activador, 
          DetalleGenAgenValidador.FechaCreacion, DetalleGenAgenValidador.FechaCaducidad, DetalleGenAgenValidador.Estado, 
          DetalleGenAgenValidador.EstadoActivo, Estado.NombreEstado, DetalleGenAgenValidador.IdDetAgenValidador, DetalleGenAgenValidador.RutaValidador,DetalleGenAgenValidador.NombreValidador
FROM         DetalleGenAgenValidador INNER JOIN
          Estado ON DetalleGenAgenValidador.Estado = Estado.IdEstado
WHERE  
DetalleGenAgenValidador.IdGenAgenteValidador = @IdGenAgenteValidador
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleGenAgenValidador_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleGenAgenValidador_Insertar]
(
	@IdDetAgenValidador int = NULL OUTPUT,
	@IdGenAgenteValidador int,
	@CodGenerado varchar(50),
	@Activador varchar(50),
	@FechaCaducidad date,
	@Estado int,
	@RutaValidador varchar(200),
	@NombreValidador varchar(100)
	
)
AS
	SET NOCOUNT ON

	INSERT INTO DetalleGenAgenValidador
	(
		IdGenAgenteValidador,
		CodGenerado,
		Activador,
		FechaCreacion,
		FechaCaducidad,
		Estado,
		EstadoActivo,
		RutaValidador,
		NombreValidador
	)
	VALUES
	(
		@IdGenAgenteValidador,
		@CodGenerado,
		@Activador,
		GETDATE(),
		@FechaCaducidad,
		@Estado,
		1,
		@RutaValidador,
		@NombreValidador
	)

	SELECT @IdDetAgenValidador = SCOPE_IDENTITY();

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_AplicacionAutorizanteHistorico_Actualizar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_AplicacionAutorizanteHistorico_Actualizar]
(
	@IdHistorico int,
	@IdAplicacion int,
	@IdAutorizante int,
	@Accion varchar(15),
	@FechaModificacion datetime,
	@UsuarioModificacion char(10)
)
AS
	SET NOCOUNT ON
	
	UPDATE AplicacionAutorizanteHistorico
	SET
		IdAplicacion = @IdAplicacion,
		IdAutorizante = @IdAutorizante,
		Accion = @Accion,
		FechaModificacion = @FechaModificacion,
		UsuarioModificacion = @UsuarioModificacion
	WHERE 
		IdHistorico = @IdHistorico

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_AplicacionAutorizanteHistorico_Listar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_AplicacionAutorizanteHistorico_Listar]
(
	@IdHistorico int
)
AS
	SET NOCOUNT ON

	SELECT 		IdAplicacion,
		IdAutorizante,
		Accion,
		FechaModificacion,
		UsuarioModificacion,
		Comentario,
		RutaEvidencia
	FROM   AplicacionAutorizanteHistorico
	WHERE  
		IdHistorico = @IdHistorico

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_AplicacionAutorizanteHistorico_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_AplicacionAutorizanteHistorico_Insertar]
(
	@IdHistorico int = NULL OUTPUT,
	@IdAplicacion int,
	@IdAutorizante int,
	@Accion varchar(15),
	@FechaModificacion datetime,
	@UsuarioModificacion char(10),
	@RutaEvidencia varchar(200),
	@Comentario varchar(200)
)
AS
	SET NOCOUNT ON

	INSERT INTO AplicacionAutorizanteHistorico
	(
		IdAplicacion,
		IdAutorizante,
		Accion,
		FechaModificacion,
		UsuarioModificacion,
		RutaEvidencia,
		Comentario
	)
	VALUES
	(
		@IdAplicacion,
		@IdAutorizante,
		@Accion,
		@FechaModificacion,
		@UsuarioModificacion,
		@RutaEvidencia,
		@Comentario
	)

	SELECT @IdHistorico = SCOPE_IDENTITY();

	RETURN @@Error
GO
/****** Object:  UserDefinedFunction [dbo].[FNNumEquipos]    Script Date: 11/01/2013 22:53:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select b.FechaRegistro, b.NroSolicitud, c.NombreAgencia, d.NombreSucursal, b.NumEquipos from xmls a 
--inner join SolicitudAcceso b on a.idsolicitud = b.NroSolicitud
--inner join Agencia c on b.IdAgencia = c.IdAgencia
--inner join Sucursal d on d.IdSucursal = b.IdSucursal


--select dbo.FNEstado('CRQ0002032') as 'ddd'

create FUNCTION [dbo].[FNNumEquipos]
(
	@solicitud varchar(50)
)
RETURNS varchar(20) 
AS
BEGIN

	DECLARE @contadorTOT int
	
	set @contadorTOT = (select count(*) from xmls where idsolicitud = @solicitud)

	
	RETURN @contadorTOT

END
GO
/****** Object:  UserDefinedFunction [dbo].[FNEstado]    Script Date: 11/01/2013 22:53:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select b.FechaRegistro, b.NroSolicitud, c.NombreAgencia, d.NombreSucursal, b.NumEquipos from xmls a 
--inner join SolicitudAcceso b on a.idsolicitud = b.NroSolicitud
--inner join Agencia c on b.IdAgencia = c.IdAgencia
--inner join Sucursal d on d.IdSucursal = b.IdSucursal


--select dbo.FNEstado('CRQ0002032') as 'ddd'

create FUNCTION [dbo].[FNEstado]
(
	@solicitud varchar(50)
)
RETURNS varchar(20) 
AS
BEGIN

	DECLARE @contadorTOT int
	DECLARE @contadorTRUE int
	declare @resultado varchar(25)
	
	set @contadorTOT = (select count(*) from xmls where idsolicitud = @solicitud)
	set @contadorTRUE = (select count(*) from xmls a where a.idsolicitud = @solicitud and a.estado = 1)

	IF(@contadorTRUE <> 0 AND  @contadorTRUE <> @contadorTOT)
		set @resultado = 'INCOMPLETO'

	if(@contadorTRUE=0)
		set @resultado = 'NO VALIDADO'

	if(@contadorTRUE = @contadorTOT)
		set @resultado = 'VALIDADO'


	RETURN @resultado

END
GO
/****** Object:  StoredProcedure [dbo].[up_Agencia_Actualizar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Agencia_Actualizar]
(
	@IdAgencia int,
	@NombreAgencia varchar(50),
	@IdRepresentante int,
	@RUC char(11) = NULL,
	@Nemotecnico_ag varchar(50) = NULL,
	@Estado bit
)
AS
	SET NOCOUNT ON
	
	UPDATE Agencia
	SET
		NombreAgencia = @NombreAgencia,
		IdRepresentante = @IdRepresentante,
		RUC = @RUC,
		Nemotecnico_ag = @Nemotecnico_ag,
		Estado = @Estado
	WHERE 
		IdAgencia = @IdAgencia
GO
/****** Object:  Table [dbo].[apps]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[apps](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Version] [varchar](50) NULL,
	[Publisher] [varchar](80) NULL,
	[InstallDate] [varchar](50) NULL,
	[pcid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_apps] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[apps] ON
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1, N'Google Talk Plugin', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2, NULL, N'3.14.17.11865', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (3, NULL, NULL, N'Google', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (4, NULL, NULL, NULL, N'20130227', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (6, NULL, N'1.0.0.9', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (7, NULL, NULL, N'Vinay Sajip', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (8, NULL, NULL, NULL, N'20130116', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (9, N'Node.js', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (10, NULL, N'0.8.17', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (11, NULL, NULL, N'Joyent, Inc. and other Node contributors', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (12, NULL, NULL, NULL, N'20130111', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (13, N'Microsoft Application Error Reporting', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (14, NULL, N'12.0.6012.5000', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (15, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (16, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (17, N'Microsoft ASP.NET MVC 2', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (18, NULL, N'2.0.50217.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (19, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (20, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (21, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4974', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (22, NULL, N'9.0.30729.4974', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (23, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (24, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (25, N'Microsoft_VC90_MFCLOC_x86', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (26, NULL, N'1.00.0000', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (27, NULL, NULL, N'Adobe', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (28, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (29, N'Microsoft Silverlight 3 SDK - Español', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (30, NULL, N'3.0.40818.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (31, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (32, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (33, N'Microsoft_VC90_CRT_x86', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (34, NULL, N'1.00.0000', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (35, NULL, NULL, N'Adobe', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (36, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (37, N'Microsoft Games for Windows - LIVE', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (38, NULL, N'3.3.24.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (39, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (40, NULL, NULL, NULL, N'20110316', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (41, N'Microsoft SQL Server 2008 Database Engine Services', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (42, NULL, N'10.1.2531.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (43, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (44, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (45, N'Microsoft SQL Server 2008 Browser', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (46, NULL, N'10.1.2531.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (47, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (48, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (49, N'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (50, NULL, N'10.0.40219', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (51, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (52, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (53, N'Microsoft Web Platform Installer 4.0', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (54, NULL, N'4.0.1692', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (55, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (56, NULL, NULL, NULL, N'20130208', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (57, N'Archivos auxiliares de instalación de Microsoft SQL Server 2008', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (58, NULL, N'10.1.2731.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (59, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (60, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (61, N'Citrix online plug-in (USB)', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (62, NULL, N'11.2.0.31560', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (63, NULL, NULL, N'Citrix Systems, Inc.', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (64, NULL, NULL, NULL, N'20130224', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (65, N'Microsoft ASP.NET MVC 2 - VWD Express 2010 Tools', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (66, NULL, N'2.0.50217.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (67, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (68, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (69, N'Microsoft SQL Server 2008 Common Files', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (70, NULL, N'10.1.2531.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (71, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (72, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (73, N'Intel® Hardware Accelerated Execution Manager', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (74, NULL, N'1.0.1', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (75, NULL, NULL, N'Intel Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (76, NULL, NULL, NULL, N'20130109', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (77, N'Microsoft SQL Server 2008 Database Engine Services', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (78, NULL, N'10.1.2531.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (79, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (80, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (81, N'Adobe AIR', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (82, NULL, N'3.1.0.4880', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (83, NULL, NULL, N'Adobe Systems Incorporated', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (84, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (85, N'Microsoft SQL Server Database Publishing Wizard 1.4', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (86, NULL, N'10.1.2512.8', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (87, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (88, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (89, N'Visual Studio 2010 Tools for SQL Server Compact 3.5 SP2 ESN', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (90, NULL, N'4.0.8080.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (91, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (92, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (93, N'TuneUp Utilities Language Pack (es-MX)', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (94, NULL, N'13.0.3000.149', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (95, NULL, NULL, N'TuneUp Software', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (96, NULL, NULL, NULL, N'20130108', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (97, N'bl', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (98, NULL, N'1.0.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (99, NULL, NULL, N'Your Company Name', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (100, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (101, N'Java 7 Update 10', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
GO
print 'Processed 100 total records'
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (102, NULL, N'7.0.100', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (103, NULL, NULL, N'Oracle', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (104, NULL, NULL, NULL, N'20130108', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (105, N'TortoiseSVN 1.7.11.23600 (32 bit)', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (106, NULL, N'1.7.23600', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (107, NULL, NULL, N'TortoiseSVN', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (108, NULL, NULL, NULL, N'20130111', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (109, N'ph', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (110, NULL, N'1.0.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (111, NULL, NULL, N'Your Company Name', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (112, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (113, N'Microsoft ASP.NET MVC 2 - VWD Express 2010 Tools - ESN', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (114, NULL, N'2.0.50414.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (115, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (116, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (117, N'Microsoft .NET Framework 4 Client Profile', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (118, NULL, N'4.0.30319', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (119, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (120, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (121, N'Adobe Widget Browser', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (122, NULL, N'2.0.348', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (123, NULL, NULL, N'Adobe Systems Incorporated.', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (124, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (125, N'WMI Tools', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (126, NULL, N'1.50.1131.0001', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (127, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (128, NULL, NULL, NULL, N'20130131', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (129, N'Adobe Acrobat X Pro - Italiano, Español, Nederlands, Português', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (130, NULL, N'10.1.1', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (131, NULL, NULL, N'Adobe Systems', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (132, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (133, N'Adobe Reader X (10.1.5) - Español', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (134, NULL, N'10.1.5', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (135, NULL, NULL, N'Adobe Systems Incorporated', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (136, NULL, NULL, NULL, N'20130108', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (137, N'Microsoft SQL Server 2008 Database Engine Shared', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (138, NULL, N'10.1.2531.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (139, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (140, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (141, N'Microsoft ASP.NET MVC 2 - ESN', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (142, NULL, N'2.0.50331.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (143, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (144, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (145, N'PDF Settings CS6', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (146, NULL, N'11.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (147, NULL, NULL, N'Adobe Systems Incorporated', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (148, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (149, N'Microsoft SQL Server System CLR Types', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (150, NULL, N'10.50.1447.4', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (151, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (152, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (153, N'Microsoft Games for Windows - LIVE Redistributable', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (154, NULL, N'3.2.3.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (155, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (156, NULL, NULL, NULL, N'20110316', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (157, N'Microsoft .NET Framework 4 Multi-Targeting Pack', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (158, NULL, N'4.0.30319', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (159, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (160, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (161, N'TuneUp Utilities 2013', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (162, NULL, N'13.0.3000.149', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (163, NULL, NULL, N'TuneUp Software', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (164, NULL, NULL, NULL, N'20130108', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (165, N'Microsoft_VC80_CRT_x86', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (166, NULL, N'8.0.50727.4053', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (167, NULL, NULL, N'Adobe', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (168, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (169, N'Google Update Helper', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (170, NULL, N'1.3.21.135', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (171, NULL, NULL, N'Google Inc.', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (172, NULL, NULL, NULL, N'20130221', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (173, N'Web Deployment Tool', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (174, NULL, N'1.1.0618', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (175, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (176, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (177, N'Microsoft .NET Framework 4 Extended ESN Language Pack', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (178, NULL, N'4.0.30319', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (179, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (180, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (181, N'Microsoft SQL Server 2008 RsFx Driver', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (182, NULL, N'10.1.2531.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (183, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (184, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (185, N'Microsoft Help Viewer 1.0', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (186, NULL, N'1.0.30319', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (187, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (188, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (189, N'Microsoft Web Deploy 2.0', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (190, NULL, N'2.0.1070', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (191, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (192, NULL, NULL, NULL, N'20130218', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (193, N'Adobe Help Manager', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (194, NULL, N'4.0.244', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (195, NULL, NULL, N'Adobe Systems Incorporated', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (196, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (197, N'Win7codecs', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (198, NULL, N'2.7.3', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (199, NULL, NULL, N'Shark007', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (200, NULL, NULL, NULL, N'20110316', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (201, N'Microsoft Visual C++ 2010  x86 Runtime - 10.0.30319', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (202, NULL, N'10.0.30319', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
GO
print 'Processed 200 total records'
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (203, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (204, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (205, N'Microsoft_VC90_MFC_x86', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (206, NULL, N'1.00.0000', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (207, NULL, NULL, N'Adobe', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (208, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (209, N'Microsoft SQL Server VSS Writer', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (210, NULL, N'10.1.2531.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (211, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (212, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (213, N'Microsoft Visual C# 2010 Express - ESN', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (214, NULL, N'10.0.30319', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (215, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (216, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (217, N'Microsoft SQL Server 2008 Common Files', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (218, NULL, N'10.0.1600.22', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (219, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (220, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (221, N'Sql Server Customer Experience Improvement Program', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (222, NULL, N'10.1.2531.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (223, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (224, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (225, N'Microsoft Visual C++ 2005 Redistributable', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (226, NULL, N'8.0.61001', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (227, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (228, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (229, N'LibreOffice 3.6', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (230, NULL, N'3.6.4.3', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (231, NULL, NULL, N'The Document Foundation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (232, NULL, NULL, NULL, N'20130109', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (233, N'Citrix online plug-in (DV)', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (234, NULL, N'11.2.0.31560', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (235, NULL, NULL, N'Citrix Systems, Inc.', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (236, NULL, NULL, NULL, N'20130224', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (237, N'Citrix online plug-in (HDX)', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (238, NULL, N'11.2.0.31560', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (239, NULL, NULL, N'Citrix Systems, Inc.', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (240, NULL, NULL, NULL, N'20130224', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (241, N'Microsoft SQL Server 2008 Native Client', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (242, NULL, N'10.1.2531.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (243, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (244, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (245, N'Python 2.7.3', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (246, NULL, N'2.7.3150', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (247, NULL, NULL, N'Python Software Foundation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (248, NULL, NULL, NULL, N'20130116', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (249, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4148', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (250, NULL, N'9.0.30729.4148', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (251, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (252, NULL, NULL, NULL, N'20130121', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (253, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (254, NULL, N'9.0.30729', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (255, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (256, NULL, NULL, NULL, N'20110316', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (257, N'Microsoft Silverlight', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (258, NULL, N'3.0.40818.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (259, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (260, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (261, N'Microsoft .NET Framework 4 Client Profile ESN Language Pack', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (262, NULL, N'4.0.30319', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (263, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (264, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (265, N'Objetos de administración de Microsoft SQL Server 2008 R2', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (266, NULL, N'10.50.1447.4', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (267, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (268, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (269, N'Microsoft Help Viewer 1.0 Language Pack - ESN', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (270, NULL, N'1.0.30319', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (271, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (272, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (273, N'Microsoft SQL Server 2008 Database Engine Shared', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (274, NULL, N'10.1.2531.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (275, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (276, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (277, N'Citrix online plug-in (Web)', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (278, NULL, N'11.2.0.31560', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (279, NULL, NULL, N'Citrix Systems, Inc.', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (280, NULL, NULL, NULL, N'20130224', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (281, N'Microsoft SQL Server Compact 3.5 SP2 ESN', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (282, NULL, N'3.5.8080.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (283, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (284, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (285, N'System Requirements Lab for Intel', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (286, NULL, N'4.5.11.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (287, NULL, NULL, N'Husdawg, LLC', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (288, NULL, NULL, NULL, N'20130108', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (289, N'Skype™ 6.1', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (290, NULL, N'6.1.129', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (291, NULL, NULL, N'Skype Technologies S.A.', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (292, NULL, NULL, NULL, N'20130116', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (293, N'Progr. de instalación de Microsoft SQL Server 2008 R2 (español)', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (294, NULL, N'10.51.2500.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (295, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (296, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (297, N'Java Auto Updater', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (298, NULL, N'2.1.9.0', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (299, NULL, NULL, N'Sun Microsystems, Inc.', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (300, NULL, NULL, NULL, N'20130108', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (301, N'Microsoft Visual Studio 2010 ADO.NET Entity Framework Tools', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (302, NULL, N'10.0.30319', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (303, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
GO
print 'Processed 300 total records'
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (304, NULL, NULL, NULL, N'20130125', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (305, N'Microsoft .NET Framework 4 Extended', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (306, NULL, N'4.0.30319', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (307, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (308, NULL, NULL, NULL, N'20130110', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (309, N'Microsoft Visual Web Developer 2010 Express - ESN', NULL, NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (310, NULL, N'10.0.30319', NULL, NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (311, NULL, NULL, N'Microsoft Corporation', NULL, N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (312, NULL, NULL, NULL, N'20130213', N'c441757e-d804-4517-bb1c-6ec627775f0c')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1015, N'Python Launcher', N'1.0.0.9', N'Vinay Sajip', N'20130116', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1016, N'Google Talk Plugin', N'3.15.2.12038', N'Google', N'20130308', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1017, N'Node.js', N'0.8.17', N'Joyent, Inc. and other Node contributors', N'20130111', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1018, N'Microsoft Application Error Reporting', N'12.0.6012.5000', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1019, N'Microsoft ASP.NET MVC 2', N'2.0.50217.0', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1020, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4974', N'9.0.30729.4974', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1021, N'Microsoft_VC90_MFCLOC_x86', N'1.00.0000', N'Adobe', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1022, N'Microsoft Silverlight 3 SDK - Español', N'3.0.40818.0', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1023, N'Microsoft_VC90_CRT_x86', N'1.00.0000', N'Adobe', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1024, N'Microsoft Games for Windows - LIVE', N'3.3.24.0', N'Microsoft Corporation', N'20110316', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1025, N'Microsoft SQL Server 2008 Database Engine Services', N'10.1.2531.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1026, N'Microsoft SQL Server 2008 Browser', N'10.1.2531.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1027, N'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219', N'10.0.40219', N'Microsoft Corporation', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1028, N'Microsoft Web Platform Installer 4.0', N'4.0.1692', N'Microsoft Corporation', N'20130208', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1029, N'Archivos auxiliares de instalación de Microsoft SQL Server 2008', N'10.1.2731.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1030, N'Citrix online plug-in (USB)', N'11.2.0.31560', N'Citrix Systems, Inc.', N'20130224', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1031, N'Microsoft ASP.NET MVC 2 - VWD Express 2010 Tools', N'2.0.50217.0', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1032, N'Microsoft SQL Server 2008 Common Files', N'10.1.2531.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1033, N'Intel® Hardware Accelerated Execution Manager', N'1.0.1', N'Intel Corporation', N'20130109', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1034, N'Microsoft SQL Server 2008 Database Engine Services', N'10.1.2531.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1035, N'Adobe AIR', N'3.1.0.4880', N'Adobe Systems Incorporated', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1036, N'Microsoft SQL Server Database Publishing Wizard 1.4', N'10.1.2512.8', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1037, N'Visual Studio 2010 Tools for SQL Server Compact 3.5 SP2 ESN', N'4.0.8080.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1038, N'TuneUp Utilities Language Pack (es-MX)', N'13.0.3000.149', N'TuneUp Software', N'20130108', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1039, N'bl', N'1.0.0', N'Your Company Name', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1040, N'Java 7 Update 10', N'7.0.100', N'Oracle', N'20130108', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1041, N'TortoiseSVN 1.7.11.23600 (32 bit)', N'1.7.23600', N'TortoiseSVN', N'20130111', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1042, N'ph', N'1.0.0', N'Your Company Name', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1043, N'Microsoft ASP.NET MVC 2 - VWD Express 2010 Tools - ESN', N'2.0.50414.0', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1044, N'Microsoft .NET Framework 4 Client Profile', N'4.0.30319', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1045, N'Adobe Widget Browser', N'2.0.348', N'Adobe Systems Incorporated.', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1046, N'WMI Tools', N'1.50.1131.0001', N'Microsoft Corporation', N'20130131', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1047, N'Adobe Acrobat X Pro - Italiano, Español, Nederlands, Português', N'10.1.1', N'Adobe Systems', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1048, N'Adobe Reader X (10.1.5) - Español', N'10.1.5', N'Adobe Systems Incorporated', N'20130108', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1049, N'Microsoft SQL Server 2008 Database Engine Shared', N'10.1.2531.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1050, N'Microsoft ASP.NET MVC 2 - ESN', N'2.0.50331.0', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1051, N'PDF Settings CS6', N'11.0', N'Adobe Systems Incorporated', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1052, N'Microsoft SQL Server System CLR Types', N'10.50.1447.4', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1053, N'Microsoft Games for Windows - LIVE Redistributable', N'3.2.3.0', N'Microsoft Corporation', N'20110316', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1054, N'Microsoft .NET Framework 4 Multi-Targeting Pack', N'4.0.30319', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1055, N'TuneUp Utilities 2013', N'13.0.3000.149', N'TuneUp Software', N'20130108', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1056, N'Microsoft_VC80_CRT_x86', N'8.0.50727.4053', N'Adobe', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1057, N'Google Update Helper', N'1.3.21.135', N'Google Inc.', N'20130221', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1058, N'Web Deployment Tool', N'1.1.0618', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1059, N'Microsoft .NET Framework 4 Extended ESN Language Pack', N'4.0.30319', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1060, N'Microsoft SQL Server 2008 RsFx Driver', N'10.1.2531.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1061, N'Microsoft Help Viewer 1.0', N'1.0.30319', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1062, N'Microsoft Web Deploy 2.0', N'2.0.1070', N'Microsoft Corporation', N'20130218', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1063, N'Adobe Help Manager', N'4.0.244', N'Adobe Systems Incorporated', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1064, N'Win7codecs', N'2.7.3', N'Shark007', N'20110316', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1065, N'Microsoft Visual C++ 2010  x86 Runtime - 10.0.30319', N'10.0.30319', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1066, N'Microsoft_VC90_MFC_x86', N'1.00.0000', N'Adobe', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1067, N'Microsoft SQL Server VSS Writer', N'10.1.2531.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1068, N'Microsoft Visual C# 2010 Express - ESN', N'10.0.30319', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1069, N'Microsoft SQL Server 2008 Common Files', N'10.0.1600.22', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1070, N'Sql Server Customer Experience Improvement Program', N'10.1.2531.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1071, N'Microsoft Visual C++ 2005 Redistributable', N'8.0.61001', N'Microsoft Corporation', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1072, N'LibreOffice 3.6', N'3.6.4.3', N'The Document Foundation', N'20130109', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1073, N'Citrix online plug-in (DV)', N'11.2.0.31560', N'Citrix Systems, Inc.', N'20130224', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1074, N'Citrix online plug-in (HDX)', N'11.2.0.31560', N'Citrix Systems, Inc.', N'20130224', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1075, N'Microsoft SQL Server 2008 Native Client', N'10.1.2531.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1076, N'Python 2.7.3', N'2.7.3150', N'Python Software Foundation', N'20130116', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1077, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4148', N'9.0.30729.4148', N'Microsoft Corporation', N'20130121', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1078, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17', N'9.0.30729', N'Microsoft Corporation', N'20110316', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1079, N'Microsoft Silverlight', N'3.0.40818.0', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1080, N'Microsoft .NET Framework 4 Client Profile ESN Language Pack', N'4.0.30319', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1081, N'Objetos de administración de Microsoft SQL Server 2008 R2', N'10.50.1447.4', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1082, N'Microsoft Help Viewer 1.0 Language Pack - ESN', N'1.0.30319', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1083, N'Microsoft SQL Server 2008 Database Engine Shared', N'10.1.2531.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1084, N'Citrix online plug-in (Web)', N'11.2.0.31560', N'Citrix Systems, Inc.', N'20130224', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1085, N'Microsoft SQL Server Compact 3.5 SP2 ESN', N'3.5.8080.0', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1086, N'System Requirements Lab for Intel', N'4.5.11.0', N'Husdawg, LLC', N'20130108', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1087, N'Skype™ 6.1', N'6.1.129', N'Skype Technologies S.A.', N'20130116', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1088, N'Progr. de instalación de Microsoft SQL Server 2008 R2 (español)', N'10.51.2500.0', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1089, N'Java Auto Updater', N'2.1.9.0', N'Sun Microsystems, Inc.', N'20130108', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1090, N'Microsoft Visual Studio 2010 ADO.NET Entity Framework Tools', N'10.0.30319', N'Microsoft Corporation', N'20130125', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1091, N'Microsoft .NET Framework 4 Extended', N'4.0.30319', N'Microsoft Corporation', N'20130110', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1092, N'Microsoft Visual Web Developer 2010 Express - ESN', N'10.0.30319', N'Microsoft Corporation', N'20130213', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1463, N'Facebook Video Calling 1.2.0.287', N'1.2.287', N'Skype Limited', N'20121025', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1464, N'Xmanager Enterprise 3', N'3.0.0151', N'NetSarang Computer, Inc.', N'20100613', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1465, N'Java DB 10.5.3.0', N'10.5.3.0', N'Sun Microsystems, Inc', N'20101002', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1466, N'Facebook Messenger 2.1.4814.0', N'2.1.4814.0', N'Facebook', N'20130309', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1467, N'SAPI', N'1.0.0.0', N'Qualilife', N'20101114', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1468, N'Microsoft Office Project MUI (Spanish) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1469, N'Microsoft Office Project Professional 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120927', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1470, N'Microsoft Office Proofing (Spanish) 2007', N'12.0.4518.1014', N'Microsoft Corporation', N'20100307', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1471, N'Microsoft Office Shared MUI (Spanish) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1472, N'Microsoft Office Proof (Catalan) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1473, N'Microsoft Office Proof (Portuguese (Brazil)) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1474, N'Microsoft Office Proof (Galician) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1475, N'Microsoft Office Proof (English) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1476, N'Microsoft Office Proof (Spanish) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
GO
print 'Processed 400 total records'
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1477, N'Microsoft Office Proof (French) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1478, N'Microsoft Office Proof (Basque) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1479, N'Microsoft Application Error Reporting', N'12.0.6012.5000', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1480, N'Microsoft Office Professional Plus 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120927', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1481, N'Microsoft Office OneNote MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1482, N'Microsoft Office InfoPath MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1483, N'Microsoft Office Visio MUI (Spanish) 2010', N'14.0.4763.1000', N'Microsoft Corporation', N'20121007', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1484, N'Microsoft Office Project MUI (Spanish) 2010', N'14.0.4763.1000', N'Microsoft Corporation', N'20121007', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1485, N'Microsoft Office File Validation Add-In', N'14.0.5130.5003', N'Microsoft Corporation', N'20110916', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1486, N'Microsoft Office Access MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1487, N'Microsoft Office Excel MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1488, N'Microsoft Office Visio 2010', N'14.0.4763.1000', N'Microsoft Corporation', N'20121201', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1489, N'Microsoft Office PowerPoint MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1490, N'Microsoft Office Publisher MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1491, N'Microsoft Office Outlook MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1492, N'Microsoft Office Groove MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1493, N'Microsoft Office Word MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1494, N'Microsoft Office Proofing (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1495, N'Microsoft Office Shared MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1496, N'Microsoft Office Proof (Catalan) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1497, N'Microsoft Office Proof (Portuguese (Brazil)) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1498, N'Microsoft Office Proof (Galician) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1499, N'Microsoft Office Proof (English) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120927', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1500, N'Microsoft Office Proof (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1501, N'Microsoft Office Proof (French) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1502, N'Microsoft Office Proof (Basque) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1503, N'Microsoft Office Project Professional 2010', N'14.0.4763.1000', N'Microsoft Corporation', N'20121201', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1504, N'Microsoft Visual F# 2.0 Runtime', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1505, N'Sql Server Customer Experience Improvement Program', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1506, N'Microsoft ASP.NET MVC 2', N'2.0.50217.0', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1507, N'Dotfuscator Software Services - Community Edition - ESN', N'5.0.2300.0', N'PreEmptive Solutions', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1508, N'Visual Studio Tools for the Office system 3.0 Runtime', N'9.0.21022', N'Microsoft Corporation', N'20120519', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1509, N'Microsoft Visual Studio 2010 Ultimate - ESN', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1510, N'Intel(R) Processor ID Utility', N'4.31.0000', N'Intel(R) Corporation', N'20110329', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1511, N'Microsoft Silverlight 3 SDK - Español', N'3.0.40818.0', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1512, N'Samsung Kies', N'2.1.0.11095_121', N'Samsung Electronics Co., Ltd.', N'20111112', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1513, N'Adobe Setup', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1514, N'Adobe Default Language CS3', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1515, N'Adobe Anchor Service CS3', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1516, N'Loquendo Jorge Speech Pack', N'1.0.0.0', N'Media Semantics, Inc.', N'20101114', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1517, N'Pure Networks Platform', N'11.2.09195.1', N'Pure Networks', N'20110821', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1518, N'SQL Server 2008 R2 Database Engine Services', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1519, N'Microsoft Team Foundation Server 2010 Object Model - ESN', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1520, N'Adobe Setup', N'1.0', N'Adobe Systems Incorporated', N'20100911', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1521, N'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219', N'10.0.40219', N'Microsoft Corporation', N'20120929', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1522, N'Cisco AnyConnect Secure Mobility Client', N'3.0.3054', N'Cisco Systems, Inc.', N'20110910', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1523, N'LiveZilla', N'3.3.2.1', N'LiveZilla GmbH', N'20110313', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1524, N'Microsoft Sync Framework Services v1.0 SP1 (x86) es', N'1.0.3010.0', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1525, N'Microsoft Device Emulator version 3.0 - ENU', N'9.0.21022', N'Microsoft Corporation', N'20120519', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1526, N'Adobe Extension Manager CS3', N'1.8', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1527, N'Archivos auxiliares de instalación de Microsoft SQL Server 2008', N'10.1.2731.0', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1528, N'SQL Server 2008 R2 Database Engine Shared', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1529, N'VMware Workstation', N'7.1.3.14951', N'VMware, Inc.', N'20110329', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1530, N'Adobe Type Support', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1531, N'Microsoft Games for Windows - LIVE Redistributable', N'3.5.88.0', N'Microsoft Corporation', N'20110508', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1532, N'LogMeIn Hamachi', N'2.1.0.294', N'LogMeIn, Inc.', N'20130101', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1533, N'Microsoft SQL Server Compact 3.5 SP2 Query Tools ESN', N'3.5.8080.0', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1534, N'SQL Server 2008 R2 Database Engine Services', N'10.50.1600.1', N'Microsoft Corporation', N'20120109', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1535, N'Microsoft SQL Server Database Publishing Wizard 1.4', N'10.1.2512.8', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1536, N'Microsoft Sync Services for ADO.NET v2.0 SP1 (x86) es', N'2.0.3010.0', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1537, N'Paquete de idioma de Microsoft Visual F# 2.0 Runtime - ESN', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1538, N'Microsoft SQL Server 2008 R2 Setup (English)', N'10.50.1617.0', N'Microsoft Corporation', N'20120109', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1539, N'Visual Studio 2010 Tools for SQL Server Compact 3.5 SP2 ESN', N'4.0.8080.0', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1540, N'Crystal Reports for Visual Studio', N'12.51.0.240', N'SAP', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1541, N'Adobe Device Central CS3', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1542, N'Arena 13.90.00000 ', N'13.90.00000', N'Rockwell Automation, Inc.', N'20111209', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1543, N'Microsoft Visual Studio 2010 Office Developer Tools (x86)', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1544, N'Java 7 Update 17', N'7.0.170', N'Oracle', N'20130312', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1545, N'Java(TM) SE Development Kit 6 Update 21', N'1.6.0.210', N'Oracle', N'20101002', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1546, N'LINGO 11.0', N'11.00.0000', N'Lindo Systems Inc', N'20110113', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1547, N'Microsoft .NET Framework 4 Client Profile', N'4.0.30320', N'Microsoft Corporation', N'20120614', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1548, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022', N'9.0.21022', N'Microsoft Corporation', N'20120107', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1549, N'Microsoft ASP.NET MVC 2 - Visual Studio 2010 Tools', N'2.0.50217.0', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1550, N'Microsoft SQL Server 2008 R2 Transact-SQL Language Service', N'10.50.1447.4', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1551, N'Windows Live Sync', N'14.0.8089.726', N'Microsoft Corporation', N'20100306', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1552, N'Adobe Reader 9.5.4 - Español', N'9.5.4', N'Adobe Systems Incorporated', N'20130223', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1553, N'Microsoft Visual C++ 2008 Redistributable - KB2467174 - x86 9.0.30729.5570', N'9.0.30729.5570', N'Microsoft Corporation', N'20110413', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1554, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161', N'9.0.30729.6161', N'Microsoft Corporation', N'20110616', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1555, N'MSXML 4.0 SP2 (KB973688)', N'4.20.9876.0', N'Microsoft Corporation', N'20111212', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1556, N'Loquendo TTS Carlos 6.6.0', N'6.6.0', N'Loquendo', N'20101114', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1557, N'Microsoft Visual Studio 2010 SharePoint Developer Tools', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1558, N'Loquendo TTS 7 Spanish', N'7.4.0', N'Loquendo', N'20101114', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1559, N'Microsoft ASP.NET MVC 2 - ESN', N'2.0.50331.0', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1560, N'Visio Add-In for WBS Modeler', N'2.0.1003', N'TCSL', N'20121007', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1561, N'SQL Server 2008 R2 Common Files', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1562, N'Skype Click to Call', N'5.10.9560', N'Skype Technologies S.A.', N'20120530', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1563, N'CA AllFusion Process Modeler r7', N'7.001.1255', N'CA, Inc.', N'20101218', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1564, N'Microsoft Security Client', N'4.0.1526.0', N'Microsoft Corporation', N'20120425', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1565, N'Adobe Update Manager CS3', N'5.1.0', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1566, N'tools-winPre2k', N'8.4.5.14951', N'VMware, Inc.', N'20110329', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1567, N'tools-netware', N'8.4.5.14951', N'VMware, Inc.', N'20110329', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1568, N'Sun VirtualBox', N'3.1.4', N'Sun Microsystems, Inc.', N'20100320', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1569, N'SQL Server 2008 R2 Management Studio', N'10.50.1600.1', N'Microsoft Corporation', N'20120109', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1570, N'Loquendo TTS 7 Engine Full Distribution', N'7.5.0', N'Loquendo', N'20101114', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1571, N'Microsoft SQL Server Compact 3.5 for Devices ENU', N'3.5.5386.0', N'Microsoft Corporation', N'20120519', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1572, N'Microsoft SQL Server System CLR Types', N'10.50.1447.4', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1573, N'Microsoft Sync Framework SDK v1.0 SP1 es', N'1.0.3010.0', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1574, N'Adobe PDF Library Files', N'8.0', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1575, N'Microsoft .NET Framework 4 Multi-Targeting Pack', N'4.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1576, N'SQL Server 2008 R2 Common Files', N'10.50.1600.1', N'Microsoft Corporation', N'20120109', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1577, N'Microsoft Visual Studio 2005 Tools for Office Runtime', N'8.0.60940.0', N'Microsoft Corporation', N'20120519', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
GO
print 'Processed 500 total records'
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1578, N'Adobe Bridge Start Meeting', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1579, N'Microsoft Security Client ES-ES Language Pack', N'2.1.1116.0', N'Microsoft Corporation', N'20110806', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1580, N'Crystal Reports Basic for Visual Studio 2008', N'10.5.0.0', N'Business Objects', N'20120519', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1581, N'Web Deployment Tool', N'1.1.0618', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1582, N'Parallels Management Console 4.0', N'4.0.185.0', N'Parallels', N'20100317', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1583, N'Adobe Camera Raw 4.0', N'4.0', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1584, N'Microsoft .NET Framework 4 Extended ESN Language Pack', N'4.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1585, N'Adobe Bridge CS3', N'2', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1586, N'Microsoft .NET Compact Framework 2.0 SP2', N'2.0.7045', N'Microsoft Corporation', N'20120519', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1587, N'tools-linux', N'8.4.5.14951', N'VMware, Inc.', N'20110329', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1588, N'Adobe Version Cue CS3 Client', N'3', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1589, N'Visual Studio CRT DLL Setup', N'1.00.0000', N'Your Company Name', N'20120616', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1590, N'Freeware PDF Unlocker', N'1.0.4', N'SMTguru', N'20120321', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1591, N'Microsoft Help Viewer 1.0', N'1.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1592, N'Cisco Network Magic', N'5.5.09195.0', N'Pure Networks', N'20110821', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1593, N'Live Help Messenger Desktop', N'3.72.1.0', N'Stardevelop Pty Ltd', N'20101002', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1594, N'Adobe Asset Services CS3', N'3', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1595, N'Microsoft Visual Studio 2010 Performance Collection Tools - ESN', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1596, N'Microsoft Sync Framework Runtime v1.0 SP1 (x86) es', N'1.0.3010.0', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1597, N'Microsoft SQL Server 2008 R2 Native Client', N'10.50.1617.0', N'Microsoft Corporation', N'20120109', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1598, N'Microsoft Visual Studio Macro Tools - ESN Language Pack', N'9.0.30729', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1599, N'Microsoft Visual Studio 2010 Tools for Office Runtime (x86)', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1600, N'Microsoft SQL Server 2008 R2 RsFx Driver', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1601, N'Microsoft .NET Compact Framework 3.5', N'3.5.7283', N'Microsoft Corporation', N'20120519', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1602, N'Microsoft Visual C++ 2010  x86 Runtime - 10.0.30319', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1603, N'Microsoft Report Viewer Redistributable 2008 (KB971119)', N'9.0.30731', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1604, N'Adobe Dreamweaver CS3', N'9', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1605, N'tools-solaris', N'8.4.5.14951', N'VMware, Inc.', N'20110329', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1606, N'SQL Server 2008 R2 Database Engine Shared', N'10.50.1600.1', N'Microsoft Corporation', N'20120109', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1607, N'Microsoft Document Explorer 2008', N'9.0.21022', N'Microsoft Corporation', N'20120519', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1608, N'tools-windows', N'8.4.5.14951', N'VMware, Inc.', N'20110329', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1609, N'Microsoft Games for Windows Marketplace', N'3.5.50.0', N'Microsoft Corporation', N'20110508', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1610, N'Microsoft SQL Server Browser', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1611, N'SQL Server 2008 R2 Management Studio', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1612, N'Microsoft Visual Studio 2010 Tools for Office Runtime (x86) Language Pack - ESN', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1613, N'Microsoft ASP.NET MVC 2 - Visual Studio 2010 Tools - ESN', N'2.0.50414.0', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1614, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17', N'9.0.30729', N'Microsoft Corporation', N'20100904', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1615, N'Microsoft SQL Server Database Publishing Wizard 1.2', N'1.2.0.0', N'Microsoft Corporation', N'20120519', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1616, N'Microsoft Visual Studio 2010 Office Developer Tools (x86) Language Pack - ESN', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1617, N'Adobe ExtendScript Toolkit 2', N'2.0.2', N'Adobe Systems Incorporated', N'20100911', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1618, N'Adobe Help Viewer CS3', N'1', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1619, N'Microsoft Silverlight', N'5.1.10411.0', N'Microsoft Corporation', N'20120521', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1620, N'Microsoft .NET Framework 4 Client Profile ESN Language Pack', N'4.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1621, N'Objetos de administración de Microsoft SQL Server 2008 R2', N'10.50.1447.4', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1622, N'Adobe CMaps', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1623, N'tools-freebsd', N'8.4.5.14951', N'VMware, Inc.', N'20110329', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1624, N'MSXML 4.0 SP2 (KB954430)', N'4.20.9870.0', N'Microsoft Corporation', N'20111212', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1625, N'Microsoft Help Viewer 1.0 Language Pack - ESN', N'1.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1626, N'Microsoft SQL Server 2008 R2 Data-Tier Application Project', N'10.50.1447.4', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1627, N'Marco trabajo apl. capa datos de Microsoft SQL Server 2008 R2', N'10.50.1447.4', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1628, N'Microsoft Report Viewer Redistributable 2008 SP1 Language Pack - ESN', N'9.0.30729', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1629, N'Microsoft SQL Server VSS Writer', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1630, N'Microsoft SQL Server Compact 3.5 SP2 ESN', N'3.5.8080.0', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1631, N'Microsoft SQL Server Compact 3.5 Design Tools ENU', N'3.5.5386.0', N'Microsoft Corporation', N'20120519', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1632, N'Microsoft Visual C++ 2008 ATL Update kb973924 - x86 9.0.30729.4148', N'9.0.30729.4148', N'Microsoft Corporation', N'20100906', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1633, N'Microsoft Visual Studio Macro Tools', N'9.0.30729', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1634, N'Skype™ 6.1', N'6.1.129', N'Skype Technologies S.A.', N'20130124', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1635, N'Dotfuscator Software Services - Community Edition', N'5.0.2300.0', N'PreEmptive Solutions', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1636, N'IBM Rational Rose Enterprise Edition', N'2.0.0', N'Rational Software', N'20101003', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1637, N'Directivas de Microsoft SQL Server 2008 R2', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1638, N'Microsoft SQL Server Compact 3.5 ENU', N'3.5.5386.0', N'Microsoft Corporation', N'20120519', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1639, N'Crystal Reports Basic Runtime for Visual Studio 2008', N'10.5.1.0', N'Business Objects', N'20120108', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1640, N'MetaFrame Presentation Server Client', N'9.00.32649', N'Citrix Systems, Inc.', N'20111127', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1641, N'Java Auto Updater', N'2.1.9.0', N'Sun Microsystems, Inc.', N'20130303', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1642, N'Bizagi Process Modeler', N'2.2.0.4', N'Bizagi Limited', N'20120217', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1643, N'Loquendo TTS 7 Soledad Multimedia High Quality', N'7.3.1', N'Loquendo', N'20101114', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1644, N'Virtuozzo Update Service', N'3.5.1.2', N'', N'20100317', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1645, N'Microsoft Visual Studio 2010 ADO.NET Entity Framework Tools', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1646, N'Microsoft .NET Framework 4 Extended', N'4.0.30320', N'Microsoft Corporation', N'20120305', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (1647, N'Microsoft Antimalware Service ES-ES Language Pack', N'3.0.8402.2', N'Microsoft Corporation', N'20110806', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2018, N'Facebook Video Calling 1.2.0.287', N'1.2.287', N'Skype Limited', N'20121025', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2019, N'Xmanager Enterprise 3', N'3.0.0151', N'NetSarang Computer, Inc.', N'20100613', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2020, N'Java DB 10.5.3.0', N'10.5.3.0', N'Sun Microsystems, Inc', N'20101002', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2021, N'Facebook Messenger 2.1.4814.0', N'2.1.4814.0', N'Facebook', N'20130309', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2022, N'SAPI', N'1.0.0.0', N'Qualilife', N'20101114', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2023, N'Microsoft Office Project MUI (Spanish) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2024, N'Microsoft Office Project Professional 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120927', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2025, N'Microsoft Office Proofing (Spanish) 2007', N'12.0.4518.1014', N'Microsoft Corporation', N'20100307', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2026, N'Microsoft Office Shared MUI (Spanish) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2027, N'Microsoft Office Proof (Catalan) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2028, N'Microsoft Office Proof (Portuguese (Brazil)) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2029, N'Microsoft Office Proof (Galician) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2030, N'Microsoft Office Proof (English) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2031, N'Microsoft Office Proof (Spanish) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2032, N'Microsoft Office Proof (French) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2033, N'Microsoft Office Proof (Basque) 2007', N'12.0.6612.1000', N'Microsoft Corporation', N'20120321', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2034, N'Microsoft Application Error Reporting', N'12.0.6012.5000', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2035, N'Microsoft Office Professional Plus 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120927', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2036, N'Microsoft Office OneNote MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2037, N'Microsoft Office InfoPath MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2038, N'Microsoft Office Visio MUI (Spanish) 2010', N'14.0.4763.1000', N'Microsoft Corporation', N'20121007', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2039, N'Microsoft Office Project MUI (Spanish) 2010', N'14.0.4763.1000', N'Microsoft Corporation', N'20121007', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2040, N'Microsoft Office File Validation Add-In', N'14.0.5130.5003', N'Microsoft Corporation', N'20110916', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2041, N'Microsoft Office Access MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2042, N'Microsoft Office Excel MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2043, N'Microsoft Office Visio 2010', N'14.0.4763.1000', N'Microsoft Corporation', N'20121201', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2044, N'Microsoft Office PowerPoint MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2045, N'Microsoft Office Publisher MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2046, N'Microsoft Office Outlook MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2047, N'Microsoft Office Groove MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2048, N'Microsoft Office Word MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
GO
print 'Processed 600 total records'
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2049, N'Microsoft Office Proofing (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2050, N'Microsoft Office Shared MUI (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2051, N'Microsoft Office Proof (Catalan) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2052, N'Microsoft Office Proof (Portuguese (Brazil)) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2053, N'Microsoft Office Proof (Galician) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2054, N'Microsoft Office Proof (English) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120927', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2055, N'Microsoft Office Proof (Spanish) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2056, N'Microsoft Office Proof (French) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2057, N'Microsoft Office Proof (Basque) 2010', N'14.0.6029.1000', N'Microsoft Corporation', N'20120617', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2058, N'Microsoft Office Project Professional 2010', N'14.0.4763.1000', N'Microsoft Corporation', N'20121201', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2059, N'Microsoft Visual F# 2.0 Runtime', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2060, N'Sql Server Customer Experience Improvement Program', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2061, N'Microsoft ASP.NET MVC 2', N'2.0.50217.0', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2062, N'Dotfuscator Software Services - Community Edition - ESN', N'5.0.2300.0', N'PreEmptive Solutions', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2063, N'Visual Studio Tools for the Office system 3.0 Runtime', N'9.0.21022', N'Microsoft Corporation', N'20120519', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2064, N'Microsoft Visual Studio 2010 Ultimate - ESN', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2065, N'Intel(R) Processor ID Utility', N'4.31.0000', N'Intel(R) Corporation', N'20110329', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2066, N'Microsoft Silverlight 3 SDK - Español', N'3.0.40818.0', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2067, N'Samsung Kies', N'2.1.0.11095_121', N'Samsung Electronics Co., Ltd.', N'20111112', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2068, N'Adobe Setup', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2069, N'Adobe Default Language CS3', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2070, N'Adobe Anchor Service CS3', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2071, N'Loquendo Jorge Speech Pack', N'1.0.0.0', N'Media Semantics, Inc.', N'20101114', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2072, N'Pure Networks Platform', N'11.2.09195.1', N'Pure Networks', N'20110821', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2073, N'SQL Server 2008 R2 Database Engine Services', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2074, N'Microsoft Team Foundation Server 2010 Object Model - ESN', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2075, N'Adobe Setup', N'1.0', N'Adobe Systems Incorporated', N'20100911', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2076, N'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219', N'10.0.40219', N'Microsoft Corporation', N'20120929', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2077, N'Cisco AnyConnect Secure Mobility Client', N'3.0.3054', N'Cisco Systems, Inc.', N'20110910', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2078, N'LiveZilla', N'3.3.2.1', N'LiveZilla GmbH', N'20110313', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2079, N'Microsoft Sync Framework Services v1.0 SP1 (x86) es', N'1.0.3010.0', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2080, N'Microsoft Device Emulator version 3.0 - ENU', N'9.0.21022', N'Microsoft Corporation', N'20120519', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2081, N'Adobe Extension Manager CS3', N'1.8', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2082, N'Archivos auxiliares de instalación de Microsoft SQL Server 2008', N'10.1.2731.0', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2083, N'SQL Server 2008 R2 Database Engine Shared', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2084, N'VMware Workstation', N'7.1.3.14951', N'VMware, Inc.', N'20110329', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2085, N'Adobe Type Support', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2086, N'Microsoft Games for Windows - LIVE Redistributable', N'3.5.88.0', N'Microsoft Corporation', N'20110508', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2087, N'LogMeIn Hamachi', N'2.1.0.294', N'LogMeIn, Inc.', N'20130101', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2088, N'Microsoft SQL Server Compact 3.5 SP2 Query Tools ESN', N'3.5.8080.0', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2089, N'SQL Server 2008 R2 Database Engine Services', N'10.50.1600.1', N'Microsoft Corporation', N'20120109', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2090, N'Microsoft SQL Server Database Publishing Wizard 1.4', N'10.1.2512.8', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2091, N'Microsoft Sync Services for ADO.NET v2.0 SP1 (x86) es', N'2.0.3010.0', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2092, N'Paquete de idioma de Microsoft Visual F# 2.0 Runtime - ESN', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2093, N'Microsoft SQL Server 2008 R2 Setup (English)', N'10.50.1617.0', N'Microsoft Corporation', N'20120109', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2094, N'Visual Studio 2010 Tools for SQL Server Compact 3.5 SP2 ESN', N'4.0.8080.0', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2095, N'Crystal Reports for Visual Studio', N'12.51.0.240', N'SAP', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2096, N'Adobe Device Central CS3', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2097, N'Arena 13.90.00000 ', N'13.90.00000', N'Rockwell Automation, Inc.', N'20111209', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2098, N'Microsoft Visual Studio 2010 Office Developer Tools (x86)', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2099, N'Java 7 Update 17', N'7.0.170', N'Oracle', N'20130312', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2100, N'Java(TM) SE Development Kit 6 Update 21', N'1.6.0.210', N'Oracle', N'20101002', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2101, N'LINGO 11.0', N'11.00.0000', N'Lindo Systems Inc', N'20110113', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2102, N'Microsoft .NET Framework 4 Client Profile', N'4.0.30320', N'Microsoft Corporation', N'20120614', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2103, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022', N'9.0.21022', N'Microsoft Corporation', N'20120107', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2104, N'Microsoft ASP.NET MVC 2 - Visual Studio 2010 Tools', N'2.0.50217.0', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2105, N'Microsoft SQL Server 2008 R2 Transact-SQL Language Service', N'10.50.1447.4', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2106, N'Windows Live Sync', N'14.0.8089.726', N'Microsoft Corporation', N'20100306', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2107, N'Adobe Reader 9.5.4 - Español', N'9.5.4', N'Adobe Systems Incorporated', N'20130223', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2108, N'Microsoft Visual C++ 2008 Redistributable - KB2467174 - x86 9.0.30729.5570', N'9.0.30729.5570', N'Microsoft Corporation', N'20110413', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2109, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161', N'9.0.30729.6161', N'Microsoft Corporation', N'20110616', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2110, N'MSXML 4.0 SP2 (KB973688)', N'4.20.9876.0', N'Microsoft Corporation', N'20111212', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2111, N'Loquendo TTS Carlos 6.6.0', N'6.6.0', N'Loquendo', N'20101114', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2112, N'Microsoft Visual Studio 2010 SharePoint Developer Tools', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2113, N'Loquendo TTS 7 Spanish', N'7.4.0', N'Loquendo', N'20101114', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2114, N'Microsoft ASP.NET MVC 2 - ESN', N'2.0.50331.0', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2115, N'Visio Add-In for WBS Modeler', N'2.0.1003', N'TCSL', N'20121007', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2116, N'SQL Server 2008 R2 Common Files', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2117, N'Skype Click to Call', N'5.10.9560', N'Skype Technologies S.A.', N'20120530', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2118, N'CA AllFusion Process Modeler r7', N'7.001.1255', N'CA, Inc.', N'20101218', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2119, N'Microsoft Security Client', N'4.0.1526.0', N'Microsoft Corporation', N'20120425', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2120, N'Adobe Update Manager CS3', N'5.1.0', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2121, N'tools-winPre2k', N'8.4.5.14951', N'VMware, Inc.', N'20110329', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2122, N'tools-netware', N'8.4.5.14951', N'VMware, Inc.', N'20110329', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2123, N'Sun VirtualBox', N'3.1.4', N'Sun Microsystems, Inc.', N'20100320', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2124, N'SQL Server 2008 R2 Management Studio', N'10.50.1600.1', N'Microsoft Corporation', N'20120109', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2125, N'Loquendo TTS 7 Engine Full Distribution', N'7.5.0', N'Loquendo', N'20101114', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2126, N'Microsoft SQL Server Compact 3.5 for Devices ENU', N'3.5.5386.0', N'Microsoft Corporation', N'20120519', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2127, N'Microsoft SQL Server System CLR Types', N'10.50.1447.4', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2128, N'Microsoft Sync Framework SDK v1.0 SP1 es', N'1.0.3010.0', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2129, N'Adobe PDF Library Files', N'8.0', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2130, N'Microsoft .NET Framework 4 Multi-Targeting Pack', N'4.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2131, N'SQL Server 2008 R2 Common Files', N'10.50.1600.1', N'Microsoft Corporation', N'20120109', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2132, N'Microsoft Visual Studio 2005 Tools for Office Runtime', N'8.0.60940.0', N'Microsoft Corporation', N'20120519', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2133, N'Adobe Bridge Start Meeting', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2134, N'Microsoft Security Client ES-ES Language Pack', N'2.1.1116.0', N'Microsoft Corporation', N'20110806', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2135, N'Crystal Reports Basic for Visual Studio 2008', N'10.5.0.0', N'Business Objects', N'20120519', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2136, N'Web Deployment Tool', N'1.1.0618', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2137, N'Parallels Management Console 4.0', N'4.0.185.0', N'Parallels', N'20100317', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2138, N'Adobe Camera Raw 4.0', N'4.0', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2139, N'Microsoft .NET Framework 4 Extended ESN Language Pack', N'4.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2140, N'Adobe Bridge CS3', N'2', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2141, N'Microsoft .NET Compact Framework 2.0 SP2', N'2.0.7045', N'Microsoft Corporation', N'20120519', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2142, N'tools-linux', N'8.4.5.14951', N'VMware, Inc.', N'20110329', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2143, N'Adobe Version Cue CS3 Client', N'3', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2144, N'Visual Studio CRT DLL Setup', N'1.00.0000', N'Your Company Name', N'20120616', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2145, N'Freeware PDF Unlocker', N'1.0.4', N'SMTguru', N'20120321', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2146, N'Microsoft Help Viewer 1.0', N'1.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2147, N'Cisco Network Magic', N'5.5.09195.0', N'Pure Networks', N'20110821', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2148, N'Live Help Messenger Desktop', N'3.72.1.0', N'Stardevelop Pty Ltd', N'20101002', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2149, N'Adobe Asset Services CS3', N'3', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
GO
print 'Processed 700 total records'
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2150, N'Microsoft Visual Studio 2010 Performance Collection Tools - ESN', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2151, N'Microsoft Sync Framework Runtime v1.0 SP1 (x86) es', N'1.0.3010.0', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2152, N'Microsoft SQL Server 2008 R2 Native Client', N'10.50.1617.0', N'Microsoft Corporation', N'20120109', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2153, N'Microsoft Visual Studio Macro Tools - ESN Language Pack', N'9.0.30729', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2154, N'Microsoft Visual Studio 2010 Tools for Office Runtime (x86)', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2155, N'Microsoft SQL Server 2008 R2 RsFx Driver', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2156, N'Microsoft .NET Compact Framework 3.5', N'3.5.7283', N'Microsoft Corporation', N'20120519', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2157, N'Microsoft Visual C++ 2010  x86 Runtime - 10.0.30319', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2158, N'Microsoft Report Viewer Redistributable 2008 (KB971119)', N'9.0.30731', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2159, N'Adobe Dreamweaver CS3', N'9', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2160, N'tools-solaris', N'8.4.5.14951', N'VMware, Inc.', N'20110329', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2161, N'SQL Server 2008 R2 Database Engine Shared', N'10.50.1600.1', N'Microsoft Corporation', N'20120109', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2162, N'Microsoft Document Explorer 2008', N'9.0.21022', N'Microsoft Corporation', N'20120519', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2163, N'tools-windows', N'8.4.5.14951', N'VMware, Inc.', N'20110329', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2164, N'Microsoft Games for Windows Marketplace', N'3.5.50.0', N'Microsoft Corporation', N'20110508', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2165, N'Microsoft SQL Server Browser', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2166, N'SQL Server 2008 R2 Management Studio', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2167, N'Microsoft Visual Studio 2010 Tools for Office Runtime (x86) Language Pack - ESN', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2168, N'Microsoft ASP.NET MVC 2 - Visual Studio 2010 Tools - ESN', N'2.0.50414.0', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2169, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17', N'9.0.30729', N'Microsoft Corporation', N'20100904', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2170, N'Microsoft SQL Server Database Publishing Wizard 1.2', N'1.2.0.0', N'Microsoft Corporation', N'20120519', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2171, N'Microsoft Visual Studio 2010 Office Developer Tools (x86) Language Pack - ESN', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2172, N'Adobe ExtendScript Toolkit 2', N'2.0.2', N'Adobe Systems Incorporated', N'20100911', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2173, N'Adobe Help Viewer CS3', N'1', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2174, N'Microsoft Silverlight', N'5.1.10411.0', N'Microsoft Corporation', N'20120521', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2175, N'Microsoft .NET Framework 4 Client Profile ESN Language Pack', N'4.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2176, N'Objetos de administración de Microsoft SQL Server 2008 R2', N'10.50.1447.4', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2177, N'Adobe CMaps', N'1.0', N'Adobe Systems Incorporated', N'20100711', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2178, N'tools-freebsd', N'8.4.5.14951', N'VMware, Inc.', N'20110329', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2179, N'MSXML 4.0 SP2 (KB954430)', N'4.20.9870.0', N'Microsoft Corporation', N'20111212', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2180, N'Microsoft Help Viewer 1.0 Language Pack - ESN', N'1.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2181, N'Microsoft SQL Server 2008 R2 Data-Tier Application Project', N'10.50.1447.4', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2182, N'Marco trabajo apl. capa datos de Microsoft SQL Server 2008 R2', N'10.50.1447.4', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2183, N'Microsoft Report Viewer Redistributable 2008 SP1 Language Pack - ESN', N'9.0.30729', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2184, N'Microsoft SQL Server VSS Writer', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2185, N'Microsoft SQL Server Compact 3.5 SP2 ESN', N'3.5.8080.0', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2186, N'Microsoft SQL Server Compact 3.5 Design Tools ENU', N'3.5.5386.0', N'Microsoft Corporation', N'20120519', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2187, N'Microsoft Visual C++ 2008 ATL Update kb973924 - x86 9.0.30729.4148', N'9.0.30729.4148', N'Microsoft Corporation', N'20100906', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2188, N'Microsoft Visual Studio Macro Tools', N'9.0.30729', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2189, N'Skype™ 6.1', N'6.1.129', N'Skype Technologies S.A.', N'20130124', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2190, N'Dotfuscator Software Services - Community Edition', N'5.0.2300.0', N'PreEmptive Solutions', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2191, N'IBM Rational Rose Enterprise Edition', N'2.0.0', N'Rational Software', N'20101003', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2192, N'Directivas de Microsoft SQL Server 2008 R2', N'10.50.1600.1', N'Microsoft Corporation', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2193, N'Microsoft SQL Server Compact 3.5 ENU', N'3.5.5386.0', N'Microsoft Corporation', N'20120519', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2194, N'Crystal Reports Basic Runtime for Visual Studio 2008', N'10.5.1.0', N'Business Objects', N'20120108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2195, N'MetaFrame Presentation Server Client', N'9.00.32649', N'Citrix Systems, Inc.', N'20111127', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2196, N'Java Auto Updater', N'2.1.9.0', N'Sun Microsystems, Inc.', N'20130303', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2197, N'Bizagi Process Modeler', N'2.2.0.4', N'Bizagi Limited', N'20120217', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2198, N'Loquendo TTS 7 Soledad Multimedia High Quality', N'7.3.1', N'Loquendo', N'20101114', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2199, N'Virtuozzo Update Service', N'3.5.1.2', N'', N'20100317', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2200, N'Microsoft Visual Studio 2010 ADO.NET Entity Framework Tools', N'10.0.30319', N'Microsoft Corporation', N'20121207', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2201, N'Microsoft .NET Framework 4 Extended', N'4.0.30320', N'Microsoft Corporation', N'20120305', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2202, N'Microsoft Antimalware Service ES-ES Language Pack', N'3.0.8402.2', N'Microsoft Corporation', N'20110806', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2524, N'10174A PowerPoint Presentation', N'1.00.0000', N'Microsoft Learning', N'20130318', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2525, N'Facebook Video Calling 1.2.0.287', N'1.2.287', N'Skype Limited', N'20130316', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2526, N'Microsoft Office 2003 Web Components', N'12.0.6213.1000', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2527, N'Microsoft Application Error Reporting', N'12.0.6012.5000', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2528, N'Microsoft Application Error Reporting', N'12.0.6015.5000', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2529, N'Microsoft DCF MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2530, N'Microsoft Professional Plus 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2531, N'Microsoft Visio Professional 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2532, N'Microsoft OneNote MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2533, N'Microsoft Office 32-bit Components 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2534, N'Microsoft Shared 32-bit MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2535, N'Microsoft OSM MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2536, N'Microsoft OSM UX MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2537, N'Microsoft InfoPath MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2538, N'Microsoft Visio MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2539, N'Microsoft Project MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2540, N'Microsoft Access MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2541, N'Microsoft Shared Setup Metadata MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2542, N'Microsoft Excel MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2543, N'Microsoft Access Setup Metadata MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2544, N'Microsoft PowerPoint MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2545, N'Microsoft Publisher MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2546, N'Microsoft Outlook MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2547, N'Microsoft Groove MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2548, N'Microsoft Word MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2549, N'Microsoft Lync MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2550, N'Microsoft Project Professional 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2551, N'Microsoft Proofing (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2552, N'Microsoft Shared MUI (English) 2013', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2553, N'Microsoft Office Proofing Tools 2013 Preview - English', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2554, N'Microsoft Office Proofing Tools 2013 Preview - Spanish', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2555, N'Microsoft Office Proofing Tools 2013 Preview - French', N'15.0.4128.1014', N'Microsoft Corporation', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2556, N'Microsoft SQL Server System CLR Types', N'10.51.2500.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2557, N'SQL Server 2012 Client Tools', N'11.0.2100.60', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2558, N'SQL Server 2012 Integration Services', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2559, N'Microsoft ASP.NET MVC 2', N'2.0.50217.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2560, N'Microsoft Help Viewer 1.1', N'1.1.40219', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2561, N'Dotfuscator Software Services - Community Edition - ESN', N'5.0.2300.0', N'PreEmptive Solutions', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2562, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.4974', N'9.0.30729.4974', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2563, N'Microsoft SQL Server 2012 Policies ', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2564, N'Microsoft Visual Studio 2010 Tools for Office Runtime (x64)', N'10.0.31010', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2565, N'Microsoft Visual Studio 2010 Ultimate - ESN', N'10.0.40219', N'Microsoft Corporation', N'20130302', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2566, N'SQL Server 2012 Data quality service', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2567, N'SQL Server Browser for SQL Server 2012', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2568, N'Microsoft Silverlight 3 SDK - Español', N'3.0.40818.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2569, N'Microsoft Visual Studio 2010 SharePoint Developer Tools', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2570, N'Microsoft SQL Server Compact 3.5 SP2 x64 ESN', N'3.5.8080.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2571, N'Microsoft SQL Server 2012 Management Objects ', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
GO
print 'Processed 800 total records'
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2572, N'Serv. de lenguaje Transact-SQL de Microsoft SQL Server 2008 R2', N'10.50.1750.9', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2573, N'Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2574, N'SQL Server 2012 BI Development Studio', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2575, N'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2576, N'Microsoft SQL Server 2008 Database Engine Services', N'10.1.2531.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2577, N'SQL Server 2012 Data quality service', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2578, N'Microsoft Sync Services for ADO.NET v2.0 SP1 (x64) es', N'2.0.3010.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2579, N'Microsoft Visual Studio 2010 Tools for Office Runtime (x64) Language Pack - ESN', N'10.0.40303', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2580, N'SQL Server 2012 Management Studio', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2581, N'Microsoft Visual Studio Tools for Applications Design-Time 3.0', N'10.0.40220', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2582, N'Microsoft SQL Server 2012 Transact-SQL Compiler Service ', N'11.0.2218.0', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2583, N'SQL Server 2012 Integration Services', N'11.0.2100.60', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2584, N'Archivos auxiliares de instalación de Microsoft SQL Server 2008', N'10.1.2731.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2585, N'Microsoft Sync Framework SDK v1.0 SP1 es', N'1.0.3010.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2586, N'Microsoft SQL Server 2008 Common Files', N'10.0.1600.22', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2587, N'SQL Server 2012 Management Studio', N'11.0.2100.60', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2588, N'Visual Studio 2010 Prerequisites - English', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2589, N'Microsoft Sync Framework Services v1.0 SP1 (x64) es', N'1.0.3010.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2590, N'Microsoft Visual C++ 2010  x86 Runtime - 10.0.40219', N'10.0.40219', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2591, N'Microsoft SQL Server Database Publishing Wizard 1.4', N'10.1.2512.8', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2592, N'Dotfuscator Software Services - Community Edition', N'5.0.2500.0', N'PreEmptive Solutions', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2593, N'Microsoft SQL Server 2012 RS Add-in for SharePoint ', N'11.0.2218.0', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2594, N'Microsoft Visual Studio 2010 Shell (Integrated) - ENU', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2595, N'Microsoft Visual Studio 2010 Office Developer Tools (x64)', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2596, N'Paquete de idioma de Microsoft Visual F# 2.0 Runtime - ESN', N'10.0.30319', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2597, N'SQL Server 2012 Data quality client', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2598, N'Microsoft System CLR Types for SQL Server 2012', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2599, N'Visual Studio 2010 Tools for SQL Server Compact 3.5 SP2 ESN', N'4.0.8080.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2600, N'Crystal Reports for Visual Studio', N'12.51.0.240', N'SAP', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2601, N'Microsoft Visual Studio 2010 Tools for Office Runtime (x64)', N'10.0.40308', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2602, N'SQL Server 2012 Analysis Services', N'11.0.2100.60', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2603, N'Microsoft Visual Studio 2010 Shell (Isolated) - ENU', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2604, N'Microsoft Visual Studio 2010 Performance Collection Tools SP1 - ESN', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2605, N'Java(TM) 6 Update 20', N'6.0.200', N'Sun Microsystems, Inc.', N'20130313', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2606, N'Java 7 Update 17', N'7.0.170', N'Oracle', N'20130313', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2607, N'Microsoft SQL Server 2008 R2 Management Objects', N'10.51.2500.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2608, N'Microsoft Visual C++ 2010  x64 Designtime - 10.0.30319', N'10.0.30319', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2609, N'Microsoft SQL Server 2012 Data-Tier App Framework ', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2610, N'Microsoft System CLR Types for SQL Server 2012 (x64)', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2611, N'SQL Server 2012 Documentation Components', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2612, N'Microsoft Visual Studio Tools for Applications x86 Runtime 3.0', N'10.0.40220', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2613, N'Microsoft SQL Server 2008 Common Files', N'10.1.2531.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2614, N'SQL Server 2012 Distributed Replay', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2615, N'Microsoft ASP.NET MVC 2 - Visual Studio 2010 Tools', N'2.0.50217.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2616, N'Microsoft SQL Server 2008 Database Engine Shared', N'10.1.2531.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2617, N'Adobe Reader XI (11.0.02) - Español', N'11.0.02', N'Adobe Systems Incorporated', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2618, N'SQL Server 2012 Distributed Replay', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2619, N'SQL Server 2012 Client Tools', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2620, N'SQL Server 2012 Distributed Replay', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2621, N'Microsoft SQL Server System CLR Types (x64)', N'10.50.1750.9', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2622, N'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161', N'9.0.30729.6161', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2623, N'Microsoft Visual Studio 2010 IntelliTrace Collection (x64)', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2624, N'Microsoft ASP.NET MVC 2 - ESN', N'2.0.50331.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2625, N'Microsoft Silverlight 4 SDK - Español', N'4.0.50826.0', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2626, N'SQL Server 2012 Data quality client', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2627, N'Microsoft SQL Server 2012 RsFx Driver', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2628, N'SQL Server 2012 Distributed Replay', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2629, N'SQL Server 2012 Documentation Components', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2630, N'Microsoft .NET Framework 4 Multi-Targeting Pack', N'4.0.30319', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2631, N'Microsoft SQL Server 2012 Transact-SQL ScriptDom ', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2632, N'Microsoft SQL Server 2008 Database Engine Services', N'10.1.2531.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2633, N'Microsoft Visual Studio 2010 Service Pack 1', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2634, N'Prerequisites for SSDT ', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2635, N'Google Update Helper', N'1.3.21.135', N'Google Inc.', N'20130227', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2636, N'Web Deployment Tool', N'1.1.0618', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2637, N'SQL Server 2012 Common Files', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2638, N'SQL Server 2012 Reporting Services', N'11.0.2100.60', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2639, N'Microsoft Visual Studio Tools for Applications x64 Runtime 3.0', N'10.0.40220', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2640, N'Microsoft Visual Studio 2010 Tools for Office Runtime (x64) Language Pack - ESN', N'10.0.31007', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2641, N'WCF RIA Services V1.0 SP1', N'4.1.60114.0', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2642, N'Microsoft Visual C++  Compilers 2010 Standard - enu - x86', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2643, N'SQL Server 2012 Reporting Services', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2644, N'SQL Server 2012 Database Engine Services', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2645, N'SQL Server 2012 RS_SharePoint_SharedService', N'11.0.2100.60', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2646, N'Marco trabajo apl. capa datos de Microsoft SQL Server 2008 R2', N'10.50.1750.9', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2647, N'SQL Server 2012 Full text search', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2648, N'Microsoft SQL Server 2012 T-SQL Language Service ', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2649, N'Microsoft SQL Server 2008 Database Engine Shared', N'10.1.2531.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2650, N'Microsoft Visual Studio Macro Tools - ESN Language Pack', N'9.0.30729', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2651, N'Microsoft SQL Server 2008 RsFx Driver', N'10.1.2531.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2652, N'Proyecto aplic. capa de datos de Microsoft SQL Server 2008 R2', N'10.50.1750.9', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2653, N'Microsoft SQL Server 2008 Native Client', N'10.1.2531.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2654, N'SQL Server 2012 Database Engine Shared', N'11.0.2100.60', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2655, N'Microsoft Visual C++  Compilers 2010 Standard - enu - x64', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2656, N'SQL Server 2012 Documentation Components', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2657, N'Microsoft SQL Server 2012 Native Client ', N'11.0.2218.0', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2658, N'SQL Server 2012 Database Engine Services', N'11.0.2100.60', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2659, N'Microsoft Visual F# 2.0 Runtime', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2660, N'Microsoft Visual Studio Tools for Applications 2.0 - ENU', N'9.0.35191', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2661, N'Microsoft ASP.NET MVC 2 - Visual Studio 2010 Tools - ESN', N'2.0.50414.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2662, N'Sql Server Customer Experience Improvement Program', N'11.0.2100.60', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2663, N'Sql Server Customer Experience Improvement Program', N'10.1.2531.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2664, N'Microsoft Team Foundation Server 2010 Object Model - ESN', N'10.0.40219', N'Microsoft Corporation', N'20130302', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2665, N'Microsoft Silverlight', N'4.1.10329.0', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2666, N'win8codecs', N'1.4.8', N'Shark007', N'20130302', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2667, N'SQL Server 2012 Analysis Services', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2668, N'SQL Server 2012 BI Development Studio', N'11.0.2100.60', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2669, N'Microsoft SQL Server 2012 Management Objects  (x64)', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2670, N'Microsoft SQL Server Compact 3.5 SP2 ESN', N'3.5.8080.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2671, N'Objetos de administración de Microsoft SQL Server 2008 R2 (x64)', N'10.50.1750.9', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2672, N'Microsoft Sync Framework Runtime v1.0 SP1 (x64) es', N'1.0.3010.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
GO
print 'Processed 900 total records'
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2673, N'Microsoft Report Viewer 2012 Runtime', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2674, N'SQL Server 2012 Database Engine Shared', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2675, N'SQL Server 2012 Common Files', N'11.0.2100.60', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2676, N'Microsoft SQL Server 2012 Setup (English)', N'11.1.3128.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2677, N'Microsoft VSS Writer for SQL Server 2012', N'11.0.2100.60', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2678, N'Java Auto Updater', N'2.1.9.0', N'Sun Microsystems, Inc.', N'20130313', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2679, N'Microsoft SQL Server Data Tools – Database Projects – Web installer entry point', N'10.3.20116.0', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2680, N'Microsoft Visual C++ 2010  x64 Runtime - 10.0.40219', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2681, N'Microsoft Visual Studio 2008 Shell (integrated mode) - ENU', N'9.0.30729', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2682, N'Microsoft Visual Studio 2010 Office Developer Tools (x64) Language Pack - ESN', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2683, N'SQL Server 2012 SQL Data Quality Common', N'11.0.2100.60', N'Microsoft Corporation', N'20130228', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[apps] ([id], [Name], [Version], [Publisher], [InstallDate], [pcid]) VALUES (2684, N'Microsoft Visual Studio 2010 ADO.NET Entity Framework Tools', N'10.0.40219', N'Microsoft Corporation', N'20130301', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
SET IDENTITY_INSERT [dbo].[apps] OFF
/****** Object:  StoredProcedure [dbo].[up_AplicacionAutorizante_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_AplicacionAutorizante_Insertar]
(
	@IdAplicacionAutorizante int = NULL OUTPUT,
	@IdAplicacion int,
	@IdAutorizante int,
	@FechaCreacion datetime,
	@UsuarioCreacion char(10),
	@EstadoActivo bit,
	@RutaEvidencia varchar(200),
	@Comentario varchar(200)
)
AS
	SET NOCOUNT ON

		
INSERT INTO AplicacionAutorizante
	(
		IdAplicacion,
		IdAutorizante,
		FechaCreacion,
		UsuarioCreacion,
		EstadoActivo,
		RutaEvidencia,
		Comentario
	)
	VALUES
	(
		@IdAplicacion,
		@IdAutorizante,
		GETDATE(),
		@UsuarioCreacion,
		@EstadoActivo,
		@RutaEvidencia,
		@Comentario
	)
	SELECT @IdAplicacionAutorizante = SCOPE_IDENTITY();

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_AplicacionAutorizante_Eliminar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_AplicacionAutorizante_Eliminar]
(
	@IdAplicacionAutorizante int
)
AS
	SET NOCOUNT ON

	DELETE 
	FROM   AplicacionAutorizante
	WHERE  
		IdAplicacionAutorizante = @IdAplicacionAutorizante

	RETURN @@Error
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puesto](
	[IdPuesto] [int] IDENTITY(1,1) NOT NULL,
	[NombrePuesto] [varchar](150) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [char](10) NOT NULL,
	[IdResponsable] [int] NOT NULL,
	[Fl_Critico] [varchar](10) NULL,
	[Estado] [bit] NOT NULL,
	[IdAplicacion] [int] NOT NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[IdPuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Puesto] ON
INSERT [dbo].[Puesto] ([IdPuesto], [NombrePuesto], [FechaCreacion], [UsuarioCreacion], [IdResponsable], [Fl_Critico], [Estado], [IdAplicacion]) VALUES (2, N'ASESOR', CAST(0x0000A14B010C39BD AS DateTime), N'PDOMINGU  ', 1, NULL, 1, 3)
INSERT [dbo].[Puesto] ([IdPuesto], [NombrePuesto], [FechaCreacion], [UsuarioCreacion], [IdResponsable], [Fl_Critico], [Estado], [IdAplicacion]) VALUES (3, N'VENDEDOR', CAST(0x0000A14B010C39BD AS DateTime), N'PDOMINGU  ', 1, NULL, 1, 2)
INSERT [dbo].[Puesto] ([IdPuesto], [NombrePuesto], [FechaCreacion], [UsuarioCreacion], [IdResponsable], [Fl_Critico], [Estado], [IdAplicacion]) VALUES (4, N'CAJERO', CAST(0x0000A14B010C39BD AS DateTime), N'PDOMINGU  ', 1, NULL, 1, 3)
INSERT [dbo].[Puesto] ([IdPuesto], [NombrePuesto], [FechaCreacion], [UsuarioCreacion], [IdResponsable], [Fl_Critico], [Estado], [IdAplicacion]) VALUES (5, N'TECNICO SOPORTE', CAST(0x0000A14B010C39BD AS DateTime), N'PDOMINGU  ', 1, NULL, 1, 2)
INSERT [dbo].[Puesto] ([IdPuesto], [NombrePuesto], [FechaCreacion], [UsuarioCreacion], [IdResponsable], [Fl_Critico], [Estado], [IdAplicacion]) VALUES (6, N'TECNICO LOGISTICA', CAST(0x0000A14B010C39BD AS DateTime), N'PDOMINGU  ', 1, NULL, 1, 3)
INSERT [dbo].[Puesto] ([IdPuesto], [NombrePuesto], [FechaCreacion], [UsuarioCreacion], [IdResponsable], [Fl_Critico], [Estado], [IdAplicacion]) VALUES (7, N'RECEPCIONISTA', CAST(0x0000A14B010C39BD AS DateTime), N'PDOMINGU  ', 1, NULL, 1, 2)
INSERT [dbo].[Puesto] ([IdPuesto], [NombrePuesto], [FechaCreacion], [UsuarioCreacion], [IdResponsable], [Fl_Critico], [Estado], [IdAplicacion]) VALUES (8, N'SUPERVISOR', CAST(0x0000A14B010C39BD AS DateTime), N'PDOMINGU  ', 1, NULL, 1, 3)
SET IDENTITY_INSERT [dbo].[Puesto] OFF
/****** Object:  Table [dbo].[procesos]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[procesos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[pid] [varchar](10) NULL,
	[pcid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_procesos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[procesos] ON
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1117, N'svchost', N'976', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1118, N'chrome', N'7820', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1119, N'TuneUpUtilitiesService32', N'972', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1120, N'chrome', N'2468', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1121, N'adb', N'5696', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1122, N'chrome', N'6284', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1123, N'svchost', N'1556', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1124, N'notepad++', N'2844', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1125, N'svchost', N'3128', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1126, N'TSVNCache', N'960', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1127, N'AdobeARM', N'3520', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1128, N'lsm', N'564', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1129, N'chrome', N'5160', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1130, N'svchost', N'3316', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1131, N'igfxpers', N'3512', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1132, N'lsass', N'556', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1133, N'svchost', N'948', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1134, N'hkcmd', N'3504', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1135, N'taskhost', N'4684', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1136, N'services', N'544', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1137, N'AvastSvc', N'1328', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1138, N'Skype', N'6052', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1139, N'MsDepSvc', N'1716', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1140, N'igfxtray', N'3488', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1141, N'spoolsv', N'1516', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1142, N'audiodg', N'7580', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1143, N'chrome', N'3484', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1144, N'chrome', N'5256', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1145, N'WUDFHost', N'2496', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1146, N'smss', N'328', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1147, N'svchost', N'720', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1148, N'csrss', N'504', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1149, N'GoogleCrashHandler', N'3276', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1150, N'TuneUpUtilitiesApp32', N'2880', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1151, N'chrome', N'1500', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1152, N'Cliente.vshost', N'5636', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1153, N'svchost', N'2876', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1154, N'chrome', N'4888', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1155, N'chrome', N'4644', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1156, N'svchost', N'488', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1157, N'conhost', N'2868', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1158, N'WebDev.WebServer40', N'5228', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1159, N'googletalkplugin', N'4044', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1160, N'chrome', N'4172', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1161, N'svchost', N'4236', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1162, N'wininit', N'492', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1163, N'svchost', N'1080', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1164, N'taskhost', N'2852', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1165, N'winlogon', N'684', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1166, N'msiexec', N'6768', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1167, N'ssh-agent', N'5996', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1168, N'svchost', N'872', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1169, N'sqlwriter', N'444', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1170, N'chrome', N'5200', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1171, N'concentr', N'3620', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1172, N'sqlservr', N'2040', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1173, N'sppsvc', N'3020', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1174, N'svchost', N'1640', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1175, N'chrome', N'5216', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1176, N'chrome', N'4788', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1177, N'wfcrun32', N'3944', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1178, N'explorer', N'3404', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1179, N'AvastUI', N'3596', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1180, N'csrss', N'440', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1181, N'chrome', N'6724', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1182, N'TSVNCache', N'3584', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1183, N'svchost', N'1020', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1184, N'sqlservr', N'5156', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1185, N'dwm', N'3380', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1186, N'acrotray', N'3576', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1187, N'svchost', N'816', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1188, N'eclipse', N'5740', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1189, N'svchost', N'1208', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1190, N'VWDExpress', N'2780', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1191, N'WMICodeCreator', N'7504', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1192, N'chrome', N'208', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1193, N'wmpnetwk', N'3256', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1194, N'TUAutoUpdateCheck', N'6116', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1195, N'chrome', N'4932', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1196, N'System', N'4', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1197, N'chrome', N'5520', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1198, N'VCSExpress', N'1148', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1199, N'Idle', N'0', N'8c57b4ac-c84e-4f78-8ffc-c2ee5574372e')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1410, N'Ssms', N'8020', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1411, N'chrome', N'7484', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1412, N'wmpnetwk', N'6104', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1413, N'sqlwriter', N'3344', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1414, N'sqlservr', N'6692', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1415, N'LogWatNT', N'1372', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1416, N'nmctxth', N'3144', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1417, N'eEBSvc', N'1960', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1418, N'tv_w32', N'6096', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1419, N'spoolsv', N'1760', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1420, N'TAForOELoader', N'3136', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1421, N'pg_ctl', N'1360', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1422, N'chrome', N'5516', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1423, N'SearchIndexer', N'5324', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1424, N'wuauclt', N'7944', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1425, N'svchost', N'956', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1426, N'vmware-authd', N'3712', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
GO
print 'Processed 100 total records'
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1427, N'sqlbrowser', N'3316', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1428, N'w3wp', N'3512', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1429, N'IPSecMon', N'1344', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1430, N'spiceworks', N'2720', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1431, N'services', N'552', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1432, N'tomcat6', N'1928', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1433, N'postgres', N'2440', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1434, N'vpnagent', N'1532', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1435, N'jusched', N'1136', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1436, N'postgres', N'2316', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1437, N'chrome', N'5664', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1438, N'svchost', N'7584', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1439, N'spiceworks-httpd', N'2504', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1440, N'svchost', N'3684', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1441, N'postgres', N'1712', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1442, N'igfxsrvc', N'3088', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1443, N'msiexec', N'4836', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1444, N'msseces', N'2492', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1445, N'svchost', N'716', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1446, N'InetMgr', N'7528', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1447, N'chrome', N'2880', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1448, N'SafeCfg', N'2988', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1449, N'svchost', N'512', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1450, N'Dropbox', N'2784', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1451, N'csrss', N'508', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1452, N'chrome', N'7400', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1453, N'Cliente', N'6020', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1454, N'taskhost', N'2276', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1455, N'chrome', N'7988', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1456, N'SearchProtocolHost', N'6976', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1457, N'TeamViewer', N'3156', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1458, N'postgres', N'300', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1459, N'wininit', N'496', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1460, N'dwm', N'2268', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1461, N'vzupsvc', N'3644', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1462, N'KiesPDLR', N'2576', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1463, N'smss', N'292', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1464, N'vmnetdhcp', N'3832', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1465, N'sp_rsser', N'3240', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1466, N'FsUsbExService', N'1268', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1467, N'spiceworks-httpd', N'3228', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1468, N'mDNSResponder', N'672', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1469, N'MsMpEng', N'864', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1470, N'hamachi-2', N'1452', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1471, N'WmiPrvSE', N'2932', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1472, N'postgres', N'2432', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1473, N'svchost', N'1840', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1474, N'vmnat', N'3612', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1475, N'igfxpers', N'3020', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1476, N'svchost', N'5656', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1477, N'TeamViewer_Service', N'3412', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1478, N'hamachi-2-ui', N'1244', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1479, N'chrome', N'3948', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1480, N'postgres', N'2424', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1481, N'nmsrvc', N'3876', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1482, N'Skype', N'2816', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1483, N'SearchFilterHost', N'6952', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1484, N'hkcmd', N'3008', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1485, N'postgres', N'2416', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1486, N'csrss', N'440', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1487, N'igfxtray', N'3000', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1488, N'postgres', N'3196', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1489, N'svchost', N'1028', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1490, N'conhost', N'436', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1491, N'svchost', N'3388', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1492, N'conhost', N'2204', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1493, N'lsm', N'604', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1494, N'lic98Service', N'2592', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1495, N'conhost', N'2000', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1496, N'svchost', N'1604', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1497, N'svchost', N'1800', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1498, N'vmware-usbarbitrator', N'3572', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1499, N'explorer', N'2388', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1500, N'sqlservr', N'2584', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1501, N'WmiPrvSE', N'6128', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1502, N'chrome', N'5940', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1503, N'MSOSYNC', N'2776', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1504, N'chrome', N'2532', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1505, N'KiesTrayAgent', N'3168', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1506, N'svchost', N'1000', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1507, N'winlogon', N'584', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1508, N'svchost', N'800', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1509, N'svchost', N'1192', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1510, N'nmapp', N'3160', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1511, N'lsass', N'596', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1512, N'SYSTEM', N'4', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1513, N'Idle', N'0', N'11cb3967-3f9d-4c80-b53a-015e661cc704')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1723, N'dwm', N'2952', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1724, N'TeamViewer_Service', N'3148', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1725, N'SearchIndexer', N'5708', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1726, N'tv_w32', N'5904', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1727, N'conhost', N'5532', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1728, N'spiceworks-httpd', N'3336', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1729, N'lsm', N'576', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1730, N'Dropbox', N'4568', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1731, N'chrome', N'6476', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1732, N'chrome', N'4316', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1733, N'mDNSResponder', N'572', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1734, N'devenv', N'7072', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1735, N'conhost', N'1948', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1736, N'lsass', N'568', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
GO
print 'Processed 200 total records'
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1737, N'pg_ctl', N'1552', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1738, N'svchost', N'960', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1739, N'svchost', N'6672', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1740, N'KiesPDLR', N'3912', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1741, N'LogWatNT', N'1544', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1742, N'chrome', N'6468', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1743, N'Cliente', N'5696', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1744, N'vzupsvc', N'3708', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1745, N'vmware-usbarbitrator', N'3312', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1746, N'chrome', N'7984', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1747, N'services', N'552', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1748, N'IPSecMon', N'1336', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1749, N'svchost', N'3108', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1750, N'svchost', N'544', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1751, N'sp_rsser', N'2708', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1752, N'chrome', N'7036', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1753, N'wuauclt', N'6924', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1754, N'chrome', N'3684', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1755, N'svchost', N'728', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1756, N'nmsrvc', N'4864', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1757, N'igfxpers', N'3480', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1758, N'hamachi-2-ui', N'3828', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1759, N'svchost', N'1416', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1760, N'w3wp', N'6432', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1761, N'postgres', N'1900', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1762, N'hkcmd', N'3472', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1763, N'postgres', N'4456', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1764, N'vpnagent', N'1500', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1765, N'SafeCfg', N'4560', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1766, N'taskhost', N'2876', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1767, N'tomcat6', N'1364', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1768, N'csrss', N'508', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1769, N'InetMgr', N'7204', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1770, N'SearchFilterHost', N'3736', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1771, N'FsUsbExService', N'1292', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1772, N'igfxtray', N'3456', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1773, N'chrome', N'3652', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1774, N'jusched', N'3848', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1775, N'vmnetdhcp', N'4832', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1776, N'IntelliTrace', N'2664', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1777, N'wininit', N'496', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1778, N'lic98Service', N'2268', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1779, N'igfxsrvc', N'3644', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1780, N'chrome', N'3248', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1781, N'smss', N'292', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1782, N'TeamViewer', N'4428', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1783, N'WebDev.WebServer40', N'1272', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1784, N'sqlwriter', N'3044', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1785, N'sqlservr', N'2252', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1786, N'SearchProtocolHost', N'4156', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1787, N'svchost', N'1856', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1788, N'chrome', N'6192', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1789, N'wmpnetwk', N'2368', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1790, N'postgres', N'2176', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1791, N'vmware-authd', N'4016', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1792, N'winlogon', N'664', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1793, N'MsMpEng', N'860', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1794, N'svchost', N'1056', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1795, N'postgres', N'2168', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1796, N'msseces', N'3808', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1797, N'explorer', N'3016', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1798, N'Ssms', N'6852', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1799, N'chrome', N'4192', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1800, N'svchost', N'1196', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1801, N'svchost', N'1576', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1802, N'csrss', N'444', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1803, N'spoolsv', N'1820', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1804, N'postgres', N'4180', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1805, N'vmnat', N'3560', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1806, N'spiceworks-httpd', N'3588', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1807, N'hamachi-2', N'1420', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1808, N'sqlbrowser', N'2992', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1809, N'spiceworks', N'2396', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1810, N'postgres', N'2128', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1811, N'audiodg', N'4756', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1812, N'postgres', N'2192', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1813, N'svchost', N'3964', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1814, N'svchost', N'1008', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1815, N'nmctxth', N'3568', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1816, N'Skype', N'4552', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1817, N'chrome', N'5536', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1818, N'MSOSYNC', N'4220', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1819, N'postgres', N'2184', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1820, N'svchost', N'804', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1821, N'conhost', N'1788', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1822, N'eEBSvc', N'1984', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1823, N'KiesTrayAgent', N'3752', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1824, N'WmiPrvSE', N'376', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1825, N'TAForOELoader', N'3552', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1826, N'svchost', N'6112', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1827, N'SYSTEM', N'4', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1828, N'nmapp', N'3744', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (1829, N'Idle', N'0', N'0f44851a-c1d5-4a7e-8466-8289a5a4fde0')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2011, N'PWRISOVM', N'4332', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2012, N'TrustedInstaller', N'6104', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2013, N'fdlauncher', N'3540', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2014, N'svchost', N'488', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2015, N'WmiPrvSE', N'9836', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2016, N'PresentationFontCache', N'8964', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2017, N'SMSvcHost', N'1756', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2018, N'csrss', N'568', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
GO
print 'Processed 300 total records'
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2019, N'hkcmd', N'4900', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2020, N'WebDev.WebServer40', N'10100', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2021, N'chrome', N'9428', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2022, N'Cliente', N'6812', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2023, N'svchost', N'560', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2024, N'svchost', N'1544', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2025, N'svchost', N'952', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2026, N'devenv', N'3708', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2027, N'lsass', N'752', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2028, N'iexplore', N'2640', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2029, N'lync', N'8628', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2030, N'chrome', N'7640', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2031, N'services', N'744', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2032, N'svchost', N'1332', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2033, N'svchost', N'968', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2034, N'chrome', N'7232', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2035, N'msiexec', N'4276', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2036, N'ReportingServicesService', N'2108', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2037, N'OUTLOOK', N'8668', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2038, N'svchost', N'920', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2039, N'sqlservr', N'1904', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2040, N'taskhostex', N'2436', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2041, N'devenv', N'7220', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2042, N'SearchFilterHost', N'8400', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2043, N'dwm', N'1012', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2044, N'chrome', N'6752', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2045, N'spoolsv', N'1304', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2046, N'MsMpEng', N'2676', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2047, N'svchost', N'4448', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2048, N'winlogon', N'700', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2049, N'sppsvc', N'3456', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2050, N'svchost', N'860', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2051, N'explorer', N'2468', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2052, N'conhost', N'3844', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2053, N'taskhost', N'8176', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2054, N'chrome', N'7972', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2055, N'svchost', N'2656', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2056, N'iexplore', N'4488', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2057, N'igfxtray', N'4820', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2058, N'chrome', N'6744', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2059, N'vmms', N'3040', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2060, N'TiWorker', N'9736', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2061, N'Ssms', N'4216', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2062, N'SearchProtocolHost', N'6776', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2063, N'wuauclt', N'7560', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2064, N'svchost', N'4012', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2065, N'msmdsrv', N'1448', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2066, N'sqlwriter', N'2628', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2067, N'csrss', N'656', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2068, N'WINWORD', N'4800', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2069, N'chrome', N'4000', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2070, N'smss', N'448', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2071, N'UcMapi', N'5372', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2072, N'iexplore', N'7144', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2073, N'SearchIndexer', N'4380', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2074, N'wininit', N'636', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2075, N'fdhost', N'2752', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2076, N'RuntimeBroker', N'3592', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2077, N'vds', N'4568', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2078, N'EXCEL', N'7916', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2079, N'WmiPrvSE', N'3580', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2080, N'wmpnetwk', N'820', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2081, N'svchost', N'7320', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2082, N'SMSvcHost', N'2788', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2083, N'chrome', N'5740', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2084, N'iexplore', N'10072', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2085, N'dasHost', N'1600', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2086, N'svchost', N'1152', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2087, N'LiveComm', N'1204', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2088, N'igfxpers', N'4944', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2089, N'MsDtsSrvr', N'1784', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2090, N'sqlservr', N'1980', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2091, N'IntelliTrace', N'6312', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2092, N'jusched', N'4340', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2093, N'conhost', N'7688', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2094, N'System', N'4', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2095, N'ONENOTEM', N'5912', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
INSERT [dbo].[procesos] ([id], [Name], [pid], [pcid]) VALUES (2096, N'Idle', N'0', N'd08bd16e-e771-4c15-a538-1bae84d291f9')
SET IDENTITY_INSERT [dbo].[procesos] OFF
/****** Object:  StoredProcedure [dbo].[up_AplicacionAutorizante_Actualizar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_AplicacionAutorizante_Actualizar]
(
	@IdAplicacionAutorizante int,
	@IdAplicacion int,
	@IdAutorizante int,
	@FechaCreacion datetime,
	@UsuarioCreacion char(10),
	@EstadoActivo bit,
	@RutaEvidencia varchar(200),
	@Comentario varchar(200)
)
AS
	SET NOCOUNT ON
	
	UPDATE AplicacionAutorizante
	SET
		IdAplicacion = @IdAplicacion,
		IdAutorizante = @IdAutorizante,
		EstadoActivo = @EstadoActivo,
		RutaEvidencia=@RutaEvidencia,
		Comentario=@Comentario
	WHERE 
		IdAplicacionAutorizante = @IdAplicacionAutorizante

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Aplicacion_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Aplicacion_Obtener]
(
	@IdAplicacion int
)
AS
	SET NOCOUNT ON

	SELECT IdAplicacion,		
		NombreAplicacion,
		UsuarioCreacion,
		FechaCreacion,
		Estado
	FROM   Aplicacion
	WHERE  
		IdAplicacion = @IdAplicacion
GO
/****** Object:  StoredProcedure [dbo].[up_Aplicacion_Listar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Aplicacion_Listar]

AS
	SET NOCOUNT ON

	SELECT IdAplicacion,		
		NombreAplicacion,
		UsuarioCreacion,
		FechaCreacion,
		Estado
	FROM   Aplicacion
GO
/****** Object:  StoredProcedure [dbo].[up_Agencia_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Agencia_Obtener]
@IdAgencia int
AS
SELECT     Ag.IdAgencia, 
Ag.NombreAgencia, 
Ag.IdRepresentante, 
Pe.Nombres, 
Pe.ApePaterno, 
Pe.ApeMaterno, 
Pe.DocumentoIdentidad, 
Pe.Correo, 
Ag.RUC, 
Ag.Nemotecnico_ag, 
Ag.Estado
FROM         dbo.Agencia AS Ag INNER JOIN
 dbo.Persona AS Pe ON Ag.IdRepresentante = Pe.IdPersona
WHERE     (Ag.IdAgencia = @IdAgencia)
GO
/****** Object:  StoredProcedure [dbo].[up_Agencia_Listar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Agencia_Listar]
AS

SELECT IdAgencia, 
	NombreAgencia,
	IdRepresentante,
	RUC,
	Nemotecnico_ag,
	Estado
FROM Agencia
GO
/****** Object:  StoredProcedure [dbo].[up_Agencia_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Agencia_Insertar]
(
	@IdAgencia int = NULL OUTPUT,
	@NombreAgencia varchar(50),
	@IdRepresentante int,
	@RUC char(11) = NULL,
	@Nemotecnico_ag varchar(50) = NULL
)
AS
	SET NOCOUNT ON

	INSERT INTO Agencia
	(
		NombreAgencia,
		IdRepresentante,
		RUC,
		Nemotecnico_ag,
		Estado
	)
	VALUES
	(
		@NombreAgencia,
		@IdRepresentante,
		@RUC,
		@Nemotecnico_ag,
		1
	)

	SELECT @IdAgencia = SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[up_Agencia_Eliminar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Agencia_Eliminar]
(
	@IdAgencia int
)
AS
	SET NOCOUNT ON

	DELETE 
	FROM   Agencia
	WHERE  
		IdAgencia = @IdAgencia
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[IdSucursal] [int] IDENTITY(1,1) NOT NULL,
	[NombreSucursal] [varchar](100) NULL,
	[DireccionSucursal] [varchar](100) NULL,
	[IdAgencia] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
	[CodUbigeo] [char](6) NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sucursal] ON
INSERT [dbo].[Sucursal] ([IdSucursal], [NombreSucursal], [DireccionSucursal], [IdAgencia], [Estado], [CodUbigeo]) VALUES (1, N'MINKA', N'AV ARGENTINA 2234 - CALLAO', 1, 1, N'020203')
INSERT [dbo].[Sucursal] ([IdSucursal], [NombreSucursal], [DireccionSucursal], [IdAgencia], [Estado], [CodUbigeo]) VALUES (2, N'REAL PLAZA', N'GALERIA 234 PISO 2 REAL PLAZA CENTRO CIVICO', 2, 1, N'010101')
INSERT [dbo].[Sucursal] ([IdSucursal], [NombreSucursal], [DireccionSucursal], [IdAgencia], [Estado], [CodUbigeo]) VALUES (3, N'MEGA PLAZA', N'AV. ALFREDO MENDIOLA 3345 STAND 345 PISO 2', 1, 1, N'010101')
INSERT [dbo].[Sucursal] ([IdSucursal], [NombreSucursal], [DireccionSucursal], [IdAgencia], [Estado], [CodUbigeo]) VALUES (4, N'JR DE LA UNION', N'JIRON DE LA UNION 223 LIMA', 4, 1, N'010103')
INSERT [dbo].[Sucursal] ([IdSucursal], [NombreSucursal], [DireccionSucursal], [IdAgencia], [Estado], [CodUbigeo]) VALUES (5, N'HIGUERETA', N'AV. BENAVIDES 5023', 2, 1, N'010102')
INSERT [dbo].[Sucursal] ([IdSucursal], [NombreSucursal], [DireccionSucursal], [IdAgencia], [Estado], [CodUbigeo]) VALUES (6, N'FLORES', N'AV. LAS FLORES 234 SJL', 4, 1, N'240104')
INSERT [dbo].[Sucursal] ([IdSucursal], [NombreSucursal], [DireccionSucursal], [IdAgencia], [Estado], [CodUbigeo]) VALUES (7, N'CHORRILLOS', N'AV. GRAU 345', 1, 1, N'010120')
INSERT [dbo].[Sucursal] ([IdSucursal], [NombreSucursal], [DireccionSucursal], [IdAgencia], [Estado], [CodUbigeo]) VALUES (8, N'fsfsdfsdf', N'', 2, 0, N'140123')
INSERT [dbo].[Sucursal] ([IdSucursal], [NombreSucursal], [DireccionSucursal], [IdAgencia], [Estado], [CodUbigeo]) VALUES (9, N'agencai de', N'fsdfsdfsdf', 6, 0, N'220102')
INSERT [dbo].[Sucursal] ([IdSucursal], [NombreSucursal], [DireccionSucursal], [IdAgencia], [Estado], [CodUbigeo]) VALUES (11, N'FSDFSDFSDF', N'SIN DIERCC', 1, 0, N'190203')
INSERT [dbo].[Sucursal] ([IdSucursal], [NombreSucursal], [DireccionSucursal], [IdAgencia], [Estado], [CodUbigeo]) VALUES (12, N'MINKA CALLAO', N'AV SAENZ PEÑA 345 ', 7, 0, N'240101')
SET IDENTITY_INSERT [dbo].[Sucursal] OFF
/****** Object:  Table [dbo].[PermisoUsuario]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermisoUsuario](
	[IdPermisoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdRol] [int] NOT NULL,
	[IdUsuarioCreacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_PermisoUsuario] PRIMARY KEY CLUSTERED 
(
	[IdPermisoUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PermisoUsuario] ON
INSERT [dbo].[PermisoUsuario] ([IdPermisoUsuario], [IdUsuario], [IdRol], [IdUsuarioCreacion], [FechaCreacion], [Estado]) VALUES (1, 1, 1, 1, CAST(0x0000A163015A660F AS DateTime), 1)
INSERT [dbo].[PermisoUsuario] ([IdPermisoUsuario], [IdUsuario], [IdRol], [IdUsuarioCreacion], [FechaCreacion], [Estado]) VALUES (2, 2, 2, 1, CAST(0x0000A163015A78E7 AS DateTime), 1)
INSERT [dbo].[PermisoUsuario] ([IdPermisoUsuario], [IdUsuario], [IdRol], [IdUsuarioCreacion], [FechaCreacion], [Estado]) VALUES (6, 3, 2, 1, CAST(0x0000A1630189BE40 AS DateTime), 1)
INSERT [dbo].[PermisoUsuario] ([IdPermisoUsuario], [IdUsuario], [IdRol], [IdUsuarioCreacion], [FechaCreacion], [Estado]) VALUES (8, 4, 2, 1, CAST(0x0000A16800A465E5 AS DateTime), 1)
INSERT [dbo].[PermisoUsuario] ([IdPermisoUsuario], [IdUsuario], [IdRol], [IdUsuarioCreacion], [FechaCreacion], [Estado]) VALUES (11, 1, 2, 1, CAST(0x0000A2640177AA40 AS DateTime), 1)
INSERT [dbo].[PermisoUsuario] ([IdPermisoUsuario], [IdUsuario], [IdRol], [IdUsuarioCreacion], [FechaCreacion], [Estado]) VALUES (14, 1, 4, 1, CAST(0x0000A26601874EA9 AS DateTime), 1)
INSERT [dbo].[PermisoUsuario] ([IdPermisoUsuario], [IdUsuario], [IdRol], [IdUsuarioCreacion], [FechaCreacion], [Estado]) VALUES (15, 6, 4, 1, CAST(0x0000A267015B7A3F AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[PermisoUsuario] OFF
/****** Object:  Table [dbo].[PermisoMenu]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermisoMenu](
	[IdPermisoMenu] [int] IDENTITY(1,1) NOT NULL,
	[IdMenu] [int] NOT NULL,
	[IdRol] [int] NOT NULL,
	[EstadoPermisoMenu] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
 CONSTRAINT [PK_PermisoMenu] PRIMARY KEY CLUSTERED 
(
	[IdPermisoMenu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PermisoMenu] ON
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (1, 1, 1, 1, CAST(0x0000A163015A228D AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (2, 4, 1, 1, CAST(0x0000A163015A2501 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (3, 1, 2, 1, CAST(0x0000A163015A375A AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (5, 6, 2, 1, CAST(0x0000A163015A471E AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (9, 7, 1, 1, CAST(0x0000A163017758D6 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (22, 7, 2, 1, CAST(0x0000A16B00B2D9AD AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (24, 8, 2, 1, CAST(0x0000A16B011F99AF AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (25, 16, 1, 1, CAST(0x0000A18B00000000 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (26, 17, 2, 1, CAST(0x0000A18B00000000 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (27, 13, 1, 1, CAST(0x0000A23A00818912 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (28, 14, 1, 1, CAST(0x0000A23A0081FD3C AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (29, 15, 1, 1, CAST(0x0000A23F00BD3724 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (30, 18, 1, 1, CAST(0x0000A25900D38196 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (31, 19, 1, 1, CAST(0x0000A25D0161618C AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (32, 20, 1, 1, CAST(0x0000A2630140B28B AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (33, 21, 1, 1, CAST(0x0000A26400D864F0 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (34, 25, 1, 1, CAST(0x0000A2640108A029 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (43, 26, 1, 1, CAST(0x0000A264012A7346 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (54, 27, 4, 1, CAST(0x0000A2660186EE56 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (55, 19, 4, 1, CAST(0x0000A2660186F452 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (56, 21, 4, 1, CAST(0x0000A2660186F458 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (57, 25, 4, 1, CAST(0x0000A2660186F45E AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (58, 26, 4, 1, CAST(0x0000A2660186F467 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (59, 13, 4, 1, CAST(0x0000A267015AABE8 AS DateTime))
INSERT [dbo].[PermisoMenu] ([IdPermisoMenu], [IdMenu], [IdRol], [EstadoPermisoMenu], [FechaCreacion]) VALUES (60, 15, 4, 1, CAST(0x0000A267015ADCD1 AS DateTime))
SET IDENTITY_INSERT [dbo].[PermisoMenu] OFF
/****** Object:  Table [dbo].[Autorizante]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Autorizante](
	[IdAutorizante] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaCese] [datetime] NULL,
	[CodAutorizador] [varchar](10) NULL,
	[Jefatura] [varchar](150) NULL,
	[Gerencia] [varchar](150) NULL,
	[Direccion] [varchar](150) NULL,
	[CIP] [varchar](50) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Autorizante] PRIMARY KEY CLUSTERED 
(
	[IdAutorizante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Autorizante] ON
INSERT [dbo].[Autorizante] ([IdAutorizante], [IdPersona], [FechaIngreso], [FechaCese], [CodAutorizador], [Jefatura], [Gerencia], [Direccion], [CIP], [Estado]) VALUES (1, 2, CAST(0x0000A13900000000 AS DateTime), NULL, N'JPEREZ', NULL, NULL, NULL, N'', 1)
INSERT [dbo].[Autorizante] ([IdAutorizante], [IdPersona], [FechaIngreso], [FechaCese], [CodAutorizador], [Jefatura], [Gerencia], [Direccion], [CIP], [Estado]) VALUES (2, 1, CAST(0x0000A13900000000 AS DateTime), NULL, N'PDOMINGU', NULL, NULL, NULL, N'', 1)
INSERT [dbo].[Autorizante] ([IdAutorizante], [IdPersona], [FechaIngreso], [FechaCese], [CodAutorizador], [Jefatura], [Gerencia], [Direccion], [CIP], [Estado]) VALUES (3, 4, CAST(0x0000A13900000000 AS DateTime), NULL, N'AGUERREROG', NULL, NULL, NULL, N'', 1)
INSERT [dbo].[Autorizante] ([IdAutorizante], [IdPersona], [FechaIngreso], [FechaCese], [CodAutorizador], [Jefatura], [Gerencia], [Direccion], [CIP], [Estado]) VALUES (4, 1, CAST(0x0000A25300000000 AS DateTime), NULL, N'CDD', N'JHJJJJ', N'GGG', N'DDD', N'CIP', 1)
INSERT [dbo].[Autorizante] ([IdAutorizante], [IdPersona], [FechaIngreso], [FechaCese], [CodAutorizador], [Jefatura], [Gerencia], [Direccion], [CIP], [Estado]) VALUES (5, 1, CAST(0x0000A25300000000 AS DateTime), NULL, N'CDD001', N'JEFATURA', N'GERENICA', N'DIRECCION', N'CIP0001', 0)
INSERT [dbo].[Autorizante] ([IdAutorizante], [IdPersona], [FechaIngreso], [FechaCese], [CodAutorizador], [Jefatura], [Gerencia], [Direccion], [CIP], [Estado]) VALUES (6, 7, CAST(0x0000A26700000000 AS DateTime), NULL, N'00054', N'JEFATURA', N'', N'', N'CIP997', 1)
SET IDENTITY_INSERT [dbo].[Autorizante] OFF
/****** Object:  Table [dbo].[UsuarioSistema]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsuarioSistema](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[CodUsuario] [char](10) NOT NULL,
	[ClaveUsuario] [varchar](150) NULL,
	[FechaCreacion] [datetime] NULL,
	[Estado] [bit] NULL,
	[IdPersona] [int] NOT NULL,
 CONSTRAINT [PK_UsuarioSistema] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UsuarioSistema] ON
INSERT [dbo].[UsuarioSistema] ([IdUsuario], [CodUsuario], [ClaveUsuario], [FechaCreacion], [Estado], [IdPersona]) VALUES (1, N'PDOMINGB  ', N'12345', CAST(0x0000A14F017C9192 AS DateTime), 1, 2)
INSERT [dbo].[UsuarioSistema] ([IdUsuario], [CodUsuario], [ClaveUsuario], [FechaCreacion], [Estado], [IdPersona]) VALUES (2, N'PDOMINGUEZ', N'123456', CAST(0x0000A14B00E6605B AS DateTime), 1, 1)
INSERT [dbo].[UsuarioSistema] ([IdUsuario], [CodUsuario], [ClaveUsuario], [FechaCreacion], [Estado], [IdPersona]) VALUES (3, N'LPALOMINO ', N'123456', CAST(0x0000A1630189A9FB AS DateTime), 1, 3)
INSERT [dbo].[UsuarioSistema] ([IdUsuario], [CodUsuario], [ClaveUsuario], [FechaCreacion], [Estado], [IdPersona]) VALUES (4, N'AGUERREROG', N'12345', CAST(0x0000A16300000000 AS DateTime), 1, 4)
INSERT [dbo].[UsuarioSistema] ([IdUsuario], [CodUsuario], [ClaveUsuario], [FechaCreacion], [Estado], [IdPersona]) VALUES (6, N'magaly    ', N'magaly', CAST(0x0000A26701587FE2 AS DateTime), 1, 7)
SET IDENTITY_INSERT [dbo].[UsuarioSistema] OFF
/****** Object:  StoredProcedure [dbo].[up_Ubigeo_Obtener]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[up_Ubigeo_Obtener]
@CodUbigeo char(6)
AS
	SET NOCOUNT ON

SELECT   CodUbigeo, 
	Pais, 
	Departamento, 
	Provincia, 
	Distrito, 
	Estado, 
	codDepartamento, 
	codProvincia, 
	codDistrito
FROM   Ubigeo
WHERE     CodUbigeo = @CodUbigeo
GO
/****** Object:  StoredProcedure [dbo].[up_Ubigeo_Listar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[up_Ubigeo_Listar]
@Pais varchar(100)
AS
	SET NOCOUNT ON

SELECT   CodUbigeo, 
	Pais, 
	Departamento, 
	Provincia, 
	Distrito, 
	Estado, 
	codDepartamento, 
	codProvincia, 
	codDistrito
FROM   Ubigeo
WHERE     (Estado = 1) AND (Pais = @Pais)
GO
/****** Object:  StoredProcedure [dbo].[up_TipoAcceso_Obtener]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_TipoAcceso_Obtener]
(
	@IdTipoAcceso int
)
AS
	SET NOCOUNT ON

	SELECT IdTipoAcceso,
		Nombre,
		Estado
	FROM   TipoAcceso
	WHERE  
		IdTipoAcceso = @IdTipoAcceso
GO
/****** Object:  StoredProcedure [dbo].[up_TipoAcceso_Listar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_TipoAcceso_Listar]

AS
	SET NOCOUNT ON

	SELECT IdTipoAcceso,
		Nombre,
		Estado
	FROM   TipoAcceso
GO
/****** Object:  StoredProcedure [dbo].[up_UsuarioObservado_Buscar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_UsuarioObservado_Buscar]
@IdAplicacion INT,
@DocumentoIdentidad varchar(50)
AS

SELECT     UO.IdUsuarioObservado, UO.IdPersona, UO.IdAplicacion, UO.FechaRegistro, UO.EstadoActivo, Persona.Nombres, Persona.ApePaterno, 
                      Persona.ApeMaterno, Persona.DocumentoIdentidad, Aplicacion.NombreAplicacion
FROM         UsuarioObservado AS UO INNER JOIN
                      Persona ON UO.IdPersona = Persona.IdPersona INNER JOIN
                      Aplicacion ON UO.IdAplicacion = Aplicacion.IdAplicacion
WHERE    
(Persona.DocumentoIdentidad = @DocumentoIdentidad)
GO
/****** Object:  StoredProcedure [dbo].[up_UsuarioSistema_ObtenerUsuario]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_UsuarioSistema_ObtenerUsuario]
(
	@CodUsuario char(10)
)
AS
	SET NOCOUNT ON

	SELECT     UsuarioSistema.IdUsuario, UsuarioSistema.CodUsuario, UsuarioSistema.ClaveUsuario, UsuarioSistema.FechaCreacion, UsuarioSistema.Estado, UsuarioSistema.IdPersona, 
                      Persona.Nombres, Persona.ApePaterno, Persona.ApeMaterno, Persona.DocumentoIdentidad
FROM         UsuarioSistema INNER JOIN
                      Persona ON UsuarioSistema.IdPersona = Persona.IdPersona
	WHERE  
		UsuarioSistema.CodUsuario = @CodUsuario
GO
/****** Object:  StoredProcedure [dbo].[up_UsuarioSistema_Insertar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_UsuarioSistema_Insertar]
(
	@IdUsuario int = NULL OUTPUT,
	@CodUsuario char(10),
	@ClaveUsuario varchar(150) = NULL,
	@Estado bit = NULL,
	@IdPersona int
)
AS
	SET NOCOUNT ON

	INSERT INTO UsuarioSistema
	(
		CodUsuario,
		ClaveUsuario,
		FechaCreacion,
		Estado,
		IdPersona
	)
	VALUES
	(
		@CodUsuario,
		@ClaveUsuario,
		GETDATE(),
		@Estado,
		@IdPersona
	)

	SELECT @IdUsuario = SCOPE_IDENTITY();

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_UsuarioSistema_Actualizar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_UsuarioSistema_Actualizar]
(
	@IdUsuario int,
	@CodUsuario char(10),
	@ClaveUsuario varchar(150) = NULL,
	@Estado bit = NULL,
	@IdPersona int
)
AS
	SET NOCOUNT ON
	
	UPDATE UsuarioSistema
	SET
		CodUsuario = @CodUsuario,
		ClaveUsuario = @ClaveUsuario,
		Estado = @Estado,
		IdPersona = @IdPersona
	WHERE 
		IdUsuario = @IdUsuario

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Usuario_Obtener_Permiso]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Usuario_Obtener_Permiso]
(
@IdUsuario int,
@IdPersona int
)
AS
	SET NOCOUNT ON

	SELECT     Persona.IdPersona, Persona.Nombres, Persona.ApePaterno, Persona.ApeMaterno,
	 Persona.FechaCreacion, Persona.DocumentoIdentidad, 
                      Persona.Estado, Persona.Correo, UsuarioSistema.IdUsuario, 
                      UsuarioSistema.CodUsuario, UsuarioSistema.Estado AS UsuarioEstado,
                      UsuarioSistema.ClaveUsuario
FROM         Persona INNER JOIN
                      UsuarioSistema ON Persona.IdPersona = UsuarioSistema.IdPersona
	WHERE  		
	(@IdUsuario=0 or UsuarioSistema.IdUsuario = @IdUsuario)
	AND (@IdPersona=0 or Persona.IdPersona = @IdPersona)
GO
/****** Object:  StoredProcedure [dbo].[up_Usuario_Eliminar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Usuario_Eliminar]
  @IntIdusuario int,
  @IntCodigoMensaje int OUTPUT
AS

DECLARE @CantidadPermisoUsuario int

SELECT @CantidadPermisoUsuario = COUNT(*) FROM PermisoUsuario
WHERE IdUsuario = @IntIdusuario 

IF @CantidadPermisoUsuario = 0 
	BEGIN
		DELETE FROM UsuarioSistema WHERE IdUsuario = @IntIdusuario
	END
ELSE
	BEGIN 
			SET @IntCodigoMensaje = -2
	END
GO
/****** Object:  StoredProcedure [dbo].[up_Usuario_Buscar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Usuario_Buscar]
(
	
	@Nombres varchar(100)=null,
	@ApePaterno varchar(100)=null,
	@ApeMaterno varchar(100)=null,
	@Codusuario varchar(100)=null
)
AS
	SET NOCOUNT ON

	SELECT     Persona.IdPersona, Persona.Nombres, Persona.ApePaterno, Persona.ApeMaterno,
	 Persona.FechaCreacion, Persona.DocumentoIdentidad, 
                      Persona.Estado, Persona.Correo, UsuarioSistema.IdUsuario, 
                      UsuarioSistema.CodUsuario, UsuarioSistema.Estado AS UsuarioEstado
FROM         Persona INNER JOIN
                      UsuarioSistema ON Persona.IdPersona = UsuarioSistema.IdPersona
	WHERE  		
	 (@Nombres='' or Nombres like @Nombres)
	 AND (@ApePaterno ='' or ApePaterno like @ApePaterno)
	 AND (@ApeMaterno ='' or ApeMaterno like @ApeMaterno)
	 AND (@Codusuario ='' or UsuarioSistema.CodUsuario like @Codusuario)
GO
/****** Object:  StoredProcedure [dbo].[up_Sucursal_Obtener]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Sucursal_Obtener]
(
	@IdSucursal int
)
AS
	SET NOCOUNT ON

SELECT     Sucursal.IdSucursal, Sucursal.NombreSucursal, Sucursal.DireccionSucursal, Sucursal.IdAgencia, Sucursal.Estado, Sucursal.CodUbigeo, Ubigeo.Pais, 
                      Ubigeo.Departamento, Ubigeo.Provincia, Ubigeo.Distrito, Ubigeo.codDepartamento, Ubigeo.codProvincia, Ubigeo.codDistrito,Ubigeo.Estado EstadoUbigeo
FROM         Sucursal INNER JOIN
                      Ubigeo ON Sucursal.CodUbigeo = Ubigeo.CodUbigeo
	WHERE  
		Sucursal.IdSucursal = @IdSucursal
GO
/****** Object:  StoredProcedure [dbo].[up_Sucursal_Listar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Sucursal_Listar]
(
	@IdAgencia int
)
AS
	SET NOCOUNT ON

SELECT     Sucursal.IdSucursal, Sucursal.NombreSucursal, Sucursal.DireccionSucursal, Sucursal.IdAgencia, Sucursal.Estado, Sucursal.CodUbigeo, Ubigeo.Pais, 
                      Ubigeo.Departamento, Ubigeo.Provincia, Ubigeo.Distrito, Ubigeo.codDepartamento, Ubigeo.codProvincia, Ubigeo.codDistrito,Ubigeo.Estado EstadoUbigeo
FROM         Sucursal INNER JOIN
                      Ubigeo ON Sucursal.CodUbigeo = Ubigeo.CodUbigeo
	WHERE  
		Sucursal.IdAgencia = @IdAgencia
GO
/****** Object:  StoredProcedure [dbo].[up_Sucursal_Insertar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Sucursal_Insertar]
(
	@IdSucursal int = NULL OUTPUT,
	@NombreSucursal varchar(100) = NULL,
	@DireccionSucursal varchar(100) = NULL,
	@IdAgencia int,
	@Estado bit,
	@CodUbigeo char(6)
)
AS
	SET NOCOUNT ON

	INSERT INTO Sucursal
	(
		NombreSucursal,
		DireccionSucursal,
		IdAgencia,
		Estado,
		CodUbigeo
	)
	VALUES
	(
		@NombreSucursal,
		@DireccionSucursal,
		@IdAgencia,
		@Estado,
		@CodUbigeo
	)

	SELECT @IdSucursal = SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[up_Sucursal_Eliminar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Sucursal_Eliminar]
(
	@IdSucursal int
)
AS
	SET NOCOUNT ON

	DELETE 
	FROM   Sucursal
	WHERE  
		IdSucursal = @IdSucursal

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Sucursal_Actualizar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Sucursal_Actualizar]
(
	@IdSucursal int,
	@NombreSucursal varchar(100) = NULL,
	@DireccionSucursal varchar(100) = NULL,
	@IdAgencia int,
	@Estado bit,
	@CodUbigeo char(6)
)
AS
	SET NOCOUNT ON
	
	UPDATE Sucursal
	SET
		NombreSucursal = @NombreSucursal,
		DireccionSucursal = @DireccionSucursal,
		IdAgencia = @IdAgencia,
		Estado = @Estado,
		CodUbigeo = @CodUbigeo
	WHERE 
		IdSucursal = @IdSucursal

	RETURN @@Error
GO
/****** Object:  Table [dbo].[EscaneoAgenciaSucursal]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EscaneoAgenciaSucursal](
	[IdEscaneoAgenciaSuc] [int] IDENTITY(1,1) NOT NULL,
	[IdAgencia] [int] NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Estado] [int] NOT NULL,
	[EstadoActivo] [bit] NOT NULL,
 CONSTRAINT [PK_EscaneoAgenciaSucursal] PRIMARY KEY CLUSTERED 
(
	[IdEscaneoAgenciaSuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EscaneoAgenciaSucursal] ON
INSERT [dbo].[EscaneoAgenciaSucursal] ([IdEscaneoAgenciaSuc], [IdAgencia], [IdSucursal], [Fecha], [Estado], [EstadoActivo]) VALUES (1, 1, 1, CAST(0xC6360B00 AS Date), 9, 1)
INSERT [dbo].[EscaneoAgenciaSucursal] ([IdEscaneoAgenciaSuc], [IdAgencia], [IdSucursal], [Fecha], [Estado], [EstadoActivo]) VALUES (3, 2, 2, CAST(0xC6360B00 AS Date), 9, 1)
INSERT [dbo].[EscaneoAgenciaSucursal] ([IdEscaneoAgenciaSuc], [IdAgencia], [IdSucursal], [Fecha], [Estado], [EstadoActivo]) VALUES (4, 1, 3, CAST(0xC6360B00 AS Date), 9, 1)
SET IDENTITY_INSERT [dbo].[EscaneoAgenciaSucursal] OFF
/****** Object:  Table [dbo].[SolicitudAcceso]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SolicitudAcceso](
	[IdSolicitudAcceso] [int] IDENTITY(1,1) NOT NULL,
	[NroSolicitud] [char](10) NOT NULL,
	[FechaRegistro] [date] NOT NULL,
	[UsuarioCreacion] [char](10) NOT NULL,
	[IdTipoAcceso] [int] NOT NULL,
	[IdSolicitante] [int] NOT NULL,
	[IdAutorizante] [int] NULL,
	[FechaAsignacion] [date] NULL,
	[IdEstado] [int] NOT NULL,
	[EstadoActivo] [bit] NOT NULL,
	[IdAgencia] [int] NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[FechaValidacion] [date] NULL,
	[NumEquipos] [int] NOT NULL,
	[IdEspecialista] [int] NULL,
	[FechaCierre] [date] NULL,
 CONSTRAINT [PK_SolicitudAcceso] PRIMARY KEY CLUSTERED 
(
	[IdSolicitudAcceso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SolicitudAcceso] ON
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (5, N'CRQ0000005', CAST(0xA6360B00 AS Date), N'PDOMINGU  ', 1, 1, 1, NULL, 2, 1, 1, 3, CAST(0xBE360B00 AS Date), 2, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (6, N'CRQ0000006', CAST(0xA6360B00 AS Date), N'PDOMINGU  ', 3, 1, 1, NULL, 1, 1, 4, 6, NULL, 3, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (7, N'CRQ0000007', CAST(0xA6360B00 AS Date), N'PDOMINGU  ', 1, 1, NULL, NULL, 1, 1, 1, 3, NULL, 4, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (8, N'CRQ0000008', CAST(0xA6360B00 AS Date), N'PDOMINGU  ', 1, 1, 1, NULL, 2, 1, 1, 1, CAST(0xBB360B00 AS Date), 2, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (9, N'CRQ0000009', CAST(0xA6360B00 AS Date), N'PDOMINGU  ', 1, 1, 1, NULL, 2, 1, 2, 2, CAST(0xBB360B00 AS Date), 2, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (10, N'CRQ0000010', CAST(0xA6360B00 AS Date), N'PDOMINGU  ', 1, 1, NULL, NULL, 1, 1, 2, 2, NULL, 2, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (11, N'CRQ0000011', CAST(0xA6360B00 AS Date), N'PDOMINGU  ', 2, 1, NULL, NULL, 1, 1, 2, 5, NULL, 2, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (12, N'CRQ0000012', CAST(0xA6360B00 AS Date), N'PDOMINGU  ', 2, 1, 1, NULL, 1, 1, 2, 2, NULL, 2, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (14, N'CRQ0000014', CAST(0xA6360B00 AS Date), N'PDOMINGU  ', 1, 1, NULL, NULL, 1, 1, 1, 3, NULL, 2, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (15, N'CRQ0000015', CAST(0xA7360B00 AS Date), N'PDOMINGU  ', 2, 1, NULL, NULL, 1, 1, 2, 2, NULL, 2, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (20, N'CRQ0000020', CAST(0xA7360B00 AS Date), N'PDOMINGU  ', 2, 1, 1, NULL, 2, 1, 4, 4, CAST(0xBB360B00 AS Date), 3, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (21, N'CRQ0000021', CAST(0xA7360B00 AS Date), N'PDOMINGU  ', 1, 1, 1, NULL, 2, 1, 1, 1, CAST(0xBB360B00 AS Date), 3, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (22, N'CRQ0000022', CAST(0xA7360B00 AS Date), N'PDOMINGU  ', 1, 1, 1, NULL, 2, 1, 2, 2, CAST(0xBB360B00 AS Date), 3, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (23, N'CRQ0000023', CAST(0xA7360B00 AS Date), N'PDOMINGU  ', 1, 1, 1, NULL, 2, 1, 1, 1, CAST(0xBB360B00 AS Date), 3, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (24, N'CRQ0000024', CAST(0xA8360B00 AS Date), N'PDOMINGU  ', 1, 1, 1, NULL, 2, 1, 1, 1, CAST(0xBB360B00 AS Date), 4, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (25, N'CRQ0000025', CAST(0xAA360B00 AS Date), N'JPEREZ    ', 2, 2, 1, NULL, 2, 1, 2, 2, CAST(0xBB360B00 AS Date), 4, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (26, N'CRQ0000026', CAST(0xAA360B00 AS Date), N'JPEREZ    ', 1, 2, NULL, NULL, 1, 1, 4, 6, NULL, 4, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (27, N'CRQ0000027', CAST(0xBD360B00 AS Date), N'JPEREZ    ', 2, 2, 2, NULL, 6, 1, 1, 3, CAST(0xC3360B00 AS Date), 3, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (28, N'CRQ0000028', CAST(0xE5360B00 AS Date), N'JPEREZ    ', 1, 2, 1, NULL, 4, 1, 2, 2, CAST(0xE5360B00 AS Date), 1, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (29, N'CRQ0000029', CAST(0xE5360B00 AS Date), N'JPEREZ    ', 1, 2, 1, NULL, 6, 1, 1, 3, CAST(0xE5360B00 AS Date), 1, 4, CAST(0xF9360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (30, N'CRQ0000030', CAST(0xE5360B00 AS Date), N'JPEREZ    ', 1, 2, 3, NULL, 2, 1, 1, 1, CAST(0xF9360B00 AS Date), 3, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (31, N'CRQ0000031', CAST(0xE6360B00 AS Date), N'JPEREZ    ', 1, 2, 1, NULL, 6, 1, 4, 6, CAST(0xE7360B00 AS Date), 2, 4, CAST(0xF9360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (32, N'CRQ0000032', CAST(0xE7360B00 AS Date), N'JPEREZ    ', 2, 2, 1, NULL, 4, 1, 1, 3, CAST(0xE7360B00 AS Date), 1, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (33, N'CRQ0000033', CAST(0xE7360B00 AS Date), N'JPEREZ    ', 1, 2, 1, NULL, 6, 1, 2, 2, CAST(0xE7360B00 AS Date), 1, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (34, N'CRQ0000034', CAST(0xE7360B00 AS Date), N'JPEREZ    ', 1, 2, 1, NULL, 6, 1, 2, 2, CAST(0xE7360B00 AS Date), 0, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (35, N'CRQ0000035', CAST(0xE7360B00 AS Date), N'JPEREZ    ', 1, 2, 3, NULL, 2, 1, 1, 1, CAST(0xF9360B00 AS Date), 1, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (36, N'CRQ0000036', CAST(0xE7360B00 AS Date), N'JPEREZ    ', 1, 2, 1, NULL, 6, 1, 1, 3, CAST(0xF7360B00 AS Date), 1, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (37, N'CRQ0000037', CAST(0xE7360B00 AS Date), N'JPEREZ    ', 3, 2, 1, NULL, 6, 0, 1, 3, CAST(0xF7360B00 AS Date), 1, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (38, N'CRQ0000038', CAST(0xF7360B00 AS Date), N'JPEREZ    ', 1, 2, NULL, NULL, 1, 0, 1, 1, NULL, 1, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (39, N'CRQ0000039', CAST(0xF7360B00 AS Date), N'JPEREZ    ', 1, 2, 1, NULL, 6, 1, 1, 1, CAST(0xF7360B00 AS Date), 1, NULL, NULL)
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (40, N'CRQ0000040', CAST(0xF7360B00 AS Date), N'JPEREZ    ', 2, 2, 1, NULL, 6, 1, 1, 3, CAST(0xF8360B00 AS Date), 1, NULL, CAST(0xF8360B00 AS Date))
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (41, N'CRQ0000041', CAST(0xF8360B00 AS Date), N'JPEREZ    ', 2, 2, 3, NULL, 6, 1, 1, 7, CAST(0xF8360B00 AS Date), 1, NULL, NULL)
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (42, N'CRQ0000042', CAST(0x94370B00 AS Date), N'JPEREZ    ', 1, 2, NULL, NULL, 1, 1, 1, 1, NULL, 4, NULL, NULL)
INSERT [dbo].[SolicitudAcceso] ([IdSolicitudAcceso], [NroSolicitud], [FechaRegistro], [UsuarioCreacion], [IdTipoAcceso], [IdSolicitante], [IdAutorizante], [FechaAsignacion], [IdEstado], [EstadoActivo], [IdAgencia], [IdSucursal], [FechaValidacion], [NumEquipos], [IdEspecialista], [FechaCierre]) VALUES (43, N'CRQ0000043', CAST(0xA9370B00 AS Date), N'PDOMINGB  ', 1, 2, NULL, NULL, 1, 1, 7, 12, NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SolicitudAcceso] OFF
/****** Object:  StoredProcedure [dbo].[up_Agencia_Buscar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[up_Agencia_Buscar]
@NombresRepresentante varchar(100),
@IdSucursal INT,
@NombreSucursal varchar(100),
@DireccionSucursal varchar(100),
@codDepartamento char(2)='',
@codProvincia char(2)='',	
@codDistrito char(2)='',
@IdAgencia INT,
@NombreAgencia varchar(100),
@RUC varchar(10)
AS

SELECT     Agencia.IdAgencia, Agencia.NombreAgencia, Agencia.IdRepresentante, Agencia.RUC, Agencia.Nemotecnico_ag, Agencia.Estado, Persona.Nombres, 
                      Persona.ApePaterno, Persona.ApeMaterno, Persona.DocumentoIdentidad, Persona.Correo, Sucursal.NombreSucursal, Sucursal.DireccionSucursal, 
                      Sucursal.CodUbigeo, Ubigeo.Pais, Ubigeo.Departamento, Ubigeo.Provincia, Ubigeo.Distrito, Ubigeo.codDepartamento, Ubigeo.codProvincia, 
                      Ubigeo.codDistrito, Persona.Nombres + ' ' + Persona.ApePaterno + ' ' + Persona.ApeMaterno AS NombresRepresentante, Sucursal.IdSucursal
FROM         Ubigeo INNER JOIN
                      Sucursal ON Ubigeo.CodUbigeo = Sucursal.CodUbigeo RIGHT OUTER JOIN
                      Agencia INNER JOIN
                      Persona ON Agencia.IdRepresentante = Persona.IdPersona ON Sucursal.IdAgencia = Agencia.IdAgencia
WHERE     
(Persona.Nombres + ' ' + Persona.ApePaterno + ' ' + Persona.ApeMaterno LIKE @NombresRepresentante) 
AND (@IdSucursal=-1 OR Sucursal.IdSucursal = @IdSucursal) 
AND (@NombreSucursal='%%' OR Sucursal.NombreSucursal LIKE @NombreSucursal) 
AND (@DireccionSucursal= '%%' OR Sucursal.DireccionSucursal LIKE @DireccionSucursal) 
AND (@codDepartamento='-1' OR Ubigeo.codDepartamento = @codDepartamento) 
AND (@codProvincia='-1' OR Ubigeo.codProvincia = @codProvincia) 
AND (@codDistrito='-1' OR Ubigeo.codDistrito = @codDistrito) 
AND (@IdAgencia=-1 OR Agencia.IdAgencia = @IdAgencia) 
AND (@NombreAgencia='' or Agencia.NombreAgencia LIKE @NombreAgencia) 
AND (@RUC='' OR Agencia.RUC = @RUC)
ORDER BY IdAgencia
GO
/****** Object:  StoredProcedure [dbo].[up_AplicacionAutorizante_Buscar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_AplicacionAutorizante_Buscar]
(
	@IdAplicacion int,
	@IdAutorizante int
)
AS
	SET NOCOUNT ON

SELECT     AplicacionAutorizante.IdAplicacion, AplicacionAutorizante.IdAutorizante, AplicacionAutorizante.FechaCreacion, AplicacionAutorizante.UsuarioCreacion, 
                      AplicacionAutorizante.EstadoActivo, Aplicacion.NombreAplicacion, Autorizante.FechaIngreso, Autorizante.FechaCese, Autorizante.IdPersona, 
                      Persona.Nombres, Persona.ApePaterno, Persona.ApeMaterno, Persona.DocumentoIdentidad, Persona.Correo, AplicacionAutorizante.IdAplicacionAutorizante,
                      AplicacionAutorizante.RutaEvidencia,AplicacionAutorizante.Comentario
FROM         AplicacionAutorizante INNER JOIN
                      Aplicacion ON AplicacionAutorizante.IdAplicacion = Aplicacion.IdAplicacion INNER JOIN
                      Autorizante ON AplicacionAutorizante.IdAutorizante = Autorizante.IdAutorizante INNER JOIN
                      Persona ON Autorizante.IdPersona = Persona.IdPersona
WHERE (@IdAplicacion =-1 or AplicacionAutorizante.IdAplicacion = @IdAplicacion) and
(@IdAutorizante =-1 or AplicacionAutorizante.IdAutorizante = @IdAutorizante) 
	

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Autorizante_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Autorizante_Obtener]
(
	@IdAutorizante int,
	@IdPersona int
)
AS
	SET NOCOUNT ON

	SELECT        Autorizante.IdAutorizante, Autorizante.FechaIngreso, Autorizante.FechaCese, Autorizante.CodAutorizador, Autorizante.IdPersona, Autorizante.Estado, Persona.Nombres, 
                      Persona.ApePaterno, Persona.ApeMaterno, Persona.FechaCreacion, Persona.DocumentoIdentidad, Persona.Estado AS EstadoPersona,
                      Autorizante.Jefatura, Autorizante.Gerencia, Autorizante.Direccion, Autorizante.CIP
FROM         Autorizante INNER JOIN
                      Persona ON Autorizante.IdPersona = Persona.IdPersona
	WHERE  
	(@IdAutorizante=0 OR	Autorizante.IdAutorizante = @IdAutorizante) AND
	(@IdPersona =0 OR Autorizante.IdPersona = @IdPersona)
GO
/****** Object:  StoredProcedure [dbo].[up_Autorizante_Listar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Autorizante_Listar]
(
	@IdAutorizante int,
	@IdPersona int
)
AS
	SET NOCOUNT ON

	SELECT     Autorizante.FechaIngreso, Autorizante.FechaCese, Autorizante.CodAutorizador, Autorizante.IdPersona, Autorizante.Estado, Persona.Nombres, 
                      Persona.ApePaterno, Persona.ApeMaterno, Persona.FechaCreacion, Persona.DocumentoIdentidad, Persona.Estado AS EstadoPersona, Autorizante.IdAutorizante,
                      Autorizante.Jefatura, Autorizante.Gerencia, Autorizante.Direccion, Autorizante.CIP
FROM         Autorizante INNER JOIN
                      Persona ON Autorizante.IdPersona = Persona.IdPersona
	WHERE  
	(@IdAutorizante=0 OR	Autorizante.IdAutorizante = @IdAutorizante) AND
	(@IdPersona =0 OR Autorizante.IdPersona = @IdPersona)
GO
/****** Object:  StoredProcedure [dbo].[up_Autorizante_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Autorizante_Insertar]
(
	@IdAutorizante int = NULL OUTPUT,
	@IdPersona int,
	@FechaIngreso datetime = NULL,
	@FechaCese datetime = NULL,
	@CodAutorizador varchar(10) = NULL,
	@Jefatura varchar(150) = NULL,
	@Gerencia varchar(150) = NULL,
	@Direccion varchar(150) = NULL,
	@CIP varchar(50) = NULL,
	@Estado bit
)
AS
	SET NOCOUNT ON

	INSERT INTO Autorizante
	(
		IdPersona,
		FechaIngreso,
		FechaCese,
		CodAutorizador,
		Jefatura,
		Gerencia,
		Direccion,
		CIP,
		Estado
	)
	VALUES
	(
		@IdPersona,
		@FechaIngreso,
		@FechaCese,
		@CodAutorizador,
		@Jefatura,
		@Gerencia,
		@Direccion,
		@CIP,
		@Estado
	)

	SELECT @IdAutorizante = SCOPE_IDENTITY();

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Autorizante_Eliminar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Autorizante_Eliminar]
(
	@IdAutorizante int
)
AS
	SET NOCOUNT ON

	DELETE 
	FROM   Autorizante
	WHERE  
		IdAutorizante = @IdAutorizante

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Autorizante_Buscar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Autorizante_Buscar]
(
	@Nombres varchar(100)=null,
	@ApePaterno varchar(100)=null,
	@ApeMaterno varchar(100)=null,
	@DocumentoIdentidad varchar(100)=null,
	@CIP varchar(100)=null
)
AS
	SET NOCOUNT ON

	SELECT     Autorizante.FechaIngreso, Autorizante.FechaCese, Autorizante.CodAutorizador, Autorizante.IdPersona, Autorizante.Estado, Persona.Nombres, 
                      Persona.ApePaterno, Persona.ApeMaterno, Persona.FechaCreacion, Persona.DocumentoIdentidad, Persona.Estado AS EstadoPersona, Autorizante.IdAutorizante,
                      Autorizante.Jefatura, Autorizante.Gerencia, Autorizante.Direccion, Autorizante.CIP, Persona.Correo
FROM         Autorizante INNER JOIN
                      Persona ON Autorizante.IdPersona = Persona.IdPersona
	WHERE  
	 (@Nombres='' or Persona.Nombres like @Nombres)
	 AND (@ApePaterno ='' or Persona.ApePaterno like @ApePaterno)
	 AND (@ApeMaterno ='' or Persona.ApeMaterno like @ApeMaterno)
	 AND (@DocumentoIdentidad ='' or Persona.DocumentoIdentidad like @DocumentoIdentidad)
	 AND (@CIP ='' or Autorizante.CIP like @CIP)
GO
/****** Object:  StoredProcedure [dbo].[up_Autorizante_Actualizar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Autorizante_Actualizar]
(
	@IdAutorizante int,
	@IdPersona int,
	@FechaIngreso datetime = NULL,
	@FechaCese datetime = NULL,
	@CodAutorizador varchar(10) = NULL,
	@Jefatura varchar(150) = NULL,
	@Gerencia varchar(150) = NULL,
	@Direccion varchar(150) = NULL,
	@CIP varchar(50) = NULL,
	@Estado bit
)
AS
	SET NOCOUNT ON
	
	UPDATE Autorizante
	SET
		IdPersona = @IdPersona,
		FechaIngreso = @FechaIngreso,
		FechaCese = @FechaCese,
		CodAutorizador = @CodAutorizador,
		Jefatura = @Jefatura,
		Gerencia = @Gerencia,
		Direccion = @Direccion,
		CIP = @CIP,
		Estado = @Estado
	WHERE 
		IdAutorizante = @IdAutorizante

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_AplicacionAutorizanteHistorico_Buscar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_AplicacionAutorizanteHistorico_Buscar]
(
	@IdAplicacion int,
	@IdAutorizante int,
	@FechaModificacionIni date= NULL,
	@FechaModificacionFin date= NULL
)
AS
	SET NOCOUNT ON

SELECT     ApHisto.IdHistorico, ApHisto.IdAplicacion, ApHisto.IdAutorizante, ApHisto.Accion, ApHisto.FechaModificacion, ApHisto.UsuarioModificacion, 
                      Apl.NombreAplicacion, per.IdPersona, per.Nombres, per.ApePaterno, per.ApeMaterno, per.DocumentoIdentidad, per.Correo,
                      ApHisto.Comentario,ApHisto.RutaEvidencia
FROM         AplicacionAutorizanteHistorico AS ApHisto INNER JOIN
                      Aplicacion AS Apl ON ApHisto.IdAplicacion = Apl.IdAplicacion INNER JOIN
                      Autorizante AS Auto ON ApHisto.IdAutorizante = Auto.IdAutorizante INNER JOIN
                      Persona AS per ON Auto.IdPersona = per.IdPersona
WHERE (@IdAplicacion =-1 or ApHisto.IdAplicacion = @IdAplicacion) and
(@IdAutorizante =-1 or ApHisto.IdAutorizante = @IdAutorizante) and
(@FechaModificacionIni IS NULL  OR ApHisto.FechaModificacion >= @FechaModificacionIni) AND 
(@FechaModificacionFin IS NULL  OR ApHisto.FechaModificacion <= @FechaModificacionFin)
ORDER BY ApHisto.IdAplicacion
	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_AplicacionAutorizante_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_AplicacionAutorizante_Obtener]
(
	@IdAplicacionAutorizante int
)
AS
	SET NOCOUNT ON

SELECT     AplicacionAutorizante.IdAplicacion, AplicacionAutorizante.IdAutorizante, AplicacionAutorizante.FechaCreacion, AplicacionAutorizante.UsuarioCreacion, 
                      AplicacionAutorizante.EstadoActivo, Aplicacion.NombreAplicacion, Autorizante.FechaIngreso, Autorizante.FechaCese, Autorizante.IdPersona, 
                      Persona.Nombres, Persona.ApePaterno, Persona.ApeMaterno, Persona.DocumentoIdentidad, Persona.Correo, AplicacionAutorizante.IdAplicacionAutorizante,
                      AplicacionAutorizante.RutaEvidencia,AplicacionAutorizante.Comentario
                      
FROM         AplicacionAutorizante INNER JOIN
                      Aplicacion ON AplicacionAutorizante.IdAplicacion = Aplicacion.IdAplicacion INNER JOIN
                      Autorizante ON AplicacionAutorizante.IdAutorizante = Autorizante.IdAutorizante INNER JOIN
                      Persona ON Autorizante.IdPersona = Persona.IdPersona
	WHERE  
		IdAplicacionAutorizante = @IdAplicacionAutorizante

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_PermisoUsuario_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_PermisoUsuario_Insertar]
(
	@IdPermisoUsuario int = NULL OUTPUT,
	@IdUsuario int,
	@IdRol int,
	@IdUsuarioCreacion int
)
AS
	SET NOCOUNT ON

	INSERT INTO PermisoUsuario
	(
		IdUsuario,
		IdRol,
		IdUsuarioCreacion,
		FechaCreacion,
		Estado
	)
	VALUES
	(
		@IdUsuario,
		@IdRol,
		@IdUsuarioCreacion,
		GETDATE(),
		1
	)

	SELECT @IdPermisoUsuario = SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[up_PermisoUsuario_Eliminar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_PermisoUsuario_Eliminar]
(
	@IdPermisoUsuario int
)
AS
	SET NOCOUNT ON

	DELETE 
	FROM   PermisoUsuario
	WHERE  
		IdPermisoUsuario = @IdPermisoUsuario

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_PermisoUsuario_Copiar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_PermisoUsuario_Copiar]
	@VchCodigoUsuarioCopiar VARCHAR(30),
	@IntIdUsuario int,
	@IntCodigoError int OUTPUT
AS
BEGIN

DECLARE @IdUsuarioCopiar int
SET @IdUsuarioCopiar = -1;

	SELECT @IdUsuarioCopiar = IdUsuario FROM UsuarioSistema
	WHERE CodUsuario = @VchCodigoUsuarioCopiar AND Estado = 1
	
	IF @IdUsuarioCopiar = -1
	BEGIN
		SET @IntCodigoError = -1;--USUARIO NO EXISTE
	END
	ELSE
	BEGIN
		
		DELETE FROM PermisoUsuario WHERE IdUsuario = @IntIdUsuario
	
		INSERT INTO PermisoUsuario (IdUsuario, IdRol,  IdUsuarioCreacion, FechaCreacion, Estado) 
		SELECT     @IntIdUsuario, IdRol, IdUsuarioCreacion, FechaCreacion, Estado
		FROM         PermisoUsuario
		WHERE     (IdUsuario = @IdUsuarioCopiar)
		
		SET @IntCodigoError = 0;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[up_PermisoMenu_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_PermisoMenu_Obtener]
(
	@IdPermisoMenu int
)
AS
	SET NOCOUNT ON

	SELECT 		IdPermisoMenu,
		IdMenu,
		IdRol,
		EstadoPermisoMenu,
		FechaCreacion
	FROM   PermisoMenu
	WHERE  
		IdPermisoMenu = @IdPermisoMenu
GO
/****** Object:  StoredProcedure [dbo].[up_PermisoMenu_Listar_Menu_Acceso]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_PermisoMenu_Listar_Menu_Acceso]   
  @IdUsuario Int
  
  
AS
BEGIN

SELECT  DISTINCT   O.IdMenu, O.NombreFisicoMenu, O.DescripcionMenu, O.EtiquetaMenu, O.UrlMenu, O.IdMenuPadre, O.EstadoMenu, ISNULL(P.EstadoPermisoMenu, 0) 
                      AS EstadoPermisoMenu, PermisoUsuario.IdUsuario
FROM         PermisoMenu AS P INNER JOIN
                      Menu AS O ON P.IdMenu = O.IdMenu INNER JOIN
                      PermisoUsuario ON P.IdRol = PermisoUsuario.IdRol
WHERE     (O.EstadoMenu = 1) AND (PermisoUsuario.IdUsuario = @IdUsuario) 
 --tipo menu opciones

END
GO
/****** Object:  StoredProcedure [dbo].[up_PermisoMenu_Listar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_PermisoMenu_Listar]
(
	@IdPermisoMenu int
)
AS
	SET NOCOUNT ON

	SELECT 		IdPermisoMenu,
		IdMenu,
		IdRol,
		EstadoPermisoMenu,
		FechaCreacion
	FROM   PermisoMenu
	WHERE  
		IdPermisoMenu = @IdPermisoMenu
GO
/****** Object:  StoredProcedure [dbo].[up_PermisoMenu_Insertar_sinValidacion]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_PermisoMenu_Insertar_sinValidacion]
(
	@IdPermisoMenu int = NULL OUTPUT,
	@IdMenu int,
	@IdRol int,
	@EstadoPermisoMenu bit
	
)
AS
	SET NOCOUNT ON

	INSERT INTO PermisoMenu
	(
		IdMenu,
		IdRol,
		EstadoPermisoMenu,
		FechaCreacion
	)
	VALUES
	(
		@IdMenu,
		@IdRol,
		@EstadoPermisoMenu,
		GETDATE()
	)

	SELECT @IdPermisoMenu = SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[up_PermisoMenu_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_PermisoMenu_Insertar]
(
	@IdPermisoMenu int = NULL OUTPUT,
	@IdMenu int,
	@IdRol int,
	@EstadoPermisoMenu bit,
	@IntCodigoError int OUTPUT
)
AS
	SET NOCOUNT ON
DECLARE @IdObjetoPadre int
DECLARE @CantidadPermisos int


SELECT @IdObjetoPadre = ISNULL(IdMenuPadre, -1) FROM Menu WHERE IdMenu = @IdMenu

IF @IdObjetoPadre <> -1 --TIENE PADRE, HAY QUE VERIFICAR SI EL PADRE TIENE PERMISOS
BEGIN
	SELECT @CantidadPermisos = COUNT(*) FROM PermisoMenu WHERE IdMenu = @IdObjetoPadre AND
	 IdRol = @IdRol
	
	IF @CantidadPermisos > 0 --EL PADRE TIENE PERMISOS
	BEGIN
	INSERT INTO PermisoMenu
	(
		IdMenu,
		IdRol,
		EstadoPermisoMenu,
		FechaCreacion
	)
	VALUES
	(
		@IdMenu,
		@IdRol,
		@EstadoPermisoMenu,
		GETDATE()
	)

	SELECT @IdPermisoMenu = SCOPE_IDENTITY();
	SET @IntCodigoError = 0
	END
	ELSE
	BEGIN
		SET @IntCodigoError = -1
		SELECT @IdPermisoMenu = 0;
	END	

END
ELSE --NO TIENE PADRE, ENTONCES SI SE PUEDE INSERTAR DIRECTAMENTE
BEGIN


INSERT INTO PermisoMenu
	(
		IdMenu,
		IdRol,
		EstadoPermisoMenu,
		FechaCreacion
	)
	VALUES
	(
		@IdMenu,
		@IdRol,
		@EstadoPermisoMenu,
		GETDATE()
	)

	SELECT @IdPermisoMenu = SCOPE_IDENTITY();
	SET @IntCodigoError = 0
END
GO
/****** Object:  StoredProcedure [dbo].[up_PermisoMenu_Eliminar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_PermisoMenu_Eliminar]
  @IdPermisoMenu int,
  @IntCodigoError INT OUTPUT
AS

DECLARE @CantidadPermisos INT
DECLARE @IdAplicacion INT
DECLARE @IdRol INT


SELECT @IdRol = IdRol FROM PermisoMenu WHERE IdPermisoMenu = @IdPermisoMenu

SELECT @CantidadPermisos = COUNT(*) FROM PermisoMenu WHERE IdMenu IN (
SELECT IdMenu FROM Menu
WHERE IdMenuPadre = (SELECT IdMenu FROM PermisoMenu WHERE IdPermisoMenu = @IdPermisoMenu)
) AND IdRol = @IdRol

IF @CantidadPermisos > 0 --TIENE HIJOS, NO SE PUEDE ELIMINAR. PRIMERO DEBE ELIMINAR LOS PERMISOS DE LOS HIJOS
BEGIN
	SET @IntCodigoError = -1
END
ELSE
BEGIN
	DELETE FROM PermisoMenu
	WHERE
	 IdPermisoMenu = @IdPermisoMenu
	 
	SET @IntCodigoError = 0 
END
GO
/****** Object:  StoredProcedure [dbo].[up_PermisoMenu_Buscar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_PermisoMenu_Buscar]
(
	@IdRol int
)
AS
	SET NOCOUNT ON

SELECT     PermisoMenu.IdPermisoMenu, PermisoMenu.IdMenu, PermisoMenu.IdRol, PermisoMenu.EstadoPermisoMenu, PermisoMenu.FechaCreacion, 
                      Menu.NombreFisicoMenu, Menu.DescripcionMenu, Menu.EtiquetaMenu, Menu.UrlMenu, Menu.IdMenuPadre, Menu.EstadoMenu, Rol.NombreRol
FROM         PermisoMenu INNER JOIN
                      Menu ON PermisoMenu.IdMenu = Menu.IdMenu INNER JOIN
                      Rol ON PermisoMenu.IdRol = Rol.IdRol
	WHERE  
		PermisoMenu.IdRol = @IdRol

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_Menu_Listar_Permisos_No_Asignados]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Menu_Listar_Permisos_No_Asignados]
@IdRol int
AS
BEGIN
/*
SELECT DISTINCT Objeto.IdObjeto, Objeto.NombreFisicoObjeto 
FROM Objeto
WHERE IdAplicacion = @IntIdAplicacion
AND IdObjeto NOT IN (SELECT IdObjeto FROM PermisoObjeto
						WHERE IdRol = @IntIdRol AND EstadoPermisoObjeto = 1) 
AND Objeto.EstadoObjeto = 1
*/

SELECT OB.IdMenu, 
(OB.NombreFisicoMenuPadre + CASE OB.NombreFisicoMenuPadre WHEN '' THEN '' ELSE ' - ' END + OB.NombreFisicoMenu) as NombreFisicoMenu,
ISNULL(OB.nivel, 0) --SE MUESTRAN PRIMERO LOS OBJ QUE NO TIENEN PADRE
FROM (		
	SELECT DISTINCT O.IdMenu, O.NombreFisicoMenu ,
		ISNULL((SELECT NombreFisicoMenu FROM Menu
		WHERE IdMenu = O.IdMenuPadre),'') as NombreFisicoMenuPadre,
		1 as nivel

	FROM Menu O
	WHERE IdMenu NOT IN (SELECT IdMenu FROM PermisoMenu
							WHERE IdRol = @IdRol AND EstadoPermisoMenu = 1) 
	AND O.EstadoMenu = 1

) OB
ORDER BY 3,2

END
GO
/****** Object:  StoredProcedure [dbo].[up_Menu_Eliminar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Menu_Eliminar]
(
 @IdMenu int,

@IntCodigoMensaje int OUTPUT
)
AS

DECLARE @CantidadPermisoObjeto int
DECLARE @CantidadObjetosHijos int

SELECT @CantidadPermisoObjeto = COUNT(*) FROM PermisoMenu
WHERE IdMenu = @IdMenu 

SELECT @CantidadObjetosHijos = COUNT(*) FROM Menu
WHERE IdMenuPadre = @IdMenu 

IF @CantidadPermisoObjeto = 0 AND @CantidadObjetosHijos = 0
BEGIN
	
	DELETE FROM Menu WHERE IdMenu = @IdMenu

END
ELSE
BEGIN
	IF @CantidadObjetosHijos > 0
	BEGIN
		SET @IntCodigoMensaje = -1--NO SE PUEDE ELIMINAR DEBIDO A QUE TIENE HIJOS
	END
	ELSE
	BEGIN
		SET @IntCodigoMensaje = -2--NO SE PUEDE ELIMINAR DEBIDO A QUE HAY PERMISOS ASOCIADOS
	END
END
GO
/****** Object:  StoredProcedure [dbo].[up_GenAgenValidador_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_GenAgenValidador_Obtener]
(
	@IdGenAgenteValidador int,
	@IdSolicitud int
)
AS
	SET NOCOUNT ON

SELECT     GenAgenValidador.IdGenAgenteValidador, 
GenAgenValidador.IdSolicitud, 
GenAgenValidador.FechaCreacion, 
GenAgenValidador.IdUsuarioCreacion, 
GenAgenValidador.IdEstadoGeneracion, 
GenAgenValidador.EstadoActivo, 
Estado.NombreEstado, 
Persona.IdPersona, Persona.Nombres, Persona.ApePaterno, Persona.ApeMaterno, Persona.DocumentoIdentidad
FROM         Persona INNER JOIN
          UsuarioSistema ON Persona.IdPersona = UsuarioSistema.IdPersona INNER JOIN
          GenAgenValidador INNER JOIN
          Estado ON GenAgenValidador.IdEstadoGeneracion = Estado.IdEstado ON UsuarioSistema.IdUsuario = GenAgenValidador.IdUsuarioCreacion
WHERE  
(@IdGenAgenteValidador =-1 or GenAgenValidador.IdGenAgenteValidador = @IdGenAgenteValidador) and
(@IdSolicitud = -1 or GenAgenValidador.IdSolicitud = @IdSolicitud)
GO
/****** Object:  StoredProcedure [dbo].[up_Puesto_Obtener]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Puesto_Obtener]
(
	@IdPuesto int
)
AS
	SET NOCOUNT ON

	SELECT 	IdPuesto,
		NombrePuesto,
		FechaCreacion,
		UsuarioCreacion,
		IdResponsable,
		Fl_Critico,
		Estado,
		IdAplicacion
	FROM   Puesto
	WHERE  
		IdPuesto = @IdPuesto
GO
/****** Object:  StoredProcedure [dbo].[up_Puesto_Listar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Puesto_Listar]
(
	@IdAplicacion int
)
AS
	SET NOCOUNT ON

	SELECT IdPuesto,
		NombrePuesto,
		FechaCreacion,
		UsuarioCreacion,
		IdResponsable,
		Fl_Critico,
		Estado,
		IdAplicacion
	FROM   Puesto
	WHERE  
		IdAplicacion = @IdAplicacion
GO
/****** Object:  StoredProcedure [dbo].[up_Rol_Listar_IdUsuario]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[up_Rol_Listar_IdUsuario]
(
@IdUsuario int
)
as
SELECT    Rol.IdRol, Rol.NombreRol, Rol.DescripcionRol, 
Rol.EstadoRol, PermisoUsuario.IdUsuario, PermisoUsuario.IdPermisoUsuario
FROM         Rol INNER JOIN
PermisoUsuario ON Rol.IdRol = PermisoUsuario.IdRol
WHERE     (PermisoUsuario.IdUsuario = @IdUsuario)
GO
/****** Object:  StoredProcedure [dbo].[up_ObtenerCabeceraEquipo]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_ObtenerCabeceraEquipo]
@idAgente varchar(25)
AS

select c.NombreAgencia, d.NombreSucursal, a.pcname, a.fsolicitud, a.userName,a.systemArquitecture,
a.[operatingSystem], a.[servicePack], a.[cpuInfo], a.[memoryRam], a.id
from xmls a inner join SolicitudAcceso b on b.NroSolicitud = a.idsolicitud
inner join Agencia c on b.IdAgencia = c.IdAgencia
inner join Sucursal d on b.IdSucursal = d.IdSucursal
WHERE a.idagente = @idAgente
GO
/****** Object:  StoredProcedure [dbo].[up_EscaneoAgenciaSucursal_Buscar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_EscaneoAgenciaSucursal_Buscar]
@FechaInicio date=null,
@FechaFin date=null,
@IdAgencia int,
@IdSucursal int,
@Estado varchar(25)
AS



select b.FechaRegistro, b.NroSolicitud, c.NombreAgencia, d.NombreSucursal, b.NumEquipos, dbo.FNNumEquipos(b.NroSolicitud) as 'NumEquiposEsc', dbo.FNEstado(b.NroSolicitud) as 'EstadoVal' from xmls a 
inner join SolicitudAcceso b on a.idsolicitud = b.NroSolicitud
inner join Agencia c on b.IdAgencia = c.IdAgencia
inner join Sucursal d on d.IdSucursal = b.IdSucursal

WHERE 
(@FechaInicio is null or b.FechaRegistro>= @FechaInicio)  and
(@FechaFin is null or b.FechaRegistro<= @FechaFin)  and
(@IdAgencia =-1 or c.IdAgencia = @IdAgencia) and
(@IdSucursal =-1 or d.IdSucursal = @IdSucursal) and
(@Estado ='--Todos--' or dbo.FNEstado(b.NroSolicitud) = @Estado) 
group by NroSolicitud, FechaRegistro, NombreAgencia, NombreSucursal, b.NumEquipos
order by b.FechaRegistro desc
GO
/****** Object:  Table [dbo].[DetalleEscaneoValidador]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleEscaneoValidador](
	[IdDetEscaneoValidacion] [int] IDENTITY(1,1) NOT NULL,
	[IdEscaneoAgenciaSuc] [int] NOT NULL,
	[IdDetAgenValidador] [int] NOT NULL,
	[FechaHoraEscaneo] [datetime] NOT NULL,
	[EstadoEscaneo] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[EstadoActivo] [bit] NOT NULL,
 CONSTRAINT [PK_DetalleEscaneoValidador] PRIMARY KEY CLUSTERED 
(
	[IdDetEscaneoValidacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DetalleEscaneoValidador] ON
INSERT [dbo].[DetalleEscaneoValidador] ([IdDetEscaneoValidacion], [IdEscaneoAgenciaSuc], [IdDetAgenValidador], [FechaHoraEscaneo], [EstadoEscaneo], [FechaCreacion], [EstadoActivo]) VALUES (1, 1, 1, CAST(0x0000A16B00853590 AS DateTime), 9, CAST(0x0000A16B012DE585 AS DateTime), 1)
INSERT [dbo].[DetalleEscaneoValidador] ([IdDetEscaneoValidacion], [IdEscaneoAgenciaSuc], [IdDetAgenValidador], [FechaHoraEscaneo], [EstadoEscaneo], [FechaCreacion], [EstadoActivo]) VALUES (2, 3, 2, CAST(0x0000A16B00B6A5D0 AS DateTime), 9, CAST(0x0000A16B012DF3C7 AS DateTime), 1)
INSERT [dbo].[DetalleEscaneoValidador] ([IdDetEscaneoValidacion], [IdEscaneoAgenciaSuc], [IdDetAgenValidador], [FechaHoraEscaneo], [EstadoEscaneo], [FechaCreacion], [EstadoActivo]) VALUES (3, 4, 3, CAST(0x0000A16B00D79B50 AS DateTime), 9, CAST(0x0000A16B012E00BE AS DateTime), 1)
INSERT [dbo].[DetalleEscaneoValidador] ([IdDetEscaneoValidacion], [IdEscaneoAgenciaSuc], [IdDetAgenValidador], [FechaHoraEscaneo], [EstadoEscaneo], [FechaCreacion], [EstadoActivo]) VALUES (4, 4, 4, CAST(0x0000A16B00F8D720 AS DateTime), 9, CAST(0x0000A16B012E1DE1 AS DateTime), 1)
INSERT [dbo].[DetalleEscaneoValidador] ([IdDetEscaneoValidacion], [IdEscaneoAgenciaSuc], [IdDetAgenValidador], [FechaHoraEscaneo], [EstadoEscaneo], [FechaCreacion], [EstadoActivo]) VALUES (5, 4, 5, CAST(0x0000A16B01263468 AS DateTime), 9, CAST(0x0000A16B012E2A74 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DetalleEscaneoValidador] OFF
/****** Object:  StoredProcedure [dbo].[ListarSolicitudReporte]    Script Date: 11/01/2013 22:53:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ListarSolicitudReporte]
@IdEstado int,
@IdSolicitante int,
@IdAutorizante int,
@IdEspecialista int,
@IdAgencia int,
@FechaIniSol datetime,
@FechaFinSol datetime,
@FechaIniCie datetime,
@FechaFinCie datetime

as
select SA.NroSolicitud, SA.FechaRegistro, SA.FechaCierre, es.NombreEstado, DATEDIFF(day, sa.fecharegistro, sa.fechacierre) as 'Atención', 
pesol.Nombres + ' ' + pesol.ApePaterno + ' ' + pesol.ApeMaterno as 'Solicitante',
PEAU.Nombres + ' ' + PEAU.ApePaterno + ' ' + PEAU.ApeMaterno as 'Autorizante',
ag.NombreAgencia, ub.Departamento, ub.Provincia, ub.Distrito ,
PEES.Nombres + ' ' + pees.ApePaterno + ' ' + PEES.ApeMaterno as 'Especialista',
MONTH(sa.FechaCierre) as 'Mes', YEAR(sa.FechaCierre) as 'Año'
from SolicitudAcceso SA
inner join Estado ES on sa.IdEstado = es.IdEstado
inner join Autorizante AU on sa.IdAutorizante = au.IdAutorizante 
inner join Persona PEAU on au.IdPersona = PEAU.IdPersona
inner join Persona PESOL on sa.IdSolicitante = PESOL.IdPersona
inner join Agencia AG on sa.IdAgencia = ag.IdAgencia
inner join Sucursal SU on sa.IdSucursal = su.IdSucursal
inner join Ubigeo UB on su.CodUbigeo = ub.CodUbigeo
left join Persona PEES on sa.IdEspecialista = pees.IdPersona
where --SA.FechaCierre is not null 
(isnull(@IdEstado,'') = '' or isnull(es.IdEstado,'') = @IdEstado) and
(isnull(@IdSolicitante,'') = '' or isnull(PESOL.IdPersona,'') = @IdSolicitante) and
(isnull(@IdAutorizante,'') = '' or isnull(AU.IdAutorizante,'') = @IdAutorizante) and
(isnull(@IdEspecialista,'') = '' or isnull(SA.IdEspecialista,'') = @IdEspecialista) and
(isnull(@IdAgencia,'') = '' or isnull(AG.IdAgencia,'') = @IdAgencia) and
((isnull(@FechaIniSol,'') = '' or isnull(@FechaFinSol,'') = '') or isnull(sa.FechaRegistro,'') between @FechaIniSol and @FechaFinSol) and
((isnull(@FechaIniCie,'') = '' or isnull(@FechaFinCie,'') = '') or isnull(sa.FechaCierre,'') between @FechaIniCie and @FechaFinCie)
GO
/****** Object:  Table [dbo].[Aprovisionamiento]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aprovisionamiento](
	[IdAprovisionamiento] [int] IDENTITY(1,1) NOT NULL,
	[NumeroCertificado] [varchar](50) NULL,
	[IdSolicitud] [int] NOT NULL,
	[FechaAprovisionamiento] [date] NOT NULL,
	[EstadoActivo] [bit] NOT NULL,
 CONSTRAINT [PK_Aprovisionamiento] PRIMARY KEY CLUSTERED 
(
	[IdAprovisionamiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Aprovisionamiento] ON
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (2, N'01020340590', 25, CAST(0xBB360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (3, N'01020340590', 9, CAST(0xBB360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (4, N'01020340590', 25, CAST(0xBB360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (5, N'01020340590', 24, CAST(0xBB360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (6, N'01020340590', 25, CAST(0xBB360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (7, N'01020340590', 25, CAST(0xBB360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (8, N'01020340590', 8, CAST(0xBB360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (9, N'01020340590', 27, CAST(0xBD360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (10, N'01020340590', 5, CAST(0xBE360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (11, N'01020340590', 27, CAST(0xC3360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (12, N'01020340590', 27, CAST(0xC3360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (13, N'01020340590', 27, CAST(0xC3360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (14, N'01020340590', 27, CAST(0xC3360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (15, N'01020340590', 22, CAST(0xC6360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (16, N'01020340590', 29, CAST(0xE5360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (17, N'01020340590', 31, CAST(0xE6360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (18, N'01020340590', 31, CAST(0xE6360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (19, N'01020340590', 31, CAST(0xE6360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (20, N'01020340590', 34, CAST(0xE7360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (21, N'01020340590', 33, CAST(0xE7360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (22, N'01020340590', 33, CAST(0xE7360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (23, N'01020340590', 33, CAST(0xE7360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (24, N'01020340590', 33, CAST(0xE7360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (25, N'01020340590', 33, CAST(0xF7360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (26, N'01020340590', 34, CAST(0xF7360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (27, N'01020340590', 37, CAST(0xF7360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (28, N'01020340590', 31, CAST(0xF7360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (29, N'01020340590', 29, CAST(0xF7360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (30, N'01020340590', 27, CAST(0xF7360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (31, N'01020340590', 36, CAST(0xF7360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (32, N'01020340590', 40, CAST(0xF8360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (33, N'01020340590', 41, CAST(0xF8360B00 AS Date), 1)
INSERT [dbo].[Aprovisionamiento] ([IdAprovisionamiento], [NumeroCertificado], [IdSolicitud], [FechaAprovisionamiento], [EstadoActivo]) VALUES (34, N'01020340590', 39, CAST(0xF9360B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[Aprovisionamiento] OFF
/****** Object:  Table [dbo].[DetalleSolicitudAcceso]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetalleSolicitudAcceso](
	[IdDetalleSolicitudAcceso] [int] IDENTITY(1,1) NOT NULL,
	[IdSolicitudAcceso] [int] NOT NULL,
	[IdPersona] [int] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[EstadoActivo] [bit] NULL,
	[IdEstado] [int] NOT NULL,
	[ObservacionValidacion] [varchar](200) NULL,
 CONSTRAINT [PK_DetalleSolicitudAcceso] PRIMARY KEY CLUSTERED 
(
	[IdDetalleSolicitudAcceso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DetalleSolicitudAcceso] ON
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (1, 9, 1, CAST(0x0000A14B0111A62C AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (6, 9, 1, CAST(0x0000A14B0111A62C AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (13, 20, 3, CAST(0x0000A14C00C8CD31 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (18, 21, 2, CAST(0x0000A14C0165A4B9 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (19, 22, 2, CAST(0x0000A14C01666CD2 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (20, 23, 2, CAST(0x0000A14C01669728 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (21, 5, 1, CAST(0x0000A14D013B40AB AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (22, 24, 1, CAST(0x0000A14D0143BEC0 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (23, 24, 2, CAST(0x0000A14D0143BED8 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (24, 24, 2, CAST(0x0000A14D0143BEE6 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (25, 25, 2, CAST(0x0000A14F017E1B3B AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (26, 26, 3, CAST(0x0000A14F017EF313 AS DateTime), 1, 1, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (27, 8, 2, CAST(0x0000A15901474A31 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (28, 27, 2, CAST(0x0000A162014A2EAE AS DateTime), 1, 3, N'El DNI 42782511 y la aplicacion APLICACION 1 estan registrados como observados, por favor verificar.')
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (29, 27, 1, CAST(0x0000A162014A2ECB AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (30, 28, 1, CAST(0x0000A18A01387DBF AS DateTime), 1, 5, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (31, 28, 2, CAST(0x0000A18A01387DC5 AS DateTime), 1, 5, N'El DNI 42782511 y la aplicacion ARGOS estan registrados como observados, por favor verificar.')
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (32, 29, 4, CAST(0x0000A18A013C34F2 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (33, 29, 2, CAST(0x0000A18A013C34F5 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (34, 30, 4, CAST(0x0000A18A01568AF0 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (35, 30, 1, CAST(0x0000A18A01568AF4 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (36, 30, 2, CAST(0x0000A18A01568AF7 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (37, 31, 2, CAST(0x0000A18B011010D7 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (38, 31, 4, CAST(0x0000A18B011010D9 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (39, 32, 5, CAST(0x0000A18C00060A47 AS DateTime), 1, 5, N'El DNI 55555555 y la aplicacion DELFOS estan registrados como observados, por favor verificar.')
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (40, 33, 1, CAST(0x0000A18C000D5E4F AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (41, 34, 1, CAST(0x0000A18C0010EF8D AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (42, 34, 2, CAST(0x0000A18C0010EF8E AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (43, 35, 1, CAST(0x0000A18C00369FCA AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (44, 36, 1, CAST(0x0000A18C00372D8F AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (45, 37, 4, CAST(0x0000A18C0037AA78 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (46, 37, 2, CAST(0x0000A18C0037AA7E AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (47, 38, 4, CAST(0x0000A19C013A71F5 AS DateTime), 1, 1, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (48, 39, 4, CAST(0x0000A19C014C9345 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (49, 40, 4, CAST(0x0000A19C01555F90 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (50, 41, 4, CAST(0x0000A19D01862D98 AS DateTime), 1, 3, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (51, 42, 2, CAST(0x0000A239013D30D0 AS DateTime), 1, 1, NULL)
INSERT [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso], [IdSolicitudAcceso], [IdPersona], [FechaRegistro], [EstadoActivo], [IdEstado], [ObservacionValidacion]) VALUES (52, 43, 6, CAST(0x0000A24E00B6A255 AS DateTime), 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[DetalleSolicitudAcceso] OFF
/****** Object:  StoredProcedure [dbo].[up_SolicitudAcceso_Actualizar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_SolicitudAcceso_Actualizar]
(
	@IdSolicitudAcceso int,
	@IdTipoAcceso int,
	@IdAgencia int,
	@IdSucursal int,
	@NumEquipos int
)
AS
	SET NOCOUNT ON
	
	UPDATE SolicitudAcceso
	SET
		IdTipoAcceso = @IdTipoAcceso,
		IdAgencia = @IdAgencia,
		IdSucursal = @IdSucursal,
		NumEquipos = @NumEquipos
	WHERE 
		IdSolicitudAcceso = @IdSolicitudAcceso
GO
/****** Object:  StoredProcedure [dbo].[up_Solicitud_Buscar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Solicitud_Buscar] 
(
	@NroSolicitud varchar(10),
	@IdAgencia int,
	@IdEstado int,
	@IdTipoAcceso int,
	@IdSucursal int,
	@ApePaternoSolicitante varchar(100),
	@ApePaternoAutorizante varchar(100),
	@FechaRegistro date= NULL	
)
AS
SELECT SA.IdSolicitudAcceso, SA.NroSolicitud, SA.FechaRegistro, SA.UsuarioCreacion, SA.IdTipoAcceso, SA.IdSolicitante, SA.IdAutorizante, 
      SA.FechaAsignacion, SA.IdEstado, SA.EstadoActivo, SA.IdAgencia, SA.IdSucursal, AU.FechaIngreso, AU.FechaCese, AU.CodAutorizador, 
      AU.IdPersona AS IdPersonaAut, PEAU.Nombres AS NombresAut, PEAU.ApePaterno AS ApePaternoAut, PEAU.ApeMaterno AS ApeMaternoAut, 
      PEAU.DocumentoIdentidad AS DocumentIdentAut, PEAU.Correo AS CorreoAut, Estado.NombreEstado, AG.NombreAgencia, SA.FechaValidacion, 
      SU.NombreSucursal, PE.Nombres, PE.ApePaterno, PE.ApeMaterno, TA.Nombre as NombreTipoAcceso, SA.NumEquipos
FROM  Agencia AS AG INNER JOIN
      SolicitudAcceso AS SA ON AG.IdAgencia = SA.IdAgencia INNER JOIN
      Sucursal AS SU ON SA.IdSucursal = SU.IdSucursal INNER JOIN
      TipoAcceso AS TA ON SA.IdTipoAcceso = TA.IdTipoAcceso INNER JOIN
      Estado ON SA.IdEstado = Estado.IdEstado INNER JOIN
      Persona AS PE ON SA.IdSolicitante = PE.IdPersona left outer JOIN
      Persona AS PEAU INNER JOIN
      Autorizante AS AU ON PEAU.IdPersona = AU.IdPersona ON SA.IdAutorizante = AU.IdAutorizante
WHERE (SA.NroSolicitud like @NroSolicitud) AND
	(PE.Nombres + ' ' + PE.ApePaterno + ' ' + PE.ApeMaterno like @ApePaternoSolicitante) AND
	(isnull((PEAU.Nombres + ' ' + PEAU.ApePaterno + ' ' + PEAU.ApeMaterno),'') like @ApePaternoAutorizante) AND
	(@IdAgencia=-1 OR SA.IdAgencia = @IdAgencia) AND
	(@IdEstado=-1 OR SA.IdEstado = @IdEstado) AND
	(@IdTipoAcceso=-1 OR SA.IdTipoAcceso = @IdTipoAcceso) AND
	(@IdSucursal=-1 OR SA.IdSucursal = @IdSucursal) AND
	(@FechaRegistro IS NULL  OR (SA.FechaRegistro BETWEEN @FechaRegistro AND @FechaRegistro)) AND 
	SA.EstadoActivo = 1
order by SA.FechaRegistro desc, SA.NroSolicitud desc
GO
/****** Object:  StoredProcedure [dbo].[up_SolicitudAcceso_Obtener]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_SolicitudAcceso_Obtener]
(
	@IdSolicitudAcceso int
)
AS
	SET NOCOUNT ON

	SELECT SA.IdSolicitudAcceso, SA.NroSolicitud, SA.FechaRegistro, SA.UsuarioCreacion, SA.IdTipoAcceso, SA.IdSolicitante, SA.IdAutorizante, 
      SA.FechaAsignacion, SA.IdEstado, SA.EstadoActivo, SA.IdAgencia, SA.IdSucursal, AU.FechaIngreso, AU.FechaCese, AU.CodAutorizador, 
      AU.IdPersona AS IdPersonaAut, PEAU.Nombres AS NombresAut, PEAU.ApePaterno AS ApePaternoAut, PEAU.ApeMaterno AS ApeMaternoAut, 
      PEAU.DocumentoIdentidad AS DocumentIdentAut, PEAU.Correo AS CorreoAut, Estado.NombreEstado, AG.NombreAgencia, SA.FechaValidacion, 
      SU.NombreSucursal, PE.Nombres, PE.ApePaterno, PE.ApeMaterno, TA.Nombre as NombreTipoAcceso, SA.NumEquipos
FROM  Agencia AS AG INNER JOIN
      SolicitudAcceso AS SA ON AG.IdAgencia = SA.IdAgencia INNER JOIN
      Sucursal AS SU ON SA.IdSucursal = SU.IdSucursal INNER JOIN
      TipoAcceso AS TA ON SA.IdTipoAcceso = TA.IdTipoAcceso INNER JOIN
      Estado ON SA.IdEstado = Estado.IdEstado INNER JOIN
      Persona AS PE ON SA.IdSolicitante = PE.IdPersona LEFT OUTER JOIN
      Persona AS PEAU INNER JOIN
      Autorizante AS AU ON PEAU.IdPersona = AU.IdPersona ON SA.IdAutorizante = AU.IdAutorizante

	WHERE  
		SA.IdSolicitudAcceso = @IdSolicitudAcceso
GO
/****** Object:  StoredProcedure [dbo].[up_SolicitudAcceso_Insertar]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_SolicitudAcceso_Insertar]
(
	@IdSolicitudAcceso int = NULL OUTPUT,
	@NroSolicitud char(10),
	@UsuarioCreacion char(10),
	@IdTipoAcceso int,
	@IdSolicitante int,
	@IdEstado int,
	@IdAgencia int,
	@IdSucursal int,
	@NumEquipos int
)
AS
	SET NOCOUNT ON

	INSERT INTO SolicitudAcceso
	(
		NroSolicitud,
		FechaRegistro,
		UsuarioCreacion,
		IdTipoAcceso,
		IdSolicitante,
		IdEstado,
		EstadoActivo,
		IdAgencia,
		IdSucursal,
		NumEquipos
	)
	VALUES
	(
		@NroSolicitud,
		GETDATE(),
		@UsuarioCreacion,
		@IdTipoAcceso,
		@IdSolicitante,
		@IdEstado,
		1,
		@IdAgencia,
		@IdSucursal,
		@NumEquipos
	)

	SELECT @IdSolicitudAcceso = SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[up_SolicitudAcceso_Anular]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_SolicitudAcceso_Anular]
(
	@IdSolicitudAcceso int
)
AS
	SET NOCOUNT ON
	
	UPDATE SolicitudAcceso
	SET
		EstadoActivo = 0
	WHERE 
		IdSolicitudAcceso = @IdSolicitudAcceso
GO
/****** Object:  StoredProcedure [dbo].[up_SolicitudAcceso_ActualizarNumSol]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_SolicitudAcceso_ActualizarNumSol]
(
	@IdSolicitudAcceso int,
	@NroSolicitud char(10)
)
AS
	SET NOCOUNT ON
	
	UPDATE SolicitudAcceso
	SET
		NroSolicitud = @NroSolicitud
	WHERE 
		IdSolicitudAcceso = @IdSolicitudAcceso
GO
/****** Object:  StoredProcedure [dbo].[up_SolicitudAcceso_Actualizar_Validarok]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_SolicitudAcceso_Actualizar_Validarok]
(
	@IdSolicitudAcceso int,
	@IdAutorizante int
	
)
AS
	SET NOCOUNT ON
	UPDATE DetalleSolicitudAcceso
	SET IdEstado = 3
	WHERE 
		IdSolicitudAcceso = @IdSolicitudAcceso AND IdEstado<>1;
	
	UPDATE SolicitudAcceso
	SET IdEstado = 2,
	FechaValidacion = getdate(),
	IdAutorizante = @IdAutorizante
	WHERE 
		IdSolicitudAcceso = @IdSolicitudAcceso;
GO
/****** Object:  StoredProcedure [dbo].[up_SolicitudAcceso_Actualizar_ValidarNok]    Script Date: 11/01/2013 22:53:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_SolicitudAcceso_Actualizar_ValidarNok]
(
	@IdSolicitudAcceso int,
	@IdAutorizante int
	
)
AS
	SET NOCOUNT ON
	UPDATE DetalleSolicitudAcceso
	SET IdEstado = 5
	WHERE 
		IdSolicitudAcceso = @IdSolicitudAcceso
		AND IdEstado<>1;
	
	UPDATE SolicitudAcceso
	SET IdEstado = 4,
	FechaValidacion = getdate(),
	IdAutorizante = @IdAutorizante
	WHERE 
		IdSolicitudAcceso = @IdSolicitudAcceso;
GO
/****** Object:  Table [dbo].[DetalleSolicAplicaPuesto]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleSolicAplicaPuesto](
	[IdDetSolicAplicaPuesto] [int] IDENTITY(1,1) NOT NULL,
	[IdDetalleSolicitudAcceso] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[IdAplicacion] [int] NOT NULL,
	[IdPuesto] [int] NOT NULL,
	[EstadoActivo] [bit] NOT NULL,
 CONSTRAINT [PK_DetalleSolicAplicaPuesto] PRIMARY KEY CLUSTERED 
(
	[IdDetSolicAplicaPuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DetalleSolicAplicaPuesto] ON
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (4, 1, CAST(0x0000A14B01583618 AS DateTime), 3, 2, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (5, 1, CAST(0x0000A14B01583ABA AS DateTime), 3, 4, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (6, 1, CAST(0x0000A14B01583F4E AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (7, 1, CAST(0x0000A14B0162A62C AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (19, 13, CAST(0x0000A14C00C8CD3B AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (20, 13, CAST(0x0000A14C00C8CD3F AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (26, 13, CAST(0x0000A14C0161637C AS DateTime), 3, 6, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (28, 18, CAST(0x0000A14C0165A4BE AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (29, 18, CAST(0x0000A14C0165A4C2 AS DateTime), 3, 6, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (30, 19, CAST(0x0000A14C01666CD7 AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (31, 20, CAST(0x0000A14C0166972D AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (32, 21, CAST(0x0000A14D013B40B4 AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (33, 21, CAST(0x0000A14D013B40BD AS DateTime), 3, 4, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (34, 21, CAST(0x0000A14D013B40C2 AS DateTime), 3, 6, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (35, 22, CAST(0x0000A14D0143BEC5 AS DateTime), 3, 2, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (37, 22, CAST(0x0000A14D0143BED3 AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (38, 23, CAST(0x0000A14D0143BEE1 AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (39, 24, CAST(0x0000A14D0143BEEA AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (40, 25, CAST(0x0000A14F017E1B49 AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (41, 25, CAST(0x0000A14F017E1B4E AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (42, 25, CAST(0x0000A14F017E1B52 AS DateTime), 3, 6, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (43, 26, CAST(0x0000A14F017EF31D AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (44, 26, CAST(0x0000A14F017EF321 AS DateTime), 3, 6, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (45, 26, CAST(0x0000A14F017EF326 AS DateTime), 3, 8, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (46, 26, CAST(0x0000A14F017EF32F AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (47, 27, CAST(0x0000A15901474A4D AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (48, 28, CAST(0x0000A162014A2EB3 AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (49, 28, CAST(0x0000A162014A2EB8 AS DateTime), 3, 4, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (50, 28, CAST(0x0000A162014A2EBC AS DateTime), 3, 6, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (51, 28, CAST(0x0000A162014A2EC1 AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (52, 29, CAST(0x0000A162014A2ECF AS DateTime), 3, 2, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (53, 29, CAST(0x0000A162014A2ED4 AS DateTime), 3, 6, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (54, 29, CAST(0x0000A162014A2ED9 AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (55, 30, CAST(0x0000A18A01387DC1 AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (56, 30, CAST(0x0000A18A01387DC3 AS DateTime), 3, 8, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (57, 31, CAST(0x0000A18A01387DC7 AS DateTime), 3, 4, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (58, 32, CAST(0x0000A18A013C34F4 AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (59, 33, CAST(0x0000A18A013C34F7 AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (60, 34, CAST(0x0000A18A01568AF2 AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (61, 35, CAST(0x0000A18A01568AF6 AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (62, 36, CAST(0x0000A18A01568AF9 AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (63, 37, CAST(0x0000A18B011010D8 AS DateTime), 3, 2, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (64, 37, CAST(0x0000A18B011010D9 AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (65, 38, CAST(0x0000A18B011010D9 AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (66, 39, CAST(0x0000A18C00060A4B AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (67, 40, CAST(0x0000A18C000D5E4F AS DateTime), 3, 6, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (68, 41, CAST(0x0000A18C0010EF8D AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (69, 42, CAST(0x0000A18C0010EF8E AS DateTime), 2, 7, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (70, 43, CAST(0x0000A18C00369FCA AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (71, 44, CAST(0x0000A18C00372D8F AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (72, 45, CAST(0x0000A18C0037AA7B AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (73, 46, CAST(0x0000A18C0037AA81 AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (74, 47, CAST(0x0000A19C013A71FB AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (75, 48, CAST(0x0000A19C014C934A AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (76, 49, CAST(0x0000A19C01555F95 AS DateTime), 2, 5, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (77, 50, CAST(0x0000A19D01862D9C AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (78, 51, CAST(0x0000A239013D30D5 AS DateTime), 2, 3, 1)
INSERT [dbo].[DetalleSolicAplicaPuesto] ([IdDetSolicAplicaPuesto], [IdDetalleSolicitudAcceso], [FechaRegistro], [IdAplicacion], [IdPuesto], [EstadoActivo]) VALUES (79, 52, CAST(0x0000A24E00B6A25A AS DateTime), 2, 3, 1)
SET IDENTITY_INSERT [dbo].[DetalleSolicAplicaPuesto] OFF
/****** Object:  Table [dbo].[DetalleAprovisionamiento]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetalleAprovisionamiento](
	[IdDetAprovisionamiento] [int] IDENTITY(1,1) NOT NULL,
	[IdAprovisionamiento] [int] NOT NULL,
	[IdPersona] [int] NOT NULL,
	[IdAplicacion] [int] NOT NULL,
	[CuentaUsuario] [varchar](50) NOT NULL,
	[ClaveGenerada] [varchar](50) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[IdEstado] [int] NOT NULL,
	[EstadoActivo] [bit] NOT NULL,
 CONSTRAINT [PK_DetalleAprovisionamiento] PRIMARY KEY CLUSTERED 
(
	[IdDetAprovisionamiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DetalleAprovisionamiento] ON
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (1, 2, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (2, 2, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (3, 2, 2, 3, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (4, 3, 1, 3, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (5, 3, 1, 3, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (6, 3, 1, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (7, 3, 1, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (8, 4, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (9, 4, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (10, 4, 2, 3, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (11, 5, 1, 3, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (12, 5, 1, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (13, 5, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (14, 5, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (15, 6, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (16, 6, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (17, 6, 2, 3, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (18, 7, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (19, 7, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (20, 7, 2, 3, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (21, 8, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBB360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (22, 9, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBD360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (23, 9, 2, 3, N'Cuenta01', N'Clave01', CAST(0xBD360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (24, 9, 2, 3, N'Cuenta01', N'Clave01', CAST(0xBD360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (25, 9, 2, 2, N'Cuenta01', N'Clave01', CAST(0xBD360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (26, 9, 1, 3, N'Cuenta01', N'Clave01', CAST(0xBD360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (27, 9, 1, 3, N'Cuenta01', N'Clave01', CAST(0xBD360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (28, 9, 1, 2, N'Cuenta01', N'Clave01', CAST(0xBD360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (29, 10, 1, 2, N'Cuenta01', N'Clave01', CAST(0xBE360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (30, 10, 1, 3, N'Cuenta01', N'Clave01', CAST(0xBE360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (31, 10, 1, 3, N'Cuenta01', N'Clave01', CAST(0xBE360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (32, 11, 2, 2, N'AG00000002', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (33, 11, 2, 3, N'JuanPerezCruz', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (34, 11, 2, 3, N'JuanPerezCruz', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (35, 11, 2, 2, N'AG00000003', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (36, 11, 1, 3, N'pedro dominguezbruno', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (37, 11, 1, 3, N'pedro dominguezbruno', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (38, 11, 1, 2, N'AG00000004', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (39, 12, 2, 2, N'AG00000005', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (40, 12, 2, 3, N'JuanPerezCruz', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (41, 12, 2, 3, N'JuanPerezCruz', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (42, 12, 2, 2, N'AG00000006', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (43, 12, 1, 3, N'pedro dominguezbruno', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (44, 12, 1, 3, N'pedro dominguezbruno', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (45, 12, 1, 2, N'AG00000007', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (46, 13, 2, 2, N'AG00000008', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (47, 13, 2, 3, N'JPerezC', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (48, 13, 2, 3, N'JPerezC', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (49, 13, 2, 2, N'AG00000009', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (50, 13, 1, 3, N'pdominguezb', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (51, 13, 1, 3, N'pdominguezb', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (52, 13, 1, 2, N'AG00000010', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (53, 14, 2, 2, N'AG00000011', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (54, 14, 2, 3, N'JPEREZC', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (55, 14, 2, 3, N'JPEREZC', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (56, 14, 2, 2, N'AG00000012', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (57, 14, 1, 3, N'PDOMINGUEZB', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (58, 14, 1, 3, N'PDOMINGUEZB', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (59, 14, 1, 2, N'AG00000013', N'Clave01', CAST(0xC3360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (60, 15, 2, 2, N'AG00000014', N'AG00000014', CAST(0xC6360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (61, 16, 4, 2, N'AG00000015', N'AG00000015', CAST(0xE5360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (62, 16, 2, 2, N'AG00000016', N'AG00000016', CAST(0xE5360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (63, 17, 2, 3, N'JPEREZC', N'JPEREZC', CAST(0xE6360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (64, 17, 2, 2, N'AG00000017', N'AG00000017', CAST(0xE6360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (65, 17, 4, 2, N'AG00000018', N'AG00000018', CAST(0xE6360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (66, 18, 2, 3, N'JPEREZC', N'JPEREZC', CAST(0xE6360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (67, 18, 2, 2, N'AG00000019', N'AG00000019', CAST(0xE6360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (68, 18, 4, 2, N'AG00000020', N'AG00000020', CAST(0xE6360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (69, 19, 2, 3, N'JPEREZC', N'JPEREZC', CAST(0xE6360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (70, 19, 2, 2, N'AG00000021', N'AG00000021', CAST(0xE6360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (71, 19, 4, 2, N'AG00000022', N'AG00000022', CAST(0xE6360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (72, 20, 1, 2, N'AG00000023', N'AG00000023', CAST(0xE7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (73, 20, 2, 2, N'AG00000024', N'AG00000024', CAST(0xE7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (74, 21, 1, 3, N'PDOMINGUEZB', N'PDOMINGUEZB', CAST(0xE7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (75, 22, 1, 3, N'PDOMINGUEZB', N'PDOMINGUEZB', CAST(0xE7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (76, 23, 1, 3, N'PDOMINGUEZB', N'PDOMINGUEZB', CAST(0xE7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (77, 24, 1, 3, N'PDOMINGUEZB', N'PDOMINGUEZB', CAST(0xE7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (78, 25, 1, 3, N'PDOMINGUEZB', N'PDOMINGUEZB', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (79, 26, 1, 2, N'AG00000025', N'AG00000025', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (80, 26, 2, 2, N'AG00000026', N'AG00000026', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (81, 27, 4, 2, N'AG00000027', N'AG00000027', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (82, 27, 2, 2, N'AG00000028', N'AG00000028', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (83, 28, 2, 3, N'JPEREZC', N'JPEREZC', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (84, 28, 2, 2, N'AG00000029', N'AG00000029', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (85, 28, 4, 2, N'AG00000030', N'AG00000030', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (86, 29, 4, 2, N'AG00000031', N'AG00000031', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (87, 29, 2, 2, N'AG00000032', N'AG00000032', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (88, 30, 2, 2, N'AG00000033', N'AG00000033', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (89, 30, 2, 3, N'JPEREZC', N'JPEREZC', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (90, 30, 2, 3, N'JPEREZC', N'JPEREZC', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (91, 30, 2, 2, N'AG00000034', N'AG00000034', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (92, 30, 1, 3, N'PDOMINGUEZB', N'PDOMINGUEZB', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (93, 30, 1, 3, N'PDOMINGUEZB', N'PDOMINGUEZB', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (94, 30, 1, 2, N'AG00000035', N'AG00000035', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (95, 31, 1, 2, N'AG00000036', N'AG00000036', CAST(0xF7360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (96, 32, 4, 2, N'AG00000037', N'AG00000037', CAST(0xF8360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (97, 33, 4, 2, N'AG00000038', N'AG00000038', CAST(0xF8360B00 AS Date), 6, 1)
INSERT [dbo].[DetalleAprovisionamiento] ([IdDetAprovisionamiento], [IdAprovisionamiento], [IdPersona], [IdAplicacion], [CuentaUsuario], [ClaveGenerada], [FechaCreacion], [IdEstado], [EstadoActivo]) VALUES (98, 34, 4, 2, N'AG00000039', N'AG00000039', CAST(0xF9360B00 AS Date), 6, 1)
SET IDENTITY_INSERT [dbo].[DetalleAprovisionamiento] OFF
/****** Object:  Table [dbo].[DatosEscaneoValidador]    Script Date: 11/01/2013 22:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosEscaneoValidador](
	[IdDatoEscaneoValidador] [int] IDENTITY(1,1) NOT NULL,
	[IdDetEscaneoValidacion] [int] NOT NULL,
	[ArchivoEscaneado] [xml] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[EstadoActivo] [bit] NOT NULL,
 CONSTRAINT [PK_DatosEscaneoValidador] PRIMARY KEY CLUSTERED 
(
	[IdDatoEscaneoValidador] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[up_Aprovisionamiento_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Aprovisionamiento_Obtener]
@IdAprovisionamiento int
AS
SELECT   
AP.IdAprovisionamiento, 
AP.NumeroCertificado, 
AP.IdSolicitud, 
AP.FechaAprovisionamiento, 
AP.EstadoActivo, 
SA.NroSolicitud, 
SA.FechaRegistro, 
SA.UsuarioCreacion
FROM         Aprovisionamiento AS AP INNER JOIN
                      SolicitudAcceso AS SA ON AP.IdSolicitud = SA.IdSolicitudAcceso
WHERE     (AP.IdAprovisionamiento = @IdAprovisionamiento)
GO
/****** Object:  StoredProcedure [dbo].[up_Aprovisionamiento_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_Aprovisionamiento_Insertar]
(
	@IdAprovisionamiento int = NULL OUTPUT,
	@NumeroCertificado varchar(50) = NULL,
	@IdSolicitud int	
	
)
AS
	SET NOCOUNT ON

	INSERT INTO Aprovisionamiento
	(
		NumeroCertificado,
		IdSolicitud,
		FechaAprovisionamiento,
		EstadoActivo
	)
	VALUES
	(
		@NumeroCertificado,
		@IdSolicitud,
		GETDATE(),
		1
	)

	SELECT @IdAprovisionamiento = SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleEscaneoValidador_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleEscaneoValidador_Obtener]
@IdDetEscaneoValidacion int
as

SELECT  DetalleEscaneoValidador.IdDetEscaneoValidacion, DetalleEscaneoValidador.IdEscaneoAgenciaSuc, 
                      DetalleEscaneoValidador.IdDetAgenValidador, DetalleEscaneoValidador.FechaHoraEscaneo, DetalleEscaneoValidador.EstadoEscaneo, 
                      DetalleEscaneoValidador.FechaCreacion, DetalleEscaneoValidador.EstadoActivo, DetalleGenAgenValidador.CodGenerado, 
                      DetalleGenAgenValidador.Activador, Estado.NombreEstado
FROM         DetalleEscaneoValidador INNER JOIN
                      DetalleGenAgenValidador ON DetalleEscaneoValidador.IdDetAgenValidador = DetalleGenAgenValidador.IdDetAgenValidador INNER JOIN
                      Estado ON DetalleEscaneoValidador.EstadoEscaneo = Estado.IdEstado
WHERE     (DetalleEscaneoValidador.IdDetEscaneoValidacion = @IdDetEscaneoValidacion)
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleEscaneoValidador_Listar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleEscaneoValidador_Listar]
@IdEscaneoAgenciaSuc int
as

SELECT  DetalleEscaneoValidador.IdDetEscaneoValidacion, DetalleEscaneoValidador.IdEscaneoAgenciaSuc, 
                      DetalleEscaneoValidador.IdDetAgenValidador, DetalleEscaneoValidador.FechaHoraEscaneo, DetalleEscaneoValidador.EstadoEscaneo, 
                      DetalleEscaneoValidador.FechaCreacion, DetalleEscaneoValidador.EstadoActivo, DetalleGenAgenValidador.CodGenerado, 
                      DetalleGenAgenValidador.Activador, Estado.NombreEstado
FROM         DetalleEscaneoValidador INNER JOIN
                      DetalleGenAgenValidador ON DetalleEscaneoValidador.IdDetAgenValidador = DetalleGenAgenValidador.IdDetAgenValidador INNER JOIN
                      Estado ON DetalleEscaneoValidador.EstadoEscaneo = Estado.IdEstado
WHERE     (DetalleEscaneoValidador.IdEscaneoAgenciaSuc = @IdEscaneoAgenciaSuc)
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleSolicitudAcceso_Actualizar_Estado_Val]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleSolicitudAcceso_Actualizar_Estado_Val]
(
	@IdDetalleSolicitudAcceso int,
	@IdEstado int,
	@ObservacionValidacion varchar(200)
	
)
AS
	SET NOCOUNT ON
	
	UPDATE DetalleSolicitudAcceso
	SET IdEstado = @IdEstado,
	ObservacionValidacion = @ObservacionValidacion
	WHERE 
		IdDetalleSolicitudAcceso = @IdDetalleSolicitudAcceso
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleSolicitudAcceso_Actualizar_Estado]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleSolicitudAcceso_Actualizar_Estado]
(
	@IdDetalleSolicitudAcceso int,
	@IdEstado int
	
)
AS
	SET NOCOUNT ON
	
	UPDATE DetalleSolicitudAcceso
	SET IdEstado = @IdEstado
	WHERE 
		IdDetalleSolicitudAcceso = @IdDetalleSolicitudAcceso
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleSolicitudAcceso_Actualizar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleSolicitudAcceso_Actualizar]
(
	@IdDetalleSolicitudAcceso int,
	@IdSolicitudAcceso int,
	@IdPersona int
)
AS
	SET NOCOUNT ON
	
	UPDATE DetalleSolicitudAcceso
	SET
		IdSolicitudAcceso = @IdSolicitudAcceso,
		IdPersona = @IdPersona
	WHERE 
		IdDetalleSolicitudAcceso = @IdDetalleSolicitudAcceso
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleSolicitudAcceso_Obtener]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleSolicitudAcceso_Obtener]
(
	@IdDetalleSolicitudAcceso int
	
)
AS
	SET NOCOUNT ON
	
	SELECT DS.IdDetalleSolicitudAcceso, 
	DS.IdSolicitudAcceso, 
	DS.IdPersona, 
	DS.FechaRegistro, 
	DS.EstadoActivo, 
	P.Nombres, 
	P.ApePaterno, 
    P.ApeMaterno, 
    P.DocumentoIdentidad
FROM  DetalleSolicitudAcceso AS DS INNER JOIN
      Persona AS P ON DS.IdPersona = P.IdPersona
WHERE DS.IdDetalleSolicitudAcceso = @IdDetalleSolicitudAcceso
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleSolicitudAcceso_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleSolicitudAcceso_Insertar]
(
	@IdDetalleSolicitudAcceso int = NULL OUTPUT,
	@IdSolicitudAcceso int,
	@IdPersona int,
	@IdEstado int
	
)
AS
	SET NOCOUNT ON

	INSERT INTO DetalleSolicitudAcceso
	(
		IdSolicitudAcceso,
		IdPersona,
		FechaRegistro,
		EstadoActivo,
		IdEstado
	)
	VALUES
	(
		@IdSolicitudAcceso,
		@IdPersona,
		GETDATE(),
		1,
		@IdEstado
	)

	SELECT @IdDetalleSolicitudAcceso = SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleSolicitudAcceso_Eliminar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleSolicitudAcceso_Eliminar]
(
	@IdDetalleSolicitudAcceso int
)
AS
	SET NOCOUNT ON

	DELETE 
	FROM   DetalleSolicAplicaPuesto
	WHERE  
		IdDetalleSolicitudAcceso = @IdDetalleSolicitudAcceso

	DELETE 
	FROM   DetalleSolicitudAcceso
	WHERE  
		IdDetalleSolicitudAcceso = @IdDetalleSolicitudAcceso

	RETURN @@Error
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleSolicitudAcceso_Listar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleSolicitudAcceso_Listar]
(
	@IdSolicitudAcceso int
	)
AS
	SET NOCOUNT ON
	
	SELECT     DS.IdDetalleSolicitudAcceso, DS.IdSolicitudAcceso, DS.IdPersona, DS.FechaRegistro, DS.EstadoActivo, P.Nombres, P.ApePaterno, P.ApeMaterno, 
                      P.DocumentoIdentidad, DS.IdEstado, Estado.NombreEstado,
   TotalAplicacion = (SELECT COUNT(1) FROM DetalleSolicAplicaPuesto DA WHERE DA.IdDetalleSolicitudAcceso = DS.IdDetalleSolicitudAcceso)                   
FROM         DetalleSolicitudAcceso AS DS INNER JOIN
                      Persona AS P ON DS.IdPersona = P.IdPersona INNER JOIN
                      Estado ON DS.IdEstado = Estado.IdEstado
WHERE DS.IdSolicitudAcceso = @IdSolicitudAcceso
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleSolicAplicaPuesto_Listar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleSolicAplicaPuesto_Listar]
(
	@IdDetalleSolicitudAcceso int	
)
AS
	SET NOCOUNT ON	
	SELECT DTS.IdDetSolicAplicaPuesto, 
	DTS.IdDetalleSolicitudAcceso, 
	DTS.FechaRegistro, 
	DTS.IdAplicacion, 
	DTS.IdPuesto, 
	DTS.EstadoActivo, 
    AP.NombreAplicacion, 
    PU.NombrePuesto,
    AP.IdLogicaGeneracionUsuario
FROM DetalleSolicAplicaPuesto AS DTS INNER JOIN
     Aplicacion AS AP ON DTS.IdAplicacion = AP.IdAplicacion INNER JOIN
     Puesto AS PU ON DTS.IdPuesto = PU.IdPuesto
WHERE DTS.IdDetalleSolicitudAcceso = @IdDetalleSolicitudAcceso
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleSolicAplicaPuesto_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleSolicAplicaPuesto_Insertar]
(
	@IdDetSolicAplicaPuesto int = NULL OUTPUT,
	@IdDetalleSolicitudAcceso int,
	@IdAplicacion int,
	@IdPuesto int
)
AS
	SET NOCOUNT ON

	INSERT INTO DetalleSolicAplicaPuesto
	(
		IdDetalleSolicitudAcceso,
		FechaRegistro,
		IdAplicacion,
		IdPuesto,
		EstadoActivo
	)
	VALUES
	(
		@IdDetalleSolicitudAcceso,
		GETDATE(),
		@IdAplicacion,
		@IdPuesto,
		1
	)

	SELECT @IdDetSolicAplicaPuesto = SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleSolicAplicaPuesto_Eliminar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleSolicAplicaPuesto_Eliminar]
(
	@IdDetSolicAplicaPuesto int
)
AS
	SET NOCOUNT ON

	DELETE 
	FROM   DetalleSolicAplicaPuesto
	WHERE  
		IdDetSolicAplicaPuesto = @IdDetSolicAplicaPuesto
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleAprovisionamiento_Listar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleAprovisionamiento_Listar]
@IdAprovisionamiento int
AS 

SELECT  DA.IdDetAprovisionamiento, 
DA.IdAprovisionamiento, DA.IdPersona, 
DA.IdAplicacion, DA.CuentaUsuario, 
DA.ClaveGenerada, 
DA.FechaCreacion, DA.IdEstado, 
DA.EstadoActivo, ES.NombreEstado, 
AP.NombreAplicacion, PE.Nombres, 
PE.ApePaterno, PE.ApeMaterno, 
PE.DocumentoIdentidad
FROM DetalleAprovisionamiento AS DA INNER JOIN
Aplicacion AS AP ON DA.IdAplicacion = AP.IdAplicacion INNER JOIN
Persona AS PE ON DA.IdPersona = PE.IdPersona INNER JOIN
Estado AS ES ON DA.IdEstado = ES.IdEstado
WHERE     (DA.IdAprovisionamiento = @IdAprovisionamiento)
GO
/****** Object:  StoredProcedure [dbo].[up_DetalleAprovisionamiento_Insertar]    Script Date: 11/01/2013 22:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_DetalleAprovisionamiento_Insertar]
(
	@IdDetAprovisionamiento int = NULL OUTPUT,
	@IdAprovisionamiento int,
	@IdPersona int,
	@IdAplicacion int,
	@CuentaUsuario varchar(50),
	@ClaveGenerada varchar(50),
	@IdEstado int
)
AS
	SET NOCOUNT ON

	INSERT INTO DetalleAprovisionamiento
	(
		IdAprovisionamiento,
		IdPersona,
		IdAplicacion,
		CuentaUsuario,
		ClaveGenerada,
		FechaCreacion,
		IdEstado,
		EstadoActivo
	)
	VALUES
	(
		@IdAprovisionamiento,
		@IdPersona,
		@IdAplicacion,
		@CuentaUsuario,
		@ClaveGenerada,
		GETDATE(),
		@IdEstado,
		1
	)

	SELECT @IdDetAprovisionamiento = SCOPE_IDENTITY();

	RETURN @@Error
GO
/****** Object:  Default [DF_Agencia_Estado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Agencia] ADD  CONSTRAINT [DF_Agencia_Estado]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  Default [DF_Aplicacion_FechaCreacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Aplicacion] ADD  CONSTRAINT [DF_Aplicacion_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  Default [DF_Aplicacion_Estado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Aplicacion] ADD  CONSTRAINT [DF_Aplicacion_Estado]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  Default [DF_Aplicacion_IdLogicaGeneracionUsuario]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Aplicacion] ADD  CONSTRAINT [DF_Aplicacion_IdLogicaGeneracionUsuario]  DEFAULT ((1)) FOR [IdLogicaGeneracionUsuario]
GO
/****** Object:  Default [DF_AplicacionAutorizante_FechaCreacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[AplicacionAutorizante] ADD  CONSTRAINT [DF_AplicacionAutorizante_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  Default [DF_AplicacionAutorizante_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[AplicacionAutorizante] ADD  CONSTRAINT [DF_AplicacionAutorizante_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_AplicacionAutorizanteHistorico_FechaModificacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[AplicacionAutorizanteHistorico] ADD  CONSTRAINT [DF_AplicacionAutorizanteHistorico_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
/****** Object:  Default [DF_Aprovisionamiento_FechaAprovisionamiento]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Aprovisionamiento] ADD  CONSTRAINT [DF_Aprovisionamiento_FechaAprovisionamiento]  DEFAULT (getdate()) FOR [FechaAprovisionamiento]
GO
/****** Object:  Default [DF_Aprovisionamiento_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Aprovisionamiento] ADD  CONSTRAINT [DF_Aprovisionamiento_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_Autorizante_Estado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Autorizante] ADD  CONSTRAINT [DF_Autorizante_Estado]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  Default [DF_DatosEscaneoValidador_FechaCreacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DatosEscaneoValidador] ADD  CONSTRAINT [DF_DatosEscaneoValidador_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  Default [DF_DatosEscaneoValidador_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DatosEscaneoValidador] ADD  CONSTRAINT [DF_DatosEscaneoValidador_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_DetalleAprovisionamiento_FechaCreacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleAprovisionamiento] ADD  CONSTRAINT [DF_DetalleAprovisionamiento_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  Default [DF_DetalleAprovisionamiento_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleAprovisionamiento] ADD  CONSTRAINT [DF_DetalleAprovisionamiento_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_DetalleEscaneoValidador_FechaCreacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleEscaneoValidador] ADD  CONSTRAINT [DF_DetalleEscaneoValidador_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  Default [DF_DetalleEscaneoValidador_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleEscaneoValidador] ADD  CONSTRAINT [DF_DetalleEscaneoValidador_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_DetalleGenAgenValidador_FechaCreacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleGenAgenValidador] ADD  CONSTRAINT [DF_DetalleGenAgenValidador_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  Default [DF_DetalleGenAgenValidador_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleGenAgenValidador] ADD  CONSTRAINT [DF_DetalleGenAgenValidador_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_DetalleSolicAplicaPuesto_FechaRegistro]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleSolicAplicaPuesto] ADD  CONSTRAINT [DF_DetalleSolicAplicaPuesto_FechaRegistro]  DEFAULT (getdate()) FOR [FechaRegistro]
GO
/****** Object:  Default [DF_DetalleSolicAplicaPuesto_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleSolicAplicaPuesto] ADD  CONSTRAINT [DF_DetalleSolicAplicaPuesto_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_DetalleSolicitudAcceso_FechaRegistro]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleSolicitudAcceso] ADD  CONSTRAINT [DF_DetalleSolicitudAcceso_FechaRegistro]  DEFAULT (getdate()) FOR [FechaRegistro]
GO
/****** Object:  Default [DF_DetalleSolicitudAcceso_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleSolicitudAcceso] ADD  CONSTRAINT [DF_DetalleSolicitudAcceso_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_DetalleSolicitudAcceso_IdEstado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleSolicitudAcceso] ADD  CONSTRAINT [DF_DetalleSolicitudAcceso_IdEstado]  DEFAULT ((1)) FOR [IdEstado]
GO
/****** Object:  Default [DF_EscaneoAgenciaSucursal_Fecha]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[EscaneoAgenciaSucursal] ADD  CONSTRAINT [DF_EscaneoAgenciaSucursal_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
/****** Object:  Default [DF_EscaneoAgenciaSucursal_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[EscaneoAgenciaSucursal] ADD  CONSTRAINT [DF_EscaneoAgenciaSucursal_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_Estado_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Estado] ADD  CONSTRAINT [DF_Estado_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_GenAgenValidador_FechaCreacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[GenAgenValidador] ADD  CONSTRAINT [DF_GenAgenValidador_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  Default [DF_Menu_IdMenuPadre]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IdMenuPadre]  DEFAULT ((0)) FOR [IdMenuPadre]
GO
/****** Object:  Default [DF_Menu_EstadoMenu]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_EstadoMenu]  DEFAULT ((1)) FOR [EstadoMenu]
GO
/****** Object:  Default [DF_Parametro_FechaRegistro]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[ParametroGeneracionCuenta] ADD  CONSTRAINT [DF_Parametro_FechaRegistro]  DEFAULT (getdate()) FOR [FechaRegistro]
GO
/****** Object:  Default [DF_Parametro_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[ParametroGeneracionCuenta] ADD  CONSTRAINT [DF_Parametro_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_PermisoMenu_EstadoPermisoMenu]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[PermisoMenu] ADD  CONSTRAINT [DF_PermisoMenu_EstadoPermisoMenu]  DEFAULT ((1)) FOR [EstadoPermisoMenu]
GO
/****** Object:  Default [DF_PermisoMenu_FechaCreacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[PermisoMenu] ADD  CONSTRAINT [DF_PermisoMenu_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  Default [DF_PermisoUsuario_FechaCreacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[PermisoUsuario] ADD  CONSTRAINT [DF_PermisoUsuario_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  Default [DF_PermisoUsuario_Estado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[PermisoUsuario] ADD  CONSTRAINT [DF_PermisoUsuario_Estado]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  Default [DF_Persona_FechaCreacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Persona] ADD  CONSTRAINT [DF_Persona_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  Default [DF_Persona_Estado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Persona] ADD  CONSTRAINT [DF_Persona_Estado]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  Default [DF_Puesto_FechaCreacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Puesto] ADD  CONSTRAINT [DF_Puesto_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  Default [DF_Puesto_Estado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Puesto] ADD  CONSTRAINT [DF_Puesto_Estado]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  Default [DF_Rol_EstadoRol]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Rol] ADD  CONSTRAINT [DF_Rol_EstadoRol]  DEFAULT ((1)) FOR [EstadoRol]
GO
/****** Object:  Default [DF_SolicitudAcceso_FechaRegistro]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[SolicitudAcceso] ADD  CONSTRAINT [DF_SolicitudAcceso_FechaRegistro]  DEFAULT (getdate()) FOR [FechaRegistro]
GO
/****** Object:  Default [DF_SolicitudAcceso_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[SolicitudAcceso] ADD  CONSTRAINT [DF_SolicitudAcceso_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_SolicitudAcceso_NumEquipos]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[SolicitudAcceso] ADD  CONSTRAINT [DF_SolicitudAcceso_NumEquipos]  DEFAULT ((0)) FOR [NumEquipos]
GO
/****** Object:  Default [DF_Sucursal_Estado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Sucursal] ADD  CONSTRAINT [DF_Sucursal_Estado]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  Default [DF_TipoAcceso_Estado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[TipoAcceso] ADD  CONSTRAINT [DF_TipoAcceso_Estado]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  Default [DF_Ubigeo_Estado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Ubigeo] ADD  CONSTRAINT [DF_Ubigeo_Estado]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  Default [DF_UsuarioObservado_FechaRegistro]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[UsuarioObservado] ADD  CONSTRAINT [DF_UsuarioObservado_FechaRegistro]  DEFAULT (getdate()) FOR [FechaRegistro]
GO
/****** Object:  Default [DF_UsuarioObservado_EstadoActivo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[UsuarioObservado] ADD  CONSTRAINT [DF_UsuarioObservado_EstadoActivo]  DEFAULT ((1)) FOR [EstadoActivo]
GO
/****** Object:  Default [DF_UsuarioSistema_FechaCreacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[UsuarioSistema] ADD  CONSTRAINT [DF_UsuarioSistema_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  Default [DF_UsuarioSistema_Estado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[UsuarioSistema] ADD  CONSTRAINT [DF_UsuarioSistema_Estado]  DEFAULT ((1)) FOR [Estado]
GO
/****** Object:  Default [DF_xmls_fsolicitud]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[xmls] ADD  CONSTRAINT [DF_xmls_fsolicitud]  DEFAULT (getdate()) FOR [fsolicitud]
GO
/****** Object:  Default [DF_xmls_estado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[xmls] ADD  CONSTRAINT [DF_xmls_estado]  DEFAULT ((0)) FOR [estado]
GO
/****** Object:  ForeignKey [FK_apps_xmls]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[apps]  WITH NOCHECK ADD  CONSTRAINT [FK_apps_xmls] FOREIGN KEY([pcid])
REFERENCES [dbo].[xmls] ([id])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[apps] NOCHECK CONSTRAINT [FK_apps_xmls]
GO
/****** Object:  ForeignKey [FK_Aprovisionamiento_SolicitudAcceso]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Aprovisionamiento]  WITH CHECK ADD  CONSTRAINT [FK_Aprovisionamiento_SolicitudAcceso] FOREIGN KEY([IdSolicitud])
REFERENCES [dbo].[SolicitudAcceso] ([IdSolicitudAcceso])
GO
ALTER TABLE [dbo].[Aprovisionamiento] CHECK CONSTRAINT [FK_Aprovisionamiento_SolicitudAcceso]
GO
/****** Object:  ForeignKey [FK_Autorizante_Persona]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Autorizante]  WITH CHECK ADD  CONSTRAINT [FK_Autorizante_Persona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([IdPersona])
GO
ALTER TABLE [dbo].[Autorizante] CHECK CONSTRAINT [FK_Autorizante_Persona]
GO
/****** Object:  ForeignKey [FK_DatosEscaneoValidador_DetalleEscaneoValidador]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DatosEscaneoValidador]  WITH CHECK ADD  CONSTRAINT [FK_DatosEscaneoValidador_DetalleEscaneoValidador] FOREIGN KEY([IdDetEscaneoValidacion])
REFERENCES [dbo].[DetalleEscaneoValidador] ([IdDetEscaneoValidacion])
GO
ALTER TABLE [dbo].[DatosEscaneoValidador] CHECK CONSTRAINT [FK_DatosEscaneoValidador_DetalleEscaneoValidador]
GO
/****** Object:  ForeignKey [FK_DetalleAprovisionamiento_Aplicacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleAprovisionamiento]  WITH CHECK ADD  CONSTRAINT [FK_DetalleAprovisionamiento_Aplicacion] FOREIGN KEY([IdAplicacion])
REFERENCES [dbo].[Aplicacion] ([IdAplicacion])
GO
ALTER TABLE [dbo].[DetalleAprovisionamiento] CHECK CONSTRAINT [FK_DetalleAprovisionamiento_Aplicacion]
GO
/****** Object:  ForeignKey [FK_DetalleAprovisionamiento_Aprovisionamiento]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleAprovisionamiento]  WITH CHECK ADD  CONSTRAINT [FK_DetalleAprovisionamiento_Aprovisionamiento] FOREIGN KEY([IdAprovisionamiento])
REFERENCES [dbo].[Aprovisionamiento] ([IdAprovisionamiento])
GO
ALTER TABLE [dbo].[DetalleAprovisionamiento] CHECK CONSTRAINT [FK_DetalleAprovisionamiento_Aprovisionamiento]
GO
/****** Object:  ForeignKey [FK_DetalleAprovisionamiento_Persona]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleAprovisionamiento]  WITH CHECK ADD  CONSTRAINT [FK_DetalleAprovisionamiento_Persona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([IdPersona])
GO
ALTER TABLE [dbo].[DetalleAprovisionamiento] CHECK CONSTRAINT [FK_DetalleAprovisionamiento_Persona]
GO
/****** Object:  ForeignKey [FK_DetalleEscaneoValidador_DetalleGenAgenValidador]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleEscaneoValidador]  WITH CHECK ADD  CONSTRAINT [FK_DetalleEscaneoValidador_DetalleGenAgenValidador] FOREIGN KEY([IdDetAgenValidador])
REFERENCES [dbo].[DetalleGenAgenValidador] ([IdDetAgenValidador])
GO
ALTER TABLE [dbo].[DetalleEscaneoValidador] CHECK CONSTRAINT [FK_DetalleEscaneoValidador_DetalleGenAgenValidador]
GO
/****** Object:  ForeignKey [FK_DetalleEscaneoValidador_EscaneoAgenciaSucursal]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleEscaneoValidador]  WITH CHECK ADD  CONSTRAINT [FK_DetalleEscaneoValidador_EscaneoAgenciaSucursal] FOREIGN KEY([IdEscaneoAgenciaSuc])
REFERENCES [dbo].[EscaneoAgenciaSucursal] ([IdEscaneoAgenciaSuc])
GO
ALTER TABLE [dbo].[DetalleEscaneoValidador] CHECK CONSTRAINT [FK_DetalleEscaneoValidador_EscaneoAgenciaSucursal]
GO
/****** Object:  ForeignKey [FK_DetalleSolicAplicaPuesto_Aplicacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleSolicAplicaPuesto]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSolicAplicaPuesto_Aplicacion] FOREIGN KEY([IdAplicacion])
REFERENCES [dbo].[Aplicacion] ([IdAplicacion])
GO
ALTER TABLE [dbo].[DetalleSolicAplicaPuesto] CHECK CONSTRAINT [FK_DetalleSolicAplicaPuesto_Aplicacion]
GO
/****** Object:  ForeignKey [FK_DetalleSolicAplicaPuesto_DetalleSolicitudAcceso]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleSolicAplicaPuesto]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSolicAplicaPuesto_DetalleSolicitudAcceso] FOREIGN KEY([IdDetalleSolicitudAcceso])
REFERENCES [dbo].[DetalleSolicitudAcceso] ([IdDetalleSolicitudAcceso])
GO
ALTER TABLE [dbo].[DetalleSolicAplicaPuesto] CHECK CONSTRAINT [FK_DetalleSolicAplicaPuesto_DetalleSolicitudAcceso]
GO
/****** Object:  ForeignKey [FK_DetalleSolicAplicaPuesto_Puesto]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleSolicAplicaPuesto]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSolicAplicaPuesto_Puesto] FOREIGN KEY([IdPuesto])
REFERENCES [dbo].[Puesto] ([IdPuesto])
GO
ALTER TABLE [dbo].[DetalleSolicAplicaPuesto] CHECK CONSTRAINT [FK_DetalleSolicAplicaPuesto_Puesto]
GO
/****** Object:  ForeignKey [FK_DetalleSolicitudAcceso_Persona]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleSolicitudAcceso]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSolicitudAcceso_Persona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([IdPersona])
GO
ALTER TABLE [dbo].[DetalleSolicitudAcceso] CHECK CONSTRAINT [FK_DetalleSolicitudAcceso_Persona]
GO
/****** Object:  ForeignKey [FK_DetalleSolicitudAcceso_SolicitudAcceso]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[DetalleSolicitudAcceso]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSolicitudAcceso_SolicitudAcceso] FOREIGN KEY([IdSolicitudAcceso])
REFERENCES [dbo].[SolicitudAcceso] ([IdSolicitudAcceso])
GO
ALTER TABLE [dbo].[DetalleSolicitudAcceso] CHECK CONSTRAINT [FK_DetalleSolicitudAcceso_SolicitudAcceso]
GO
/****** Object:  ForeignKey [FK_EscaneoAgenciaSucursal_Agencia]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[EscaneoAgenciaSucursal]  WITH CHECK ADD  CONSTRAINT [FK_EscaneoAgenciaSucursal_Agencia] FOREIGN KEY([IdAgencia])
REFERENCES [dbo].[Agencia] ([IdAgencia])
GO
ALTER TABLE [dbo].[EscaneoAgenciaSucursal] CHECK CONSTRAINT [FK_EscaneoAgenciaSucursal_Agencia]
GO
/****** Object:  ForeignKey [FK_EscaneoAgenciaSucursal_Sucursal]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[EscaneoAgenciaSucursal]  WITH CHECK ADD  CONSTRAINT [FK_EscaneoAgenciaSucursal_Sucursal] FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[EscaneoAgenciaSucursal] CHECK CONSTRAINT [FK_EscaneoAgenciaSucursal_Sucursal]
GO
/****** Object:  ForeignKey [FK_PermisoMenu_Menu]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[PermisoMenu]  WITH CHECK ADD  CONSTRAINT [FK_PermisoMenu_Menu] FOREIGN KEY([IdMenu])
REFERENCES [dbo].[Menu] ([IdMenu])
GO
ALTER TABLE [dbo].[PermisoMenu] CHECK CONSTRAINT [FK_PermisoMenu_Menu]
GO
/****** Object:  ForeignKey [FK_PermisoMenu_Rol]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[PermisoMenu]  WITH CHECK ADD  CONSTRAINT [FK_PermisoMenu_Rol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Rol] ([IdRol])
GO
ALTER TABLE [dbo].[PermisoMenu] CHECK CONSTRAINT [FK_PermisoMenu_Rol]
GO
/****** Object:  ForeignKey [FK_PermisoUsuario_Rol]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[PermisoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PermisoUsuario_Rol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Rol] ([IdRol])
GO
ALTER TABLE [dbo].[PermisoUsuario] CHECK CONSTRAINT [FK_PermisoUsuario_Rol]
GO
/****** Object:  ForeignKey [FK_procesos_xmls]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[procesos]  WITH NOCHECK ADD  CONSTRAINT [FK_procesos_xmls] FOREIGN KEY([pcid])
REFERENCES [dbo].[xmls] ([id])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[procesos] NOCHECK CONSTRAINT [FK_procesos_xmls]
GO
/****** Object:  ForeignKey [FK_Puesto_Aplicacion]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Puesto]  WITH CHECK ADD  CONSTRAINT [FK_Puesto_Aplicacion] FOREIGN KEY([IdAplicacion])
REFERENCES [dbo].[Aplicacion] ([IdAplicacion])
GO
ALTER TABLE [dbo].[Puesto] CHECK CONSTRAINT [FK_Puesto_Aplicacion]
GO
/****** Object:  ForeignKey [FK_SolicitudAcceso_Agencia]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[SolicitudAcceso]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudAcceso_Agencia] FOREIGN KEY([IdAgencia])
REFERENCES [dbo].[Agencia] ([IdAgencia])
GO
ALTER TABLE [dbo].[SolicitudAcceso] CHECK CONSTRAINT [FK_SolicitudAcceso_Agencia]
GO
/****** Object:  ForeignKey [FK_SolicitudAcceso_Autorizante]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[SolicitudAcceso]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudAcceso_Autorizante] FOREIGN KEY([IdAutorizante])
REFERENCES [dbo].[Autorizante] ([IdAutorizante])
GO
ALTER TABLE [dbo].[SolicitudAcceso] CHECK CONSTRAINT [FK_SolicitudAcceso_Autorizante]
GO
/****** Object:  ForeignKey [FK_SolicitudAcceso_Estado]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[SolicitudAcceso]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudAcceso_Estado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[SolicitudAcceso] CHECK CONSTRAINT [FK_SolicitudAcceso_Estado]
GO
/****** Object:  ForeignKey [FK_SolicitudAcceso_Sucursal]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[SolicitudAcceso]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudAcceso_Sucursal] FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[SolicitudAcceso] CHECK CONSTRAINT [FK_SolicitudAcceso_Sucursal]
GO
/****** Object:  ForeignKey [FK_SolicitudAcceso_TipoAcceso]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[SolicitudAcceso]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudAcceso_TipoAcceso] FOREIGN KEY([IdTipoAcceso])
REFERENCES [dbo].[TipoAcceso] ([IdTipoAcceso])
GO
ALTER TABLE [dbo].[SolicitudAcceso] CHECK CONSTRAINT [FK_SolicitudAcceso_TipoAcceso]
GO
/****** Object:  ForeignKey [FK_Sucursal_Agencia]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_Agencia] FOREIGN KEY([IdAgencia])
REFERENCES [dbo].[Agencia] ([IdAgencia])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_Agencia]
GO
/****** Object:  ForeignKey [FK_Sucursal_Ubigeo]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_Ubigeo] FOREIGN KEY([CodUbigeo])
REFERENCES [dbo].[Ubigeo] ([CodUbigeo])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_Ubigeo]
GO
/****** Object:  ForeignKey [FK_UsuarioSistema_Persona]    Script Date: 11/01/2013 22:53:14 ******/
ALTER TABLE [dbo].[UsuarioSistema]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioSistema_Persona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([IdPersona])
GO
ALTER TABLE [dbo].[UsuarioSistema] CHECK CONSTRAINT [FK_UsuarioSistema_Persona]
GO
