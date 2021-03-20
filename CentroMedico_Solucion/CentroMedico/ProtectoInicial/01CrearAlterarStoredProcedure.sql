/*
Struct Procedure
Procedimiento almacenado Almacenados en SQL.
Diseñados para acciones concretas.
Nos sirve para:
	-Insercion de Datos
	-Actualizacion de datos
	-etc
	
*/

--creacion
--PROC/PROCEDURE

--CREATE para crear desde cero
--ALTER para alterar/modificarla
Create PROC S_Paciente (/*Parametros/variables de entrada*/
@IdPaciente int
) AS 
/*despues viene todos las consultas del Struct Prodedure*/
SELECT * FROM Paciente where IdPaciente = @IdPaciente

GO-- Termina la instruccion

--"ESTO SE PUEDE CREAR COMO UNA VIEWS CON CLICK DERECHO SOBRE EL oBJECT EXPLORER"

/*
SET ANSI_NULLS ON
GO
--Nos permite fitlrar los Nulls en ON
SET QUOTED_IDENTIFIER ON
GO
--Nos permite usar nombres de palabras reservadas de SQL encerrandolo entre comillas "".

*/
------------------PARA EJecutar un Stored Procedure......................
--EXEC S_Paciente /*parametros*/ 3