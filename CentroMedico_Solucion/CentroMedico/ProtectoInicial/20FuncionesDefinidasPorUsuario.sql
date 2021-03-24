
---***Funciones definidas por el Usuario***---

Al crearlas aparecen en PROGRAMMATIBILITY -> FUNCTIONS -> TABLA/SCALAR-VALUED FUNCTIONS


--**Funciones de Tipo Escalares**----------------------------------------------------------------

/*Son funciones q nos permiten recivir uno o mas parametros y devolver un valor de un tipo especifico.*/


CREATE FUNCTION nombrefun (@var int) --Primero se detalla el PROTOTIPO
RETURNS int							 --Incluyendo el tipo de dato que va a devolver.
	AS --Para indicar que estamos 
BEGIN
	set @var = @var * 5
	return @var
END
--select dbo.nombrefun (256)  /*Haci se usa la funcion*/

CREATE FUNCTION concatenar (
				@apellido varchar(50),
				@nombre varchar(50)
				)
RETURNS varchar(100)
	AS
BEGIN
	declare @resultado varchar(100)
	set @resultado = @apellido + ', ' + @nombre
	return @resultado	

END

--select dbo.concatenar('Lopez','Roberto')



CREATE FUNCTION obtenerPais(
				@idpaciente paciente
				)
RETURNS varchar(50)
	AS
BEGIN
	declare @pais varchar(50)
	SET @pais = (SELECT PA.pais From paciente P
					INNER JOIN Pais PA
					ON PA.idPais = P.idPais
					WHERE idPaciente=@idpaciente)
	RETURN @pais
END

--select dbo.obtenerPais (9)



--**Funciones de Tipo TABLA**--------------------------------------------------------------------

/*La diferencia entre Escalares y esta es que con estas funciones 
retorna un conjunto de registros/una Tabla.*/


CREATE FUNCTION listaPaises()
RETURNS @paises TABLE(idpais char(3), pais varchar(50)) -- TABLE es el nombre para definir el tipo de dato Tabla.
	AS
BEGIN	
	INSERT INTO @paises values('ESP','España')
	INSERT INTO @paises values('MEX','Mexico')
	INSERT INTO @paises values('CHI','Chile')
	INSERT INTO @paises values('PER','Perú')
	INSERT INTO @paises values('ARG','Argentina')
	RETURN
END

/*
En definitiva con esta funcion se crea una funcion "Temporal" por eso se insertan los registros.
Para retornar la tabla creada.
*/



