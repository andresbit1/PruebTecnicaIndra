CREATE DATABASE ColegioDB
GO

USE [ColegioDB]
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 31/10/2025 4:07:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificacion](
	[IdCalificacion] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[IdEstudiante] [numeric](18, 0) NOT NULL,
	[Materia] [nvarchar](100) NOT NULL,
	[Periodo] [int] NOT NULL,
	[Nota] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCalificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 31/10/2025 4:07:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[IdEstudiante] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[DocumentoIdentidad] [nvarchar](20) NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Edad] [int] NULL,
	[Sexo] [char](1) NULL,
	[Curso] [nvarchar](50) NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[IdEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Calificacion] ON 
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Historia', 1, 6)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Filosofia', 1, 7)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Biologia', 3, 9)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Quimica', 3, 8)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Derecho', 2, 7)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(12 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Economia', 2, 8)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(13 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Psicologia', 1, 10)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Sociologia', 1, 9)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(15 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'Fisica', 4, 6)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(16 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'Matemáticas', 4, 7)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(17 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Química', 2, 9)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(18 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Biología', 2, 8)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'Economía', 3, 8)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'Administración', 3, 7)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'Literatura', 1, 9)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(22 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'Arte', 1, 10)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(23 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), N'Arquitectura', 2, 8)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(24 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), N'Diseño', 2, 7)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(25 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), N'Medicina', 3, 9)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(26 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), N'Anatomía', 3, 10)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(27 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), N'Ingeniería de Sistemas', 4, 9)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(28 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), N'Programación', 4, 10)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(29 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), N'Arte', 1, 8)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(30 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), N'Historia del Arte', 1, 9)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(31 AS Numeric(18, 0)), CAST(15 AS Numeric(18, 0)), N'Administración', 2, 8)
GO
INSERT [dbo].[Calificacion] ([IdCalificacion], [IdEstudiante], [Materia], [Periodo], [Nota]) VALUES (CAST(32 AS Numeric(18, 0)), CAST(15 AS Numeric(18, 0)), N'Contabilidad', 2, 7)
GO
SET IDENTITY_INSERT [dbo].[Calificacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Estudiantes] ON 
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(2 AS Numeric(18, 0)), N'1002', N'Maria', N'Gomez', 16, N'F', N'Ingenieria')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(3 AS Numeric(18, 0)), N'1003', N'Juan', N'Rodriguez', 19, N'M', N'Historia')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(4 AS Numeric(18, 0)), N'1004', N'Ana', N'Martinez', 21, N'F', N'Biologia')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(5 AS Numeric(18, 0)), N'1005', N'Luis', N'Fernandez', 23, N'M', N'Derecho')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(6 AS Numeric(18, 0)), N'1006', N'Laura', N'Hernandez', 20, N'F', N'Psicologia')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(7 AS Numeric(18, 0)), N'1007', N'Pedro', N'Lopez', 18, N'M', N'Fisica')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(8 AS Numeric(18, 0)), N'1008', N'Sofia', N'Ramirez', 22, N'F', N'Quimica')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(9 AS Numeric(18, 0)), N'1009', N'Andres', N'Torres', 24, N'M', N'Economia')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(10 AS Numeric(18, 0)), N'1010', N'Camila', N'Vargas', 19, N'F', N'Literatura')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(11 AS Numeric(18, 0)), N'1011', N'Felipe', N'Castro', 21, N'M', N'Arquitectura')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(12 AS Numeric(18, 0)), N'1012', N'Valentina', N'Valentina', 20, N'F', N'Medicina')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(13 AS Numeric(18, 0)), N'1013', N'Ortiz', N'Morales', 22, N'M', N'Ingenieria de Sistemas')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(14 AS Numeric(18, 0)), N'1014', N'Isabella', N'Rios', 18, N'F', N'Administracion')
GO
INSERT [dbo].[Estudiantes] ([IdEstudiante], [DocumentoIdentidad], [Nombre], [Apellido], [Edad], [Sexo], [Curso]) VALUES (CAST(15 AS Numeric(18, 0)), N'1015', N'Mateo', N'Mateo', 23, N'M', N'Arte')
GO
SET IDENTITY_INSERT [dbo].[Estudiantes] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Estudiantes_1]    Script Date: 31/10/2025 4:07:56 p. m. ******/
ALTER TABLE [dbo].[Estudiantes] ADD  CONSTRAINT [IX_Estudiantes_1] UNIQUE NONCLUSTERED 
(
	[DocumentoIdentidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD  CONSTRAINT [FK_Calificacion_Estudiantes] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[Estudiantes] ([IdEstudiante])
GO
ALTER TABLE [dbo].[Calificacion] CHECK CONSTRAINT [FK_Calificacion_Estudiantes]
GO
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD CHECK  (([Periodo]>=(1) AND [Periodo]<=(4)))
GO
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD CHECK  (([Nota]>=(0) AND [Nota]<=(10)))
GO
ALTER TABLE [dbo].[Estudiantes]  WITH CHECK ADD  CONSTRAINT [CK__Estudiante__Edad__37A5467C] CHECK  (([Edad]>=(0)))
GO
ALTER TABLE [dbo].[Estudiantes] CHECK CONSTRAINT [CK__Estudiante__Edad__37A5467C]
GO
ALTER TABLE [dbo].[Estudiantes]  WITH CHECK ADD  CONSTRAINT [CK__Estudiante__Sexo__38996AB5] CHECK  (([Sexo]='F' OR [Sexo]='M'))
GO
ALTER TABLE [dbo].[Estudiantes] CHECK CONSTRAINT [CK__Estudiante__Sexo__38996AB5]
GO
/****** Object:  StoredProcedure [dbo].[sp_Calificacion_CRUD]    Script Date: 31/10/2025 4:07:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Calificacion_CRUD]
    @Accion NVARCHAR(10),
    @IdCalificacion INT = NULL,
    @IdEstudiante INT = NULL,
    @Materia NVARCHAR(100) = NULL,
    @Periodo INT = NULL,
    @Nota INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    	-- VARIABLES CONTROL TRANSACCION Y ERROR
	DECLARE @TransactionName VARCHAR(20) = 'Transaction1'; 
	DECLARE @ErrorMessage					NVARCHAR(MAX);
	DECLARE @ErrorSeverity					INT;
	DECLARE @ErrorState						INT;

    IF @Accion = 'INSERT'
    BEGIN
        BEGIN TRAN @TransactionName;  

        BEGIN TRY
            INSERT INTO Calificacion (IdEstudiante, Materia, Periodo, Nota)
            VALUES (@IdEstudiante, @Materia, @Periodo, @Nota);
            COMMIT TRAN;
        END TRY 
        BEGIN CATCH
            SELECT @ErrorSeverity = ERROR_SEVERITY(),@ErrorState = ERROR_STATE(), @ErrorMessage = ERROR_PROCEDURE() + '-' + 'INSERT TABLA TITULO' + ':' + ERROR_MESSAGE();
		    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState); 
		    ROLLBACK TRAN @TransactionName;  

        END CATCH


    END

    ELSE IF @Accion = 'SELECT'
    BEGIN
        IF @IdCalificacion IS NULL

            SELECT IdCalificacion
                  ,A.IdEstudiante
                  ,Materia
                  ,Periodo
                  ,Nota
                  ,CONCAT(B.Nombre,' ',B.Apellido) AS NOMBRE
              FROM dbo.Calificacion A
              INNER JOIN Estudiantes B ON A.IdEstudiante = B.IdEstudiante
        ELSE
            SELECT IdCalificacion
                  ,A.IdEstudiante
                  ,Materia
                  ,Periodo
                  ,Nota
                  ,CONCAT(B.Nombre,' ',B.Apellido) AS NOMBRE
              FROM dbo.Calificacion A
              INNER JOIN Estudiantes B ON A.IdEstudiante = B.IdEstudiante
        END

    ELSE IF @Accion = 'UPDATE'
    BEGIN

        BEGIN TRAN @TransactionName;  

        BEGIN TRY
            UPDATE Calificacion
            SET IdEstudiante = @IdEstudiante,
                Materia = @Materia,
                Periodo = @Periodo,
                Nota = @Nota
            WHERE IdCalificacion = @IdCalificacion;            
            COMMIT TRAN;
        END TRY 
        BEGIN CATCH
            SELECT @ErrorSeverity = ERROR_SEVERITY(),@ErrorState = ERROR_STATE(), @ErrorMessage = ERROR_PROCEDURE() + '-' + 'INSERT TABLA TITULO' + ':' + ERROR_MESSAGE();
		    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState); 
		    ROLLBACK TRAN @TransactionName;  

        END CATCH
    END

    ELSE IF @Accion = 'DELETE'
    BEGIN

        BEGIN TRY
            DELETE FROM Calificacion WHERE IdCalificacion = @IdCalificacion;
            COMMIT TRAN;
        END TRY 
        BEGIN CATCH
            SELECT @ErrorSeverity = ERROR_SEVERITY(),@ErrorState = ERROR_STATE(), @ErrorMessage = ERROR_PROCEDURE() + '-' + 'INSERT TABLA TITULO' + ':' + ERROR_MESSAGE();
		    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState); 
		    ROLLBACK TRAN @TransactionName;  

        END CATCH
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Estudiantes_CRUD]    Script Date: 31/10/2025 4:07:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Estudiantes_CRUD]
    @Accion NVARCHAR(10),
    @IdEstudiante INT = NULL,
    @DocumentoIdentidad NVARCHAR(20) = NULL,
    @Nombre NVARCHAR(50) = NULL,
    @Apellido NVARCHAR(50) = NULL,
    @Edad INT = NULL,
    @Sexo CHAR(1) = NULL,
    @Curso NVARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;
	DECLARE @TransactionName VARCHAR(20) = 'Transaction1'; 
	DECLARE @ErrorMessage					NVARCHAR(MAX);
	DECLARE @ErrorSeverity					INT;
	DECLARE @ErrorState						INT;

    IF @Accion = 'INSERT'
    BEGIN
        BEGIN TRAN @TransactionName;  

        BEGIN TRY
            INSERT INTO Estudiantes (DocumentoIdentidad, Nombre, Apellido, Edad, Sexo, Curso)
            VALUES (@DocumentoIdentidad, @Nombre, @Apellido, @Edad, @Sexo, @Curso);
            COMMIT TRAN;
        END TRY 
        BEGIN CATCH
            SELECT @ErrorSeverity = ERROR_SEVERITY(),@ErrorState = ERROR_STATE(), @ErrorMessage = ERROR_PROCEDURE() + '-' + 'INSERT TABLA TITULO' + ':' + ERROR_MESSAGE();
		    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState); 
		    ROLLBACK TRAN @TransactionName;  

        END CATCH
    END

    ELSE IF @Accion = 'SELECT'
    BEGIN
        IF @IdEstudiante IS NULL
            
            SELECT IdEstudiante
                  ,DocumentoIdentidad
                  ,Nombre
                  ,Apellido
                  ,Edad
                  ,Sexo
                  ,Curso
              FROM dbo.Estudiantes
        ELSE
            
            SELECT IdEstudiante
                  ,DocumentoIdentidad
                  ,Nombre
                  ,Apellido
                  ,Edad
                  ,Sexo
                  ,Curso
              FROM dbo.Estudiantes
              WHERE IdEstudiante = @IdEstudiante;
    END

    ELSE IF @Accion = 'SELECT2'
    BEGIN
        IF @IdEstudiante IS NULL
            
            SELECT IdEstudiante
                    ,DocumentoIdentidad
                    ,CONCAT(Nombre,' ',Apellido) AS NOMBRE
                    ,Edad
                    ,Sexo
                    ,Curso
                FROM dbo.Estudiantes
        ELSE
            
            SELECT IdEstudiante
                    ,DocumentoIdentidad
                    ,CONCAT(Nombre,' ',Apellido) AS NOMBRE
                    ,Edad
                    ,Sexo
                    ,Curso
                FROM dbo.Estudiantes
                WHERE IdEstudiante = @IdEstudiante;
        END

    ELSE IF @Accion = 'UPDATE'
    BEGIN

        BEGIN TRAN @TransactionName;            
        BEGIN TRY
            UPDATE Estudiantes
            SET DocumentoIdentidad = @DocumentoIdentidad,
                Nombre = @Nombre,
                Apellido = @Apellido,
                Edad = @Edad,
                Sexo = @Sexo,
                Curso = @Curso
            WHERE IdEstudiante = @IdEstudiante;
            COMMIT TRAN;
        END TRY 
        BEGIN CATCH
            SELECT @ErrorSeverity = ERROR_SEVERITY(),@ErrorState = ERROR_STATE(), @ErrorMessage = ERROR_PROCEDURE() + '-' + 'INSERT TABLA TITULO' + ':' + ERROR_MESSAGE();
		    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState); 
		    ROLLBACK TRAN @TransactionName;  

        END CATCH
    END

    ELSE IF @Accion = 'DELETE'
    BEGIN
        BEGIN TRAN @TransactionName;  

        BEGIN TRY
            DELETE FROM Estudiantes WHERE IdEstudiante = @IdEstudiante;
            COMMIT TRAN;
        END TRY 
        BEGIN CATCH
            SELECT @ErrorSeverity = ERROR_SEVERITY(),@ErrorState = ERROR_STATE(), @ErrorMessage = ERROR_PROCEDURE() + '-' + 'INSERT TABLA TITULO' + ':' + ERROR_MESSAGE();
		    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState); 
		    ROLLBACK TRAN @TransactionName;  

        END CATCH
    END
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo llave de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calificacion', @level2type=N'COLUMN',@level2name=N'IdCalificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave foranea con la tabla estudiante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calificacion', @level2type=N'COLUMN',@level2name=N'IdEstudiante'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo materia estudiante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calificacion', @level2type=N'COLUMN',@level2name=N'Materia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Periodos de 1 al 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calificacion', @level2type=N'COLUMN',@level2name=N'Periodo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo nota de 1 a 10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Calificacion', @level2type=N'COLUMN',@level2name=N'Nota'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo llave de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Estudiantes', @level2type=N'COLUMN',@level2name=N'IdEstudiante'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo para documento de identidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Estudiantes', @level2type=N'COLUMN',@level2name=N'DocumentoIdentidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo nombre del estudiante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Estudiantes', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo apellido del estudiante ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Estudiantes', @level2type=N'COLUMN',@level2name=N'Apellido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo Edad del estudiante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Estudiantes', @level2type=N'COLUMN',@level2name=N'Edad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo genero del estudiante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Estudiantes', @level2type=N'COLUMN',@level2name=N'Sexo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo curso al que pertenece al estudiante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Estudiantes', @level2type=N'COLUMN',@level2name=N'Curso'
GO
