CREATE PROCEDURE checkLogin (@inCorreo nchar(100), @inContrasenna nchar(100))
AS
BEGIN
	IF EXISTS (SELECT * FROM usuario WHERE CorreoElectronico = @inCorreo AND contrasenna = @inContrasenna)
		BEGIN
			SELECT ID_Persona FROM usuario WHERE CorreoElectronico = @inCorreo --Credenciales correctas
		END
		ELSE
		BEGIN
			SELECT 100 --Credenciales incorrectas
		END
END

