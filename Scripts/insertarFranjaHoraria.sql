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
-- Create date: <12/05/2022>
-- Description:	<Sp para insertar franjas horarias>
-- =============================================
CREATE PROCEDURE [dbo].[insertarFranjaHoraria](@inIdDia INT,
											   @inIdPersona INT,
											   @inInicio TIME(7),
											   @inFinal TIME(7)
											  )
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @returnValue INT

    --Inserta una franja horaria si no existe
	IF NOT EXISTS(SELECT * 
				  FROM [dbo].[FranjaHoraria] AS FH
				  WHERE @inIdDia = FH.idDia 
						AND @inIdPersona = FH.idPersona 
						AND (@inInicio = FH.inicio 
							 OR @inFinal = FH.fin)
				 )
	BEGIN
		INSERT INTO [dbo].[FranjaHoraria] ([idDia], [idPersona], [inicio], [fin])
		VALUES (@inIdDia, @inIdPersona, @inInicio, @inFinal)

		SET @returnValue = 1
		SELECT @returnValue -- Sin error
	END

	ELSE

	BEGIN
		SET @returnValue = 0
		SELECT @returnValue -- error
	END
END
GO