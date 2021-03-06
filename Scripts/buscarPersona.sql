USE [ProyectoDisenno]
GO
/****** Object:  StoredProcedure [dbo].[verPersona]    Script Date: 12/05/2022 18:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Marín, Brayan>
-- Create date: <Create Date 12,05, 2022>
-- Description:	<Description, Sp para buscar a una persona,>
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[verPersona] (
										@inIdentificacion INT
									)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Selecciona a una persona segun su identificacion
	SELECT * 
	FROM [dbo].[Persona] 
	WHERE identificacion = @inIdentificacion

END
