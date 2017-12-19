USE [Inmobiliaria]
GO
/****** Object:  Table [dbo].[ESTADO]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ESTADO](
	[est_id] [char](1) NOT NULL,
	[est_descripcion] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[est_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[emp_rut] [nchar](11) NOT NULL,
	[emp_nombre] [nvarchar](100) NOT NULL,
	[emp_telefono] [int] NULL,
	[emp_est_id] [char](1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMUNA]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMUNA](
	[com_id] [nchar](2) NOT NULL,
	[com_descripcion] [nvarchar](30) NOT NULL,
	[com_reg_id] [nchar](2) NOT NULL,
	[com_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_COMUNA] PRIMARY KEY CLUSTERED 
(
	[com_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[cli_rut] [nchar](11) NOT NULL,
	[cli_nombre] [nvarchar](100) NOT NULL,
	[cli_giro] [nchar](25) NULL,
	[cli_email] [nvarchar](50) NULL,
	[cli_telefono] [int] NULL,
	[cli_calle] [nvarchar](100) NULL,
	[cli_numero] [int] NULL,
	[cli_departamento] [nchar](25) NULL,
	[cli_est_id] [char](1) NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[cli_rut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BANCO]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BANCO](
	[ban_id] [int] IDENTITY(1,1) NOT NULL,
	[ban_descripcion] [nvarchar](100) NULL,
	[ban_est_id] [char](1) NULL,
 CONSTRAINT [PK_BANCO] PRIMARY KEY CLUSTERED 
(
	[ban_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VENTA_DETALLE]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VENTA_DETALLE](
	[vde_id] [int] IDENTITY(1,1) NOT NULL,
	[vde_vca_id] [int] NOT NULL,
	[vde_pro_id] [nvarchar](50) NOT NULL,
	[vde_cantidad] [int] NOT NULL,
	[vde_total] [numeric](19, 6) NOT NULL,
	[vde_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_VENTA_DETALLE] PRIMARY KEY CLUSTERED 
(
	[vde_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VENTA_CABECERA]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VENTA_CABECERA](
	[vca_id] [int] IDENTITY(1,1) NOT NULL,
	[vca_folio] [int] NULL,
	[vca_cli_rut] [nchar](11) NOT NULL,
	[vca_fecha_docto] [datetime] NOT NULL,
	[vca_suc_id] [int] NOT NULL,
	[vca_comentario] [text] NULL,
	[vca_tipo_docto] [nchar](10) NOT NULL,
	[vca_impuesto] [numeric](19, 6) NOT NULL,
	[vca_total] [numeric](19, 6) NOT NULL,
	[vca_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_VENTA_CABECERA] PRIMARY KEY CLUSTERED 
(
	[vca_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIO](
	[usu_correo] [nvarchar](50) NOT NULL,
	[usu_contrasena] [nvarchar](25) NOT NULL,
	[usu_emp_rut] [nchar](11) NOT NULL,
	[usu_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED 
(
	[usu_correo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SUCURSAL]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SUCURSAL](
	[suc_id] [int] IDENTITY(1,1) NOT NULL,
	[suc_descripcion] [nvarchar](50) NOT NULL,
	[suc_direccion] [nvarchar](50) NOT NULL,
	[suc_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_SUCURSAL] PRIMARY KEY CLUSTERED 
(
	[suc_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REGION]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REGION](
	[reg_id] [nchar](2) NOT NULL,
	[reg_descripcion] [nvarchar](50) NOT NULL,
	[reg_orden] [nchar](2) NOT NULL,
	[reg_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_REGION] PRIMARY KEY CLUSTERED 
(
	[reg_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[pro_id] [nvarchar](50) NOT NULL,
	[pro_descripcion] [nvarchar](100) NOT NULL,
	[pro_precio] [int] NOT NULL,
	[pro_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PRODUCTO] PRIMARY KEY CLUSTERED 
(
	[pro_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRIVILEGIO]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRIVILEGIO](
	[pri_formulario] [nvarchar](50) NOT NULL,
	[pri_lectura] [char](1) NOT NULL,
	[pri_escritura] [char](1) NOT NULL,
	[pri_usu_correo] [nvarchar](50) NOT NULL,
	[pri_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PRIVILEGIO] PRIMARY KEY CLUSTERED 
(
	[pri_formulario] ASC,
	[pri_usu_correo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PAGO_TRANFERENCIA]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO_TRANFERENCIA](
	[ptr_id] [int] IDENTITY(1,1) NOT NULL,
	[ptr_vca_id] [int] NOT NULL,
	[ptr_fecha_docto] [datetime] NOT NULL,
	[ptr_importe] [numeric](19, 6) NOT NULL,
	[ptr_ban_id] [int] NOT NULL,
	[ptr_numero_tran] [numeric](18, 0) NOT NULL,
	[ptr_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PAGO_TRANFERENCIA] PRIMARY KEY CLUSTERED 
(
	[ptr_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PAGO_TARJETA_DEBITO]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO_TARJETA_DEBITO](
	[tcr_id] [int] IDENTITY(1,1) NOT NULL,
	[tcr_vca_id] [int] NOT NULL,
	[tcr_fecha_docto] [datetime] NOT NULL,
	[tcr_importe] [numeric](19, 6) NOT NULL,
	[tcr_numero_tran] [numeric](18, 0) NOT NULL,
	[tcr_ban_id] [int] NOT NULL,
	[tcr_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PAGO_TARJETA_DEBITO] PRIMARY KEY CLUSTERED 
(
	[tcr_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PAGO_TARJETA_CREDITO]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO_TARJETA_CREDITO](
	[tcr_id] [int] IDENTITY(1,1) NOT NULL,
	[tcr_vca_id] [int] NOT NULL,
	[tcr_fecha_docto] [datetime] NOT NULL,
	[tcr_numero_cuota] [int] NOT NULL,
	[tcr_importe] [numeric](19, 6) NOT NULL,
	[tcr_numero_tran] [numeric](18, 0) NOT NULL,
	[tcr_ban_id] [int] NOT NULL,
	[tcr_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PAGO_TARJETA_CREDITO] PRIMARY KEY CLUSTERED 
(
	[tcr_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PAGO_EFECTIVO]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO_EFECTIVO](
	[pef_id] [int] IDENTITY(1,1) NOT NULL,
	[pef_vca_id] [int] NULL,
	[pef_fecha_docto] [datetime] NULL,
	[pef_importe] [numeric](19, 6) NULL,
	[pef_est_id] [char](1) NULL,
 CONSTRAINT [PK_PAGO_EFECTIVO] PRIMARY KEY CLUSTERED 
(
	[pef_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PAGO_CREDITO_SIMPLE]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO_CREDITO_SIMPLE](
	[pcs_id] [int] IDENTITY(1,1) NOT NULL,
	[pcs_vca_id] [int] NOT NULL,
	[pcs_fecha_docto] [datetime] NOT NULL,
	[pcs_numero_cuota] [int] NOT NULL,
	[pcs_importe] [numeric](19, 6) NOT NULL,
	[pcs_cuota_pagada] [int] NOT NULL,
	[pcs_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PAGO_CREDITO_SIMPLE] PRIMARY KEY CLUSTERED 
(
	[pcs_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PAGO_CHEQUE]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO_CHEQUE](
	[pch_id] [int] IDENTITY(1,1) NOT NULL,
	[pch_vca_id] [int] NOT NULL,
	[pch_fecha_docto] [datetime] NOT NULL,
	[pch_importe] [numeric](19, 6) NOT NULL,
	[pch_ban_id] [int] NOT NULL,
	[pch_numero_docto] [numeric](18, 0) NOT NULL,
	[pch_est_id] [char](1) NOT NULL,
 CONSTRAINT [PK_PAGO_CHEQUE] PRIMARY KEY CLUSTERED 
(
	[pch_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOG]    Script Date: 12/18/2017 22:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clase] [nvarchar](50) NOT NULL,
	[metodo] [nvarchar](50) NOT NULL,
	[error] [text] NOT NULL,
	[fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[LoadPerfilByUser]    Script Date: 12/18/2017 22:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[LoadPerfilByUser](@email nvarchar(50),
                                         @contrasena nvarchar(25))
as
begin
if exists(select m0.usu_emp_rut from USUARIO m0 where m0.usu_correo = @email 
                                               and m0.usu_contrasena = @contrasena 
                                               and m0.usu_est_id = 'A')
	begin
		select t1.pri_formulario 'formulario',
			   t1.pri_lectura 'lectura',
			   t1.pri_escritura 'escritura'
		from usuario t0  
		inner join PRIVILEGIO t1 
				  on t0.usu_correo = t1.pri_usu_correo 
		where t1.pri_est_id = 'A'
		and t1.pri_usu_correo = @email
	end

end
GO
