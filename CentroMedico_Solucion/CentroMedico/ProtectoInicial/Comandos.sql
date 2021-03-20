USE [CentroMedico]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[S_Paciente] (
@IdPaciente int
) AS 
--Para declarar una VARIABLE tenemos la palabra reservada "DECLARE"

DECLARE @var_ordenamiento VARCHAR(15) = 'A' -- Lo inicializamos
DECLARE @var_otraCosa VARCHAR(15)

SET @var_ordenamiento =ISNULL(@var_otraCosa, 'No hay bro') -- Setear varialbes

PRINT @var_ordenamiento  --Mostrar

SELECT * FROM Paciente where IdPaciente = @IdPaciente

