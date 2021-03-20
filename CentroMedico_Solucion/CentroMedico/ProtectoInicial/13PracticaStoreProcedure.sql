--Creacion de Stored PRocedure--

--ALTA PACIENTE_-

create proc ALTA_Paciente (
	--Todos los campos para insertar directamente.
	@dni varchar(20)
	@nombre varchar(50)
	@domicilio varchar(50) = 'rivadavia' --se puede poner datos por defecto por ejemp
	)

as

IF NOT EXISTS (SELECT * FROM Paciente Where dni =@dni)
BEGIN
	INSERT INTO Paciente (dni,nombre, domicilio) --Es de buena practica poner los campos
	VALUES (@dni,@nombre,@domicilio)
	print 'se agrego correectamente'
	/*
	INSERT INTO Paciente2 (dni,nombre, domicilio) --Es de buena practica poner los campos
	VALUES (@dni,@nombre,@domicilio)
	print 'se agrego correectamente'
	*/
	return
END
ELSE
BEGIN
	print 'ya existe'
END

EXEC ALTA_PACIENTE