CREATE OR ALTER PROCEDURE checkLogin (@inCorreo nchar(100), @inContrasenna nchar(100))
AS
BEGIN
	DECLARE @ID NCHAR(100)
	SET @ID = (SELECT identificacion FROM persona where correoInstitucional = @inCorreo)
	IF EXISTS (SELECT * FROM usuario INNER JOIN Persona ON Persona.identificacion = @ID WHERE Persona.correoInstitucional = @inCorreo AND contrasenna = @inContrasenna )
		BEGIN
			SELECT Usuario.ID_Persona as ID, Persona.esAdmin as Administrativo 
			FROM usuario INNER JOIN Persona ON Persona.identificacion = usuario.id_Persona 
			WHERE Persona.correoInstitucional = @inCorreo --Credenciales correctas
		END
		ELSE
		BEGIN
			SELECT -100 as ID --Credenciales incorrectas
		END
END

EXEC checkLogin 'merlo08@estudiantec.cr', 'alita'

