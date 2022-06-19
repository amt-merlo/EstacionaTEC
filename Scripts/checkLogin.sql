CREATE OR ALTER PROCEDURE checkLogin (@inCorreo nchar(100), @inContrasenna nchar(100))
AS
BEGIN
	DECLARE @ID NCHAR(100)
	DECLARE @Tipo INT


	SET @ID = (SELECT identificacion FROM persona where correoInstitucional = @inCorreo)
	IF EXISTS (SELECT * FROM usuario INNER JOIN Persona ON Persona.identificacion = @ID WHERE Persona.correoInstitucional = @inCorreo AND contrasenna = @inContrasenna )
	BEGIN
		SELECT @Tipo = esAdmin FROM Persona WHERE identificacion = @ID;
		IF (@Tipo = 1) 
		BEGIN
			SET @Tipo = 2 --Administrador
		END
		ELSE
		BEGIN
			SET @Tipo = 3 --Funcionario
		END

		SELECT Usuario.ID_Persona as ID, @Tipo as Tipo 
		FROM usuario INNER JOIN Persona ON Persona.identificacion = usuario.id_Persona 
		WHERE Persona.correoInstitucional = @inCorreo --Credenciales correctas
	END
	ELSE
	BEGIN
		SET @ID = (SELECT ID FROM Operador where Correo = @inCorreo)
		IF EXISTS (SELECT * FROM usuarioOperador INNER JOIN Operador ON Operador.ID = @ID WHERE Operador.Correo = @inCorreo AND contrasenna = @inContrasenna )
		BEGIN
			
			SET @Tipo = 4 -- Operador
			SELECT Operador.ID as ID, @Tipo as Tipo FROM Operador WHERE Operador.Correo = @inCorreo 
		END
		ELSE
		BEGIN
				SELECT -100 as ID --Credenciales incorrectas
		END
	END
END

exec checkLogin 'bmarin@estudiantec.cr', 'bmarin'