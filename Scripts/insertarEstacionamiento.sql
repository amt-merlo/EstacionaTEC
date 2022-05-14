USE [ProyectoDisenno]
GO

/****** Object:  StoredProcedure [dbo].[insertarEstacionamiento]    Script Date: 12/05/2022 18:01:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Marín, Brayan>
-- Create date: <Create Date 12,05, 2022>
-- Description:	<Description, Sp para insertar un estacionamiento>
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[insertarEstacionamiento] (
												 @inNombre VARCHAR(50),
												 @inUbicacion VARCHAR(50),
												 @inIdTipo INT, 
												 @inCantidadEspaciosTotal INT,
												 @inCantidadEspaciosActual INT, 
												 @inCantidadVehicTEC INT, 
												 @inCantidadVehicEspecial INT, 
												 @inHoraApertura TIME(7), 
												 @inHoraCierre TIME(7), 
												 @inNombreContacto VARCHAR(50),
												 @inTelefonoContacto INT, 
												 @inContrato VARCHAR(50)
												)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @returnValue int

	BEGIN TRY
		
		-- If que invalida la inserción de un estacionamiento duplicado
		IF NOT EXISTS(SELECT * 
					  FROM [dbo].[Estacionamiento] AS B 
					  WHERE @inNombre = B.nombre AND @inUbicacion = B.ubicacion AND @inIdTipo = B.idTipo)
		BEGIN
			-- Inserta todos los datos en la tabla Estacionamiento
			INSERT INTO [dbo].[Estacionamiento] (
													[nombre], 
													[ubicacion], 
													[idTipo], 
													[cantidadEspaciosTotal], 
													[cantidadEspaciosActual],
													[cantidadVehicTEC], 
													[cantidadVehicEspecial], 
													[horaApertura], [horaCierre], 
													[nombreContacto], 
													[telefonoContacto], 
													[contrato]
												)
			VALUES (
					@inNombre,
					@inUbicacion,
					@inIdTipo, 
					@inCantidadEspaciosTotal,
					@inCantidadEspaciosActual, 
					@inCantidadVehicTEC, 
					@inCantidadVehicEspecial, 
					@inHoraApertura, 
					@inHoraCierre, 
					@inNombreContacto,
					@inTelefonoContacto, 
					@inContrato
				  )

			SET @returnValue = 1
			SELECT @returnValue -- Sin error

		END 

		ELSE 
		BEGIN
			SET @returnValue = 0
			SELECT @returnValue -- error
		END

	END TRY

	BEGIN CATCH

		SET @returnValue = 0
		SELECT @returnValue -- error

	END CATCH
	

END
GO


