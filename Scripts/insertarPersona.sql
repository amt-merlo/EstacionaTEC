USE [ProyectoDisenno]
GO
/****** Object:  StoredProcedure [dbo].[insertarPersona]    Script Date: 14/05/2022 11:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Marín, Brayan>
-- Create date: <Create Date 12,05, 2022>
-- Description:	<Description, Sp para inserrtar una persona,>
-- =============================================
ALTER   PROCEDURE [dbo].[insertarPersona] (
										  @inIdentificacion INT, 
										  @inNombreCompleto VARCHAR(50),
										  @inTelefono INT, 
										  @inCorreoInstitucional VARCHAR(50), 
										  @inCorreoAlterno VARCHAR(50),
										  @inDepartamento INT,
										  @inEsJefatura BIT,
										  @inEsAdmin BIT,
										  @inServiciosEspeciales BIT,
										  @inEsAdministrativo BIT,
										  @inEstaEnPlanilla BIT,
										  @inContrasenna VARCHAR(50)
										)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @returnValue int

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
									 [serviciosEspeciales],
									 [esAdministrativo],
									 [estaEnPlanilla])
		VALUES ( 
				 @inIdentificacion, 
				 @inNombreCompleto,
				 @inTelefono, 
				 @inCorreoInstitucional, 
				 @inCorreoAlterno,
				 @inDepartamento,
				 @inEsJefatura,
				 @inEsAdmin,
				 @inServiciosEspeciales,
				 @inEsAdministrativo,
				 @inEstaEnPlanilla
			   )

		EXEC [dbo].[generarUsuario] @inIdentificacion, @inContrasenna
		SET @returnValue = 1
		SELECT @returnValue -- Sin error
		

	END TRY

	BEGIN CATCH
		SET @returnValue = 0
		SELECT @returnValue -- Error
		
	END CATCH

	

END