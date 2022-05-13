USE [ProyectoDisenno]
GO

/****** Object:  StoredProcedure [dbo].[verTodosEstacionamienos]    Script Date: 12/05/2022 18:04:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Marín, Brayan>
-- Create date: <Create Date 12,05, 2022>
-- Description:	<Description, Sp para ver todos los estacionamientos>
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[verTodosEstacionamienos]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--Selecciona todos los estacionamientos
    SELECT * FROM [dbo].[Estacionamiento]
END
GO


