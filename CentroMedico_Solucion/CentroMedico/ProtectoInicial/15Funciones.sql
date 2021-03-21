--***Funciones***--

--Al igual que con Struct Procedure empezamos con un CREATE:
--Pero para hacer modificaciones usamos ALTER.
CREATE FUNCTION multiplicador (@num int) 
--ALTER FUNCTION multiplicador (@num int) 
RETURNS int --Despues de el prototipo se coloca que tipo de valor devolverá esta funcion

AS --Al igual que con Struct Procedure viene el AS para colocar lo q necesitamos q haga.
BEGIN
	SET @num = @num+2
	return @num
END

--Para utilizar esta funcion:
--SELECT dbo.multiplicador (3)
--SELECT <Nombre Funcion> (<Parametros de entrada>)

