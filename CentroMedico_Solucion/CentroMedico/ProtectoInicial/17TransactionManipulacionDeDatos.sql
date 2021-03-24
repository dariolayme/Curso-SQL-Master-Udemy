
--------****TRANSACTIONS*****--------

/*Una Transaction se usa normalmente para evaluar una porcion de codigo en la que estamos 
actualizando datos o borrando (delete o updates) todo lo q tenga q ver con Manipulacion 
de datos.
Para resguardar los datos si es que cometimos un error.
*/

--TRAN = TRANSACTION

--Variable Reservada:  "@@ROWCOUNT" nos dice la cantidad de filas modificados/borrados/seleccionados en la ultima consulta

	---UPDATE---	

BEGIN TRANSACTION --Es como un en GIT "git add ." Si no se coloca un Commit o Rollback la tabla qda Blockeada,
	UPDATE Paciente SET Telefono = 444
IF @@ROWCOUNT = 1
	COMMIT TRANSACTION --Es como en GIT "git commit" en este caso si se cumple la condicion hace efecto del UPDATE
ELSE
	ROLLBACK TRANSACTION--Es como en GIT "git checkout" vuelve a como estaba antes de esta consulta.

	---DELETE---

BEGIN TRANSACTION --Es como un en GIT "git add ." Si no se coloca un Commit o Rollback la tabla qda Blockeada,
	DELETE Paciente SET Telefono = 444
IF @@ROWCOUNT = 1
	COMMIT TRANSACTION --Es como en GIT "git commit" en este caso si se cumple la condicion hace efecto del UPDATE
ELSE
	ROLLBACK TRANSACTION--Es como en GIT "git checkout" vuelve a como estaba antes de esta consulta.

