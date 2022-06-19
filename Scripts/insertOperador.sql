USE [ProyectoDisenno]
GO
/****** Object:  StoredProcedure [dbo].[insertarOperador]    Script Date: 18/06/2022 17:16:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Montero, Allison>
-- Create date: <Create Date 17,06, 2022>
-- Description:	<Description, Sp para inserrtar una persona,>
-- =============================================
CREATE OR ALTER   PROCEDURE [dbo].[insertarOperador] (
										  @inIdentificacion INT, 
										  @inNombreCompleto VARCHAR(200),
										  @inCorreo VARCHAR(200),
										  @inTelefono INT, 
										  @inEstacionamiento INT,
										  @inContrasenna VARCHAR(200)
										)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @returnValue int

	BEGIN TRY
		-- Inserta todos los datos en la tabla personas
		INSERT INTO [dbo].[Operador] ([ID], 
									 [Nombre], 
									 [Correo], 
									 [Telefono], 
									 [idEstacionamiento])
		VALUES ( 
				 @inIdentificacion, 
				 @inNombreCompleto,
				 @inCorreo, 
				  @inTelefono,
				 @inEstacionamiento
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