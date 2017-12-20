USE [Inmobiliaria]
GO
/****** Object:  Table [dbo].[COMUNA]    Script Date: 12/19/2017 23:18:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMUNA](
	[com_id] [nchar](5) NOT NULL,
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
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10101', N'Puerto Montt', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10102', N'Calbuco', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10103', N'Cochamó', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10104', N'Fresia', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10105', N'Frutillar', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10106', N'Los Muermos', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10107', N'Llanquihue', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10108', N'Maullín', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10109', N'Puerto Varas', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10201', N'Castro', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10202', N'Ancud', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10203', N'Chonchi', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10204', N'Curaco de Vélez', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10205', N'Dalcahue', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10206', N'Puqueldón', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10207', N'Queilén', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10208', N'Quellón', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10209', N'Quemchi', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10210', N'Quinchao', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10301', N'Osorno', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10302', N'Puerto Octay', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10303', N'Purranque', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10304', N'Puyehue', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10305', N'Río Negro', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10306', N'San Juan de la Costa', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10307', N'San Pablo', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10401', N'Chaitén', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10402', N'Futaleufú', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10403', N'Hualaihué', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'10404', N'Palena', N'10', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1101 ', N'Iquique', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1107 ', N'Alto Hospicio', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11101', N'Coihaique', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11102', N'Lago Verde', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11201', N'Aisén', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11202', N'Cisnes', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11203', N'Guaitecas', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11301', N'Cochrane', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11302', N'O''Higgins', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11303', N'Tortel', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11401', N'Chile Chico', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'11402', N'Río Ibáñez', N'11', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12101', N'Punta Arenas', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12102', N'Laguna Blanca', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12103', N'Río Verde', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12104', N'San Gregorio', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12201', N'Cabo de Hornos', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12202', N'Antártica', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12301', N'Porvenir', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12302', N'Primavera', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12303', N'Timaukel', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12401', N'Natales', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'12402', N'Torres del Paine', N'12', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13101', N'Santiago', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13102', N'Cerrillos', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13103', N'Cerro Navia', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13104', N'Conchalí', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13105', N'El Bosque', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13106', N'Estación Central', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13107', N'Huechuraba', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13108', N'Independencia', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13109', N'La Cisterna', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13110', N'La Florida', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13111', N'La Granja', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13112', N'La Pintana', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13113', N'La Reina', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13114', N'Las Condes', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13115', N'Lo Barnechea', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13116', N'Lo Espejo', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13117', N'Lo Prado', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13118', N'Macul', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13119', N'Maipú', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13120', N'Ñuñoa', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13121', N'Pedro Aguirre Cerda', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13122', N'Peñalolén', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13123', N'Providencia', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13124', N'Pudahuel', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13125', N'Quilicura', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13126', N'Quinta Normal', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13127', N'Recoleta', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13128', N'Renca', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13129', N'San Joaquín', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13130', N'San Miguel', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13131', N'San Ramón', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13132', N'Vitacura', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13201', N'Puente Alto', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13202', N'Pirque', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13203', N'San José de Maipo', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13301', N'Colina', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13302', N'Lampa', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13303', N'Tiltil', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13401', N'San Bernardo', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13402', N'Buin', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13403', N'Calera de Tango', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13404', N'Paine', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13501', N'Melipilla', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13502', N'Alhué', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13503', N'Curacaví', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13504', N'María Pinto', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13505', N'San Pedro', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13601', N'Talagante', N'13', N'A')
GO
print 'Processed 100 total records'
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13602', N'El Monte', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13603', N'Isla de Maipo', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13604', N'Padre Hurtado', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'13605', N'Peñaflor', N'13', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1401 ', N'Pozo Almonte', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1402 ', N'Camiña', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1403 ', N'Colchane', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1404 ', N'Huara', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'1405 ', N'Pica', N'1 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14101', N'Valdivia', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14102', N'Corral', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14103', N'Lanco', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14104', N'Los Lagos', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14105', N'Máfil', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14106', N'Mariquina', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14107', N'Paillaco', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14108', N'Panguipulli', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14201', N'La Unión', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14202', N'Futrono', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14203', N'Lago Ranco', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'14204', N'Río Bueno', N'14', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'15101', N'Arica', N'15', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'15102', N'Camarones', N'15', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'15201', N'Putre', N'15', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'15202', N'General Lagos', N'15', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2101 ', N'Antofagasta', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2102 ', N'Mejillones', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2103 ', N'Sierra Gorda', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2104 ', N'Taltal', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2201 ', N'Calama', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2202 ', N'Ollagüe', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2203 ', N'San Pedro de Atacama', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2301 ', N'Tocopilla', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'2302 ', N'María Elena', N'2 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3101 ', N'Copiapó', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3102 ', N'Caldera', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3103 ', N'Tierra Amarilla', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3201 ', N'Chañaral', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3202 ', N'Diego de Almagro', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3301 ', N'Vallenar', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3302 ', N'Alto del Carmen', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3303 ', N'Freirina', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'3304 ', N'Huasco', N'3 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4101 ', N'La Serena', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4102 ', N'Coquimbo', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4103 ', N'Andacollo', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4104 ', N'La Higuera', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4105 ', N'Paiguano', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4106 ', N'Vicuña', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4201 ', N'Illapel', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4202 ', N'Canela', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4203 ', N'Los Vilos', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4204 ', N'Salamanca', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4301 ', N'Ovalle', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4302 ', N'Combarbalá', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4303 ', N'Monte Patria', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4304 ', N'Punitaqui', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'4305 ', N'Río Hurtado', N'4 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5101 ', N'Valparaíso', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5102 ', N'Casablanca', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5103 ', N'Concón', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5104 ', N'Juan Fernández', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5105 ', N'Puchuncaví', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5107 ', N'Quintero', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5109 ', N'Viña del Mar', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5201 ', N'Isla  de Pascua', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5301 ', N'Los Andes', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5302 ', N'Calle Larga', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5303 ', N'Rinconada', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5304 ', N'San Esteban', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5401 ', N'La Ligua', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5402 ', N'Cabildo', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5403 ', N'Papudo', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5404 ', N'Petorca', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5405 ', N'Zapallar', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5501 ', N'Quillota', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5502 ', N'Calera', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5503 ', N'Hijuelas', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5504 ', N'La Cruz', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5506 ', N'Nogales', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5601 ', N'San Antonio', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5602 ', N'Algarrobo', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5603 ', N'Cartagena', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5604 ', N'El Quisco', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5605 ', N'El Tabo', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5606 ', N'Santo Domingo', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5701 ', N'San Felipe', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5702 ', N'Catemu', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5703 ', N'Llaillay', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5704 ', N'Panquehue', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5705 ', N'Putaendo', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5706 ', N'Santa María', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5801 ', N'Quilpué', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5802 ', N'Limache', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5803 ', N'Olmué', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'5804 ', N'Villa Alemana', N'5 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6101 ', N'Rancagua', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6102 ', N'Codegua', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6103 ', N'Coinco', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6104 ', N'Coltauco', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6105 ', N'Doñihue', N'6 ', N'A')
GO
print 'Processed 200 total records'
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6106 ', N'Graneros', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6107 ', N'Las Cabras', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6108 ', N'Machalí', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6109 ', N'Malloa', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6110 ', N'Mostazal', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6111 ', N'Olivar', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6112 ', N'Peumo', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6113 ', N'Pichidegua', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6114 ', N'Quinta de Tilcoco', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6115 ', N'Rengo', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6116 ', N'Requínoa', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6117 ', N'San Vicente', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6201 ', N'Pichilemu', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6202 ', N'La Estrella', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6203 ', N'Litueche', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6204 ', N'Marchihue', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6205 ', N'Navidad', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6206 ', N'Paredones', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6301 ', N'San Fernando', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6302 ', N'Chépica', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6303 ', N'Chimbarongo', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6304 ', N'Lolol', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6305 ', N'Nancagua', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6306 ', N'Palmilla', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6307 ', N'Peralillo', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6308 ', N'Placilla', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6309 ', N'Pumanque', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'6310 ', N'Santa Cruz', N'6 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7101 ', N'Talca', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7102 ', N'Constitución', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7103 ', N'Curepto', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7104 ', N'Empedrado', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7105 ', N'Maule', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7106 ', N'Pelarco', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7107 ', N'Pencahue', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7108 ', N'Río Claro', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7109 ', N'San Clemente', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7110 ', N'San Rafael', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7201 ', N'Cauquenes', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7202 ', N'Chanco', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7203 ', N'Pelluhue', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7301 ', N'Curicó', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7302 ', N'Hualañé', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7303 ', N'Licantén', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7304 ', N'Molina', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7305 ', N'Rauco', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7306 ', N'Romeral', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7307 ', N'Sagrada Familia', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7308 ', N'Teno', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7309 ', N'Vichuquén', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7401 ', N'Linares', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7402 ', N'Colbún', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7403 ', N'Longaví', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7404 ', N'Parral', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7405 ', N'Retiro', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7406 ', N'San Javier', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7407 ', N'Villa Alegre', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'7408 ', N'Yerbas Buenas', N'7 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8101 ', N'Concepción', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8102 ', N'Coronel', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8103 ', N'Chiguayante', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8104 ', N'Florida', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8105 ', N'Hualqui', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8106 ', N'Lota', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8107 ', N'Penco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8108 ', N'San Pedro de la Paz', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8109 ', N'Santa Juana', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8110 ', N'Talcahuano', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8111 ', N'Tomé', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8112 ', N'Hualpén', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8201 ', N'Lebu', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8202 ', N'Arauco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8203 ', N'Cañete', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8204 ', N'Contulmo', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8205 ', N'Curanilahue', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8206 ', N'Los Álamos', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8207 ', N'Tirúa', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8301 ', N'Los Ángeles', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8302 ', N'Antuco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8303 ', N'Cabrero', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8304 ', N'Laja', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8305 ', N'Mulchén', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8306 ', N'Nacimiento', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8307 ', N'Negrete', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8308 ', N'Quilaco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8309 ', N'Quilleco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8310 ', N'San Rosendo', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8311 ', N'Santa Bárbara', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8312 ', N'Tucapel', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8313 ', N'Yumbel', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8314 ', N'Alto Biobío', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8401 ', N'Chillán', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8402 ', N'Bulnes', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8403 ', N'Cobquecura', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8404 ', N'Coelemu', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8405 ', N'Coihueco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8406 ', N'Chillán Viejo', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8407 ', N'El Carmen', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8408 ', N'Ninhue', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8409 ', N'Ñiquén', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8410 ', N'Pemuco', N'8 ', N'A')
GO
print 'Processed 300 total records'
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8411 ', N'Pinto', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8412 ', N'Portezuelo', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8413 ', N'Quillón', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8414 ', N'Quirihue', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8415 ', N'Ránquil', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8416 ', N'San Carlos', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8417 ', N'San Fabián', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8418 ', N'San Ignacio', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8419 ', N'San Nicolás', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8420 ', N'Treguaco', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'8421 ', N'Yungay', N'8 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9101 ', N'Temuco', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9102 ', N'Carahue', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9103 ', N'Cunco', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9104 ', N'Curarrehue', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9105 ', N'Freire', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9106 ', N'Galvarino', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9107 ', N'Gorbea', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9108 ', N'Lautaro', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9109 ', N'Loncoche', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9110 ', N'Melipeuco', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9111 ', N'Nueva Imperial', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9112 ', N'Padre Las Casas', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9113 ', N'Perquenco', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9114 ', N'Pitrufquén', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9115 ', N'Pucón', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9116 ', N'Saavedra', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9117 ', N'Teodoro Schmidt', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9118 ', N'Toltén', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9119 ', N'Vilcún', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9120 ', N'Villarrica', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9121 ', N'Cholchol', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9201 ', N'Angol', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9202 ', N'Collipulli', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9203 ', N'Curacautín', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9204 ', N'Ercilla', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9205 ', N'Lonquimay', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9206 ', N'Los Sauces', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9207 ', N'Lumaco', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9208 ', N'Purén', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9209 ', N'Renaico', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9210 ', N'Traiguén', N'9 ', N'A')
INSERT [dbo].[COMUNA] ([com_id], [com_descripcion], [com_reg_id], [com_est_id]) VALUES (N'9211 ', N'Victoria', N'9 ', N'A')
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 12/19/2017 23:18:41 ******/
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
	[cli_com_id] [nchar](5) NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[cli_rut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CLIENTE] ([cli_rut], [cli_nombre], [cli_giro], [cli_email], [cli_telefono], [cli_calle], [cli_numero], [cli_departamento], [cli_est_id], [cli_com_id]) VALUES (N'16514103-2 ', N'ROBERTO BRIONES', N'PARTICULAR               ', N'ROBERTO_BRIONES@LIVE.COM', 952074574, N'UNION', 210, N'406C                     ', N'A', N'13127')
/****** Object:  Table [dbo].[BANCO]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[ESTADO]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[REGION]    Script Date: 12/19/2017 23:18:41 ******/
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
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'1 ', N'Tarapacá', N'1 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'10', N'Los Lagos', N'10', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'11', N'Aisén C. Ibañez del Campo', N'11', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'12', N'Magallanes y de La Antartica Chilena', N'12', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'13', N'Metropolitana de Santiago', N'13', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'14', N'Los Ríos', N'14', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'15', N'Arica y Parinacota', N'15', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'2 ', N'Antofagasta', N'2 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'3 ', N'Atacama', N'3 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'4 ', N'Coquimbo', N'4 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'5 ', N'Valparaíso', N'5 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'6 ', N'Libertador B. O''Higgins', N'6 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'7 ', N'Maule', N'7 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'8 ', N'Bíobío', N'8 ', N'A')
INSERT [dbo].[REGION] ([reg_id], [reg_descripcion], [reg_orden], [reg_est_id]) VALUES (N'9 ', N'La Araucanía', N'9 ', N'A')
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[PRIVILEGIO]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[PAGO_TRANFERENCIA]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[PAGO_TARJETA_DEBITO]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[PAGO_TARJETA_CREDITO]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[PAGO_EFECTIVO]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[PAGO_CREDITO_SIMPLE]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[PAGO_CHEQUE]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[LOG]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[VENTA_DETALLE]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[VENTA_CABECERA]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[USUARIO]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  Table [dbo].[SUCURSAL]    Script Date: 12/19/2017 23:18:41 ******/
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
/****** Object:  StoredProcedure [dbo].[Region_GetAll]    Script Date: 12/19/2017 23:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Region_GetAll]
as
begin
select t0.reg_id
      ,t0.reg_descripcion
      ,t0.reg_orden
      ,t0.reg_est_id
      
from REGION t0
where t0.reg_est_id = 'A'
order by convert(int,t0.reg_orden)
end
GO
/****** Object:  StoredProcedure [dbo].[LoadPerfilByUser]    Script Date: 12/19/2017 23:18:42 ******/
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
/****** Object:  StoredProcedure [dbo].[Comuna_GetAll]    Script Date: 12/19/2017 23:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Comuna_GetAll]
as
begin
select t0.com_id
      ,t0.com_descripcion
      ,t0.com_reg_id
      ,t0.com_est_id
      
from COMUNA t0
where t0.com_est_id = 'A'
end
GO
/****** Object:  StoredProcedure [dbo].[Cliente_GetByRut]    Script Date: 12/19/2017 23:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Cliente_GetByRut](@rut as nvarchar(12))
as
begin
select t0.cli_rut
      ,t0.cli_nombre
      ,t0.cli_email
      ,t0.cli_giro
      ,t0.cli_telefono
      ,t0.cli_est_id
      ,t0.cli_com_id
      ,t2.reg_id
      ,t0.cli_calle
      ,t0.cli_numero
      ,t0.cli_departamento
from CLIENTE t0
inner join COMUNA t1 on t0.cli_com_id = t1.com_id
inner join REGION t2 on t1.com_reg_id = t2.reg_id
where cli_rut = @rut

end
GO
