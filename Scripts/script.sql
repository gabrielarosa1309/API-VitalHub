CREATE DATABASE [VitalHub_G06M]
GO

USE [VitalHub_G06M]
GO
/****** Object:  Table [dbo].[Clinicas]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clinicas](
	[ID] [uniqueidentifier] NOT NULL,
	[NomeFantasia] [varchar](150) NULL,
	[CNPJ] [varchar](30) NULL,
	[RazaoSocial] [varchar](150) NULL,
	[Latitude] [decimal](8, 6) NULL,
	[Longitude] [decimal](9, 6) NULL,
	[Email] [varchar](225) NULL,
 CONSTRAINT [PK_Clinicas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consultas]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultas](
	[ID] [uniqueidentifier] NOT NULL,
	[SituacaoID] [uniqueidentifier] NULL,
	[PacienteID] [uniqueidentifier] NULL,
	[MedicoClinicaID] [uniqueidentifier] NULL,
	[ReceitaID] [uniqueidentifier] NULL,
	[PrioridadeID] [uniqueidentifier] NULL,
	[DataConsulta] [datetime] NULL,
	[Descricao] [text] NULL,
	[Diagnostico] [text] NULL,
 CONSTRAINT [PK_Consultas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enderecos]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enderecos](
	[ID] [uniqueidentifier] NOT NULL,
	[CEP] [varchar](50) NULL,
	[Logradouro] [varchar](50) NULL,
	[Numero] [int] NULL,
 CONSTRAINT [PK_Enderecos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades](
	[ID] [uniqueidentifier] NOT NULL,
	[Especialidade] [varchar](100) NULL,
 CONSTRAINT [PK_Especialidades] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exames]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exames](
	[ID] [uniqueidentifier] NOT NULL,
	[Titulo] [varchar](100) NULL,
	[Descricao] [text] NULL,
	[ConsultaID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Exames] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicos]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicos](
	[ID] [uniqueidentifier] NOT NULL,
	[EspecialidadeID] [uniqueidentifier] NULL,
	[CRM] [varchar](10) NULL,
 CONSTRAINT [PK_Medicos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicosClinicas]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicosClinicas](
	[ID] [uniqueidentifier] NOT NULL,
	[ClinicaID] [uniqueidentifier] NULL,
	[MedicoID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_MedicoClinica] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NiveisPrioridade]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NiveisPrioridade](
	[ID] [uniqueidentifier] NOT NULL,
	[Prioridade] [int] NOT NULL,
 CONSTRAINT [PK_NiveisPrioridade_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[ID] [uniqueidentifier] NOT NULL,
	[DataNascimento] [date] NULL,
	[RG] [varchar](50) NULL,
	[CPF] [varchar](50) NULL,
	[EnderecoID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Pacientes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receitas]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receitas](
	[ID] [uniqueidentifier] NOT NULL,
	[Medicamento] [varchar](100) NULL,
	[Observacoes] [text] NULL,
 CONSTRAINT [PK_Receitas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Situacoes]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Situacoes](
	[ID] [uniqueidentifier] NOT NULL,
	[Situacao] [varchar](50) NULL,
 CONSTRAINT [PK_Situacoes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposUsuario]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposUsuario](
	[ID] [uniqueidentifier] NOT NULL,
	[TipoUsuario] [nchar](10) NULL,
 CONSTRAINT [PK_TiposUsuario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 20/12/2023 13:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[ID] [uniqueidentifier] NOT NULL,
	[TipoUsuarioID] [uniqueidentifier] NULL,
	[Nome] [varchar](50) NULL,
	[Email] [varchar](255) NULL,
	[Senha] [varchar](100) NULL,
	[Foto] [varchar](100) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Especialidades] ([ID], [Especialidade]) VALUES (N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'Cardiologia')
GO
ALTER TABLE [dbo].[Consultas]  WITH CHECK ADD  CONSTRAINT [FK_Consultas_MedicosClinicas] FOREIGN KEY([MedicoClinicaID])
REFERENCES [dbo].[MedicosClinicas] ([ID])
GO
ALTER TABLE [dbo].[Consultas] CHECK CONSTRAINT [FK_Consultas_MedicosClinicas]
GO
ALTER TABLE [dbo].[Consultas]  WITH CHECK ADD  CONSTRAINT [FK_Consultas_NiveisPrioridade] FOREIGN KEY([PrioridadeID])
REFERENCES [dbo].[NiveisPrioridade] ([ID])
GO
ALTER TABLE [dbo].[Consultas] CHECK CONSTRAINT [FK_Consultas_NiveisPrioridade]
GO
ALTER TABLE [dbo].[Consultas]  WITH CHECK ADD  CONSTRAINT [FK_Consultas_Pacientes] FOREIGN KEY([PacienteID])
REFERENCES [dbo].[Pacientes] ([ID])
GO
ALTER TABLE [dbo].[Consultas] CHECK CONSTRAINT [FK_Consultas_Pacientes]
GO
ALTER TABLE [dbo].[Consultas]  WITH CHECK ADD  CONSTRAINT [FK_Consultas_Receitas] FOREIGN KEY([ReceitaID])
REFERENCES [dbo].[Receitas] ([ID])
GO
ALTER TABLE [dbo].[Consultas] CHECK CONSTRAINT [FK_Consultas_Receitas]
GO
ALTER TABLE [dbo].[Consultas]  WITH CHECK ADD  CONSTRAINT [FK_Consultas_Situacoes] FOREIGN KEY([SituacaoID])
REFERENCES [dbo].[Situacoes] ([ID])
GO
ALTER TABLE [dbo].[Consultas] CHECK CONSTRAINT [FK_Consultas_Situacoes]
GO
ALTER TABLE [dbo].[Exames]  WITH CHECK ADD  CONSTRAINT [FK_Exames_Consultas] FOREIGN KEY([ConsultaID])
REFERENCES [dbo].[Consultas] ([ID])
GO
ALTER TABLE [dbo].[Exames] CHECK CONSTRAINT [FK_Exames_Consultas]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Especialidades] FOREIGN KEY([EspecialidadeID])
REFERENCES [dbo].[Especialidades] ([ID])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Especialidades]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Usuarios] FOREIGN KEY([ID])
REFERENCES [dbo].[Usuarios] ([ID])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Usuarios]
GO
ALTER TABLE [dbo].[MedicosClinicas]  WITH CHECK ADD  CONSTRAINT [FK_MedicosClinicas_Clinicas] FOREIGN KEY([ClinicaID])
REFERENCES [dbo].[Clinicas] ([ID])
GO
ALTER TABLE [dbo].[MedicosClinicas] CHECK CONSTRAINT [FK_MedicosClinicas_Clinicas]
GO
ALTER TABLE [dbo].[MedicosClinicas]  WITH CHECK ADD  CONSTRAINT [FK_MedicosClinicas_Medicos] FOREIGN KEY([MedicoID])
REFERENCES [dbo].[Medicos] ([ID])
GO
ALTER TABLE [dbo].[MedicosClinicas] CHECK CONSTRAINT [FK_MedicosClinicas_Medicos]
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_Pacientes_Enderecos] FOREIGN KEY([EnderecoID])
REFERENCES [dbo].[Enderecos] ([ID])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_Pacientes_Enderecos]
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_Pacientes_Usuarios] FOREIGN KEY([ID])
REFERENCES [dbo].[Usuarios] ([ID])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_Pacientes_Usuarios]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_TiposUsuario] FOREIGN KEY([TipoUsuarioID])
REFERENCES [dbo].[TiposUsuario] ([ID])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_TiposUsuario]
GO

ALTER TABLE [dbo].[Medicos]
ALTER COLUMN [CRM] VARCHAR(13) NULL;

USE [VitalHub_G06M]
GO

insert into TiposUsuario values (newid(), 'Paciente'),(newid(), 'Medico')
select * from TiposUsuario
select * from Situacoes
select * from Receitas
select * from Clinicas
select * from Enderecos
select * from Pacientes
select * from Usuarios
select * from Medicos
select * from Especialidades

ALTER TABLE [dbo].[Enderecos]
ADD 
    Bairro VARCHAR(100) NULL,
    Estado VARCHAR(100) NULL,
    Cidade VARCHAR(100) NULL;

UPDATE [dbo].[Enderecos]
SET 
    Bairro = 'Vila Anchieta',
    Estado = 'SP',
    Cidade = 'Mauá'
WHERE ID = '7A665CE3-B6B1-4CFA-9B12-0E708B1F7122';

UPDATE [dbo].[Enderecos]
SET 
    Longitude = '-46.465123',
    Latitude = '-23.685026'
WHERE ID = '7A665CE3-B6B1-4CFA-9B12-0E708B1F7122';

DELETE FROM [VitalHub_G06M].[dbo].[Usuarios]
WHERE ID = '97CD1878-B149-4BE5-AE78-59747DBF996F';

DELETE FROM [VitalHub_G06M].[dbo].[Usuarios]
WHERE ID IN ('97CD1878-B149-4BE5-AE78-59747DBF996F', 'E8A08B1A-CF04-4A65-82BD-744328AA9171', '68053093-FE60-4BDD-B276-C24C171AA442', '27098CF6-2C0B-40CC-B638-FE014086B1FB');

ALTER TABLE [VitalHub_G06M].[dbo].[Usuarios]
ADD CONSTRAINT UC_Email UNIQUE (Email);

DELETE FROM [VitalHub_G06M].[dbo].[Pacientes]
WHERE ID IN ('97CD1878-B149-4BE5-AE78-59747DBF996F', 'E8A08B1A-CF04-4A65-82BD-744328AA9171', '68053093-FE60-4BDD-B276-C24C171AA442', '27098CF6-2C0B-40CC-B638-FE014086B1FB');
