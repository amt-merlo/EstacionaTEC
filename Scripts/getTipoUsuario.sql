CREATE OR ALTER PROCEDURE getTipoUsuario(@inIdentificacion INT)
AS
BEGIN
	DECLARE @serviciosEspeciales INT, @jefatura INT
	SELECT @serviciosEspeciales = serviciosEspeciales FROM Persona WHERE identificacion = @inIdentificacion

	IF (@serviciosEspeciales = 1)
	BEGIN
		SELECT 3 AS Tipo --servicios especiales
	END
	ELSE
	BEGIN
		SELECT @jefatura = esJefatura FROM Persona WHERE identificacion = @inIdentificacion
		IF(@jefatura = 1)
		BEGIN
			SELECT 2 AS Tipo --jefatura
		END
		ELSE
		BEGIN
			SELECT 1 AS Tipo --funcionario estándar
		END
	END
END