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
-- Description:	<Sp que genera un usuario>
-- =============================================
CREATE PROCEDURE [dbo].[generarUsuario](@inIdPersona INT, @inContrasenna VARCHAR(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Crea un nuevo usuario
    INSERT INTO [dbo].[Usuario] ([id_Persona], [contrasenna]) 
	VALUES(@inIdPersona, @inContrasenna)
END
GO
