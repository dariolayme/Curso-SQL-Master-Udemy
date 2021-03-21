--***Sentencia ALTER***--

--Nos sirve para alterar StructProcedure/Funciones/Tablas,etc
--En este caso veremos ejemplos de modifiaciones sobre una tabla.

ALTER TABLE Paciente ADD Estado smallint
--Modifica una tabla agregando un campo nuevo.

ALTER TABLE Paciente ALTER COLUMN Estado bit
--Modifica una tabla alterando el tipo de dato de un campo.

ALTER TABLE Paciente DROP COLUMN Estado 
--Modifica una tabla eliminando la columna Estado.

--***Sentencia DROP***--

--Nos sirve para Eliminar tablas o incluso Base de datos.
DROP TABLE ASD--<Nombre de la tabla> 


--***Sentencia TRUNCATE***--
/*
Elimina por completo los registros de una tabla.
Resetea campos identity
*/
TRUNCATE TABLE ASD--<Nombre de la tabla> 