--***Tablas Temporal en MEMORIA***--

DECLARE @miTabla TABLE(id int IDENTITY(1,1), pais varchar(50))

INSERT INTO @miTabla values ('Mexico')
INSERT INTO @miTabla values ('Mexico')
INSERT INTO @miTabla values ('Mexico')
INSERT INTO @miTabla values ('Mexico')
INSERT INTO @miTabla values ('Mexico')

SELECT * FROM @miTabla
--Cuando se termina de ejecutar el SCRIPT la tabla se elimina Automaticamente.


--***Tablas Temporal FISICA***--
--Este tipo de tablas desaparecen cuando reiniciemos la Base de Datos.
--Va a estar mientras la Motor este ejecutandose.

--Se declara como una Tabla normal. Se diferencia por el simbolo '#'.
CREATE TABLE #miTabla (id int IDENTITY(1,1), nombre varchar(50))
INSERT INTO #miTabla values ('Mexico')
INSERT INTO #miTabla values ('asd')
INSERT INTO #miTabla values ('asdasda')

SELECT * FROM #miTabla
--Se recomienda eliminar la tabla despues de su uso:
DROP TABLE #miTabla
