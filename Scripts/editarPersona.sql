-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Brayan Marín Quirós>
-- Create date: <13/05/2022>
-- Description:	<Sp que realiza update de los datos de una persona>
-- =============================================
CREATE PROCEDURE [dbo].[editarPersona] (
										  @inIdentificacion INT, 
										  @inNombreCompleto VARCHAR(50),
										  @inTelefono INT, 
										  @inCorreoInstitucional VARCHAR(50), 
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

    	
	UPDATE Persona
	SET nombreCompleto = @inNombreCompleto, 
		celular = @inTelefono, 
		correoInstitucional = @inCorreoInstitucional,
		idDepartamento = @inIdDepartamento,
		esJefatura = @inEsJefatura,
		esAdmin = @inEsAdmin,
		serviciosEspeciales = @inServiciosEspeciales,
		esAdministrativo = @inServiciosEspeciales,
		estaEnPlanilla = @inEstaEnPlanilla
	WHERE identificacion = @inIdentificacion 

END
GO
