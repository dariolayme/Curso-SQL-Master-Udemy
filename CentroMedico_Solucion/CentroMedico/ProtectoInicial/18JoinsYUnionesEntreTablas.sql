--------****INNER JOIN*****--------
 
	SELECT * from Paciente P
	INNER JOIN TurnoXPaciente T
	ON T.IdPaciente = P.IdPaciente

--Une todos los registros de ambas tabla q tengan el mismo Idpaciente.(sin nulos)

--------****LEFT JOIN*****--------
 
	SELECT * from Paciente P
	LEFT JOIN TurnoXPaciente T
	ON P.IdPaciente = T.IdPaciente --Tabla Paciente iria primero para ser mas performante.

--Trae todos los registros de la tabla a IZquierda uniendo con los registros de la derecha con
--los que cumplan la clausula ON.


--------****RIGHT JOIN*****--------
 
	SELECT * from Paciente P
	RIGHT JOIN TurnoXPaciente T
	ON T.IdPaciente = P.IdPaciente --Tabla Turno iria primero para ser mas performante.

--Trae todos los registros de la tabla a Derecha uniendo con los registros de la derecha con
--los que cumplan la clausula ON. 
--Osea trae todos los Turnos con la info de los pacientes.

--------****UNION*****--------

--Une las dos consultas tienendo la misma cantidad de campo incluyendo el tipo de dato.

SELECT * FROM Turno WHERE Estado = 3
UNION --UNION elimina los repetidos
SELECT * FROM Paciente WHERE Estado = 3

SELECT * FROM Turno 
UNION ALL --UNION ALL muestra los repetidos.
SELECT * FROM Paciente