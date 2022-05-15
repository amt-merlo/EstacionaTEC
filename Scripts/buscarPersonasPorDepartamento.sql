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
-- Description:	<Sp que busca todas las personas de un departamento>
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[buscarPersonasPorDepartamento] (@inIdDepartamento INT)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT P.identificacion AS Identificación, 
		   P.nombreCompleto AS 'Nombre completo',
		   P.celular AS Teléfono, 
		   P.correoInstitucional AS 'Correo institucional', 
		   P.correoAlterno AS 'Correo alterno', 
		   D.tipo AS Departamento, 
		   P.esJefatura AS 'Es Jefatura',
		   P.esAdmin AS 'Es Admin',
		   P.serviciosEspeciales AS 'Tiene servicios especiales',
		   P.esAdministrativo AS 'Es administrativo',
		   P.estaEnPlanilla AS 'Está en planilla'

	FROM [dbo].[Persona] AS P 
	INNER JOIN [dbo].[Departamento] AS D
	ON P.idDepartamento = D.id
	WHERE P.idDepartamento = @inIdDepartamento

END
GO
