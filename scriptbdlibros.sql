USE [Libros]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 26/01/2025 22:41:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[LibroID] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](255) NOT NULL,
	[Autor] [nvarchar](255) NOT NULL,
	[AnioPublicacion] [int] NOT NULL,
	[Estado] [nvarchar](20) NOT NULL,
	[UsuarioCreacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LibroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 26/01/2025 22:41:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UsuarioID] [int] IDENTITY(100,1) NOT NULL,
	[NombreUsuario] [nvarchar](50) NOT NULL,
	[Contrasena] [nvarchar](255) NOT NULL,
	[FechaCreacion] [datetime] NULL,
	[EsActivo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Libros] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ((1)) FOR [EsActivo]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Usuarios] FOREIGN KEY([UsuarioCreacion])
REFERENCES [dbo].[Usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Usuarios]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD CHECK  (([Estado]='Reservado' OR [Estado]='Disponible'))
GO
