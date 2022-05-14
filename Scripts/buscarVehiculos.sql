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
-- Description:	<Sp que busca todos los vehículos de una persona>
-- =============================================
CREATE PROCEDURE [dbo].[buscarVehiculos](
											@inIdentificacion INT
										)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   	-- Selecciona todos los vehiculos de una persona
	SELECT * 
	FROM [dbo].[Vehiculo] AS V
	WHERE P.idPersona = @inIdentificacion AND P.visible = 1
END
GO
