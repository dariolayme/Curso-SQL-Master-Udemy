---****Schedule JOBS****---

declare @fecha char(12)
declare @path char(200)
declare @name char(20)

set @fecha = convert(char(8),getdate(),112) + replace (convert(char(5),getdate(),108),':','')
set @path = 'C:\bd\CentroMedico' + @fecha + '.bak'
set @name = 'CentroMedico' + @fecha

BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME = @name