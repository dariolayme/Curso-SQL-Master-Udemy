--Estructuras de Control--
--IF
declare @idpaciente int
set @idpaciente = 7

IF @idpaciente = 7
BEGIN--como llave inicial/solo se usa cuando tenemos mas de una instrucciona ejecutarse
	SELECT * FROM Paciente Where IdPaciente = @idpaciente-- 
	print 4
END--llave final
ELSE
BEGIN
	print 5
END

---EXISTS (existe?)
IF EXISTS(SELECT * FROM Paciente where IdPaciente = 4)
	print 123

--WHILE (mientras)

declare @contador int = 0
WHILE @contador <= 10
BEGIN
	PRINT @contador
	SET @contador = @contador + 1
END

--CASE (sWHITCH)
DECLARE @VALOR INT
DECLARE @RESULTADO CHAR(10) = ''
SET @VALOR = 20
SET @RESULTADO = (
	CASE 
		WHEN @VALOR = 10 THEN 'ROJO'
		WHEN @VALOR = 20 THEN 'VERDE'
		WHEN @VALOR = 30 THEN 'AZUL'
	END
)
PRINT @RESULTADO


--RETURN (SALIR A CONSOLA) DIRECTAMENTE

declare @contador1 int = 0
WHILE @contador1 <= 10
BEGIN
	PRINT @contador1
	SET @contador1 = @contador1 + 1
	IF @contador1 = 2
		RETURN -- SALE DESPUES DE Q CONTADOR1 VALGA 2
		PRINT 'ASDASD'
END
PRINT 'ssssss'
--BREAK ()

declare @contador2 int = 0
WHILE @contador2 <= 10
BEGIN
	PRINT @contador2
	SET @contador2 = @contador2 + 1
	IF @contador2 = 2
		BREAK -- sale despues de q contador2 valga 2 fuera del IF no va directamente a COMANDO
		PRINT 'ASDASD'
END
PRINT 'ssssss'


--TRY & CATCH
/*TRY evalua el codigo dentro. Si el codigo produce un error en tiempo de ejecucion el error lo envia
al CATCH para que maneje el error.

CATCH es una sentencia que nos ayuda a tomar el error y tratarlo de manera q este error no corte la
ejecucion del programa
*/
DECLARE @CONTA INT 
BEGIN TRY
	SET @CONTA = 'TEXTO'
END TRY
BEGIN CATCH
	PRINT 'TRANQUI HUBO UN ERROR PERO NO PARO LA EJECUCION'
END CATCH



