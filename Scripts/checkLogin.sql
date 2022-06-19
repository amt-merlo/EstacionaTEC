CREATE OR ALTER PROCEDURE checkLogin (@inCorreo nchar(100), @inContrasenna nchar(100))
AS
BEGIN
	DECLARE @ID NCHAR(100)
	SET @ID = (SELECT identificacion FROM persona where correoInstitucional = @inCorreo)
	IF EXISTS (SELECT * FROM usuario INNER JOIN Persona ON Persona.identificacion = @ID WHERE Persona.correoInstitucional = @inCorreo AND contrasenna = @inContrasenna )
	BEGIN

		
		SELECT Usuario.ID_Persona as ID, Persona.esAdmin as Tipo --0: Funcionario 1: Administrador
		FROM usuario INNER JOIN Persona ON Persona.identificacion = usuario.id_Persona 
		WHERE Persona.correoInstitucional = @inCorreo --Credenciales correctas
	END
	ELSE
	BEGIN
		SET @ID = (SELECT ID FROM Operador where Correo = @inCorreo)
		IF EXISTS (SELECT * FROM usuarioOperador INNER JOIN Operador ON Operador.ID = @ID WHERE Operador.Correo = @inCorreo AND contrasenna = @inContrasenna )
		BEGIN
			DECLARE @Tipo INT
			SET @Tipo = 2 --2:Operador
			SELECT Operador.ID as ID, @Tipo as Tipo FROM Operador WHERE Operador.Correo = @inCorreo 
		END
		ELSE
		BEGIN
				SELECT -100 as ID --Credenciales incorrectas
		END
	END
END

--exec checkLogin 'ffajardo@gmail.com', '123'