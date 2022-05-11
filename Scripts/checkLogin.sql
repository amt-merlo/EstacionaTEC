CREATE OR ALTER PROCEDURE checkLogin (@inCorreo nchar(100), @inContrasenna nchar(100))
AS
BEGIN
	IF EXISTS (SELECT * FROM usuario WHERE CorreoElectronico = @inCorreo AND contrasenna = @inContrasenna)
		BEGIN
			SELECT Usuario.ID_Persona as ID, Persona.esAdministrativo as Administrativo 
			FROM usuario INNER JOIN Persona ON Persona.identificacion = usuario.id_Persona 
			WHERE CorreoElectronico = @inCorreo --Credenciales correctas
		END
		ELSE
		BEGIN
			SELECT -100 as ID --Credenciales incorrectas
		END
END

EXEC checkLogin 'merlo08@estudiantec.cr', 'alita'
