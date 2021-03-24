----***Vistas***----

Las Vistas almacenan consultas en la BD localmente. Al consultar la Vista actualiza los datos.
 
----***TRIGGER***----
/*
Es un disparador de un evento. Hay 3 eventos (INSERT, UPDATE, DELETE). Ante estos 3 eventos con un TRIGGER se va a poder tomar acciones.
Nos permite ir monitoreando las tablas cuando ocurren estos eventos.
*/

CREATE TRIGGER PacienteCreados /*<nombre>*/ ON Paciente --<sobre q tabla vamos a disparar el evento>
AFTER INSERT --Aca especificamos que despues del INSERT sobre la tabla PACIENTE se activara lo siguiente
AS			 --Se pueden colocar mas de un evento 
	IF(SELECT idpais FROM inserted) = 'MEX'
		INSERT into PacienteLog (idpaciente, idpais, fechaAlta)
			SELECT i.idpaciente, i.idpais, getdate() FROM inserted i
/*
Cada ves que se inserte un Paciente con el IdPais = MEX inserta un registro en 
la tabla 'PacienteLog'
*/