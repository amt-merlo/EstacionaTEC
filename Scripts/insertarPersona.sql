USE [ProyectoDisenno]
GO

/****** Object:  StoredProcedure [dbo].[insertarPersona]    Script Date: 12/05/2022 18:02:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Marín, Brayan>
-- Create date: <Create Date 12,05, 2022>
-- Description:	<Description, Sp para insertar una persona>
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[insertarPersona] (
										  @inIdentificacion INT, 
										  @inNombreCompleto VARCHAR(50),
										  @inTelefono INT, 
										  @inCorreoInstitucional VARCHAR(50), 
										  @inCorreoAlterno VARCHAR(50),
										  @inDepartamento INT,
										  @inEsJefatura BIT,
										  @inEsAdmin BIT,
										  @inServiciosEspeciales BIT
										)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRY
		-- Inserta todos los datos en la tabla personas
		INSERT INTO [dbo].[Persona] ([identificacion], 
									 [nombreCompleto], 
									 [celular], 
									 [correoInstitucional], 
									 [correoAlterno], 
									 [idDepartamento], 
									 [esJefatura], 
									 [esAdmin], 
									 [serviciosEspeciales])
		VALUES ( 
				 @inIdentificacion, 
				 @inNombreCompleto,
				 @inTelefono, 
				 @inCorreoInstitucional, 
				 @inCorreoAlterno,
				 @inDepartamento,
				 @inEsJefatura,
				 @inEsAdmin,
				 @inServiciosEspeciales
			   )

		RETURN 1 -- Sin error
	END TRY

	BEGIN CATCH
		RETURN 0 -- Error
	END CATCH

END
GO


