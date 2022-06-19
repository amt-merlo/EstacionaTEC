SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Allison Montero Merlo>
-- Create date: <18/06/2022>
-- Description:	<Sp que genera un usuario de operador>
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[generarUsuarioOperador](@inIdOperador INT, @inContrasenna VARCHAR(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.O
	SET NOCOUNT ON;

	-- Crea un nuevo usuario
    INSERT INTO [dbo].[UsuarioOperador] ([idOperador], [contrasenna]) 
	VALUES(@inIdOperador, @inContrasenna)
END
GO
