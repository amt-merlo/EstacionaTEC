USE [ProyectoDisenno]
GO

/****** Object:  StoredProcedure [dbo].[insertarVehiculo]    Script Date: 12/05/2022 18:32:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Brayan Marín Quirós>
-- Create date: <12/05/2022>
-- Description:	<Sp que inserta un vehículo>
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[insertarVehiculo](
											@inIdPersona INT,
											@inPlaca VARCHAR(50)
										 )
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @returnValue INT

    --Inserta un vehículo si no existe
	IF NOT EXISTS(SELECT * 
				  FROM [dbo].[Vehiculo] AS V 
				  WHERE @inPlaca = V.placa)
	BEGIN
		INSERT INTO [dbo].[Vehiculo] ([idPersona], 
									  [placa],
									  [visible])
		VALUES (@inIdPersona, @inPlaca, 1)

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


