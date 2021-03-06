USE [ProyectoDisenno]
GO
/****** Object:  StoredProcedure [dbo].[editarPersona]    Script Date: 14/05/2022 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Brayan Marín Quirós>
-- Create date: <13/05/2022>
-- Description:	<Sp que realiza update de los datos de una persona>
-- =============================================
ALTER PROCEDURE [dbo].[editarPersona] (
										  @inIdentificacion INT, 
										  @inNombreCompleto VARCHAR(50),
										  @inTelefono INT, 
										  @inCorreoInstitucional VARCHAR(50),
										  @inCorreoAlterno VARCHAR(50),
										  @inIdDepartamento INT,
										  @inEsJefatura BIT,
										  @inEsAdmin BIT,
										  @inServiciosEspeciales BIT,
										  @inEsAdministrativo BIT,
										  @inEstaEnPlanilla BIT
										)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @returnValue INT
	--Realiza el update de la persona

	IF EXISTS(SELECT * 
			  FROM PERSONA AS P 
			  WHERE P.identificacion = @inIdentificacion)
	BEGIN
		UPDATE Persona
		SET nombreCompleto = @inNombreCompleto, 
			celular = @inTelefono, 
			correoInstitucional = @inCorreoInstitucional,
			correoAlterno = ISNULL(@inCorreoAlterno, correoAlterno),
			idDepartamento = @inIdDepartamento,
			esJefatura = @inEsJefatura,
			esAdmin = @inEsAdmin,
			serviciosEspeciales = @inServiciosEspeciales,
			esAdministrativo = @inServiciosEspeciales,
			estaEnPlanilla = @inEstaEnPlanilla
		WHERE identificacion = @inIdentificacion
		
		SET @returnValue = 1 --Sin error
		SELECT @returnValue


	END

	ELSE
	BEGIN
		SET @returnValue = 0 --error
		SELECT @returnValue
	END

END
