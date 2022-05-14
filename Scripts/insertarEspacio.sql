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
-- Create date: <14/05/2022>
-- Description:	<Sp que inserta un espacio al estacionamiento>
-- =============================================
CREATE PROCEDURE [dbo].[insertarEspacio](@inIdEstacionamiento INT,
									     @inIdTipo INT,
										 @inNumeracion VARCHAR(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @returnValue int

	BEGIN TRY

		INSERT INTO [dbo].[Espacio] ([idEstacionamiento], [idTipo], [numeracion], [disponible])
		VALUES (@inIdEstacionamiento, @inIdTipo, @inNumeracion, 1)

		SET @returnValue = 1 -- Sin error
		SELECT @returnValue

	END TRY

	BEGIN CATCH

		SET @returnValue = 0
		SELECT @returnValue -- Error

	END CATCH





END
GO
