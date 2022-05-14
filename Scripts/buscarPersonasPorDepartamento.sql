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
CREATE PROCEDURE [dbo].[buscarPersonasPorDepartamento] (@inIdDepartamento INT)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT * FROM [dbo].[Persona] AS P
	WHERE P.idDepartamento = @inIdDepartamento

END
GO
