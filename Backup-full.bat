sqlcmd -E -S WIN-HQ49S\SQLEXPRESS -Q "declare @archivo varchar(MAX) set @archivo ='C:\Backups\Local\tsolperu_siges_ebook_avicolakatty'+'.bak' BACKUP DATABASE tsolperu_siges_ebook_avicolakatty TO DISK = @archivo WITH FORMAT,  MEDIANAME = 'D_SQLServerBackups'"
::--------------------------------------------------------------------------------------------------
sqlcmd -E -S WIN-HQ49S\SQLEXPRESS -Q "declare @archivo varchar(MAX) set @archivo ='C:\Backups\Local\tsolperu_siges_principal_avicolakatty'+'.bak' BACKUP DATABASE tsolperu_siges_principal_avicolakatty TO DISK = @archivo WITH FORMAT,  MEDIANAME = 'D_SQLServerBackups'"
::--------------------------------------------------------------------------------------------------
sqlcmd -E -S WIN-HQ49S\SQLEXPRESS -Q "declare @archivo varchar(MAX) set @archivo ='C:\Backups\Local\tsolperu_siges_efactura_avicolakatty'+'.bak' BACKUP DATABASE tsolperu_siges_efactura_avicolakatty TO DISK = @archivo WITH FORMAT,  MEDIANAME = 'D_SQLServerBackups'"
::--------------------------------------------------------------------------------------------------
sqlcmd -E -S HQ49S\SQLEXPRESS -Q "declare @archivo varchar(MAX) set @archivo ='C:\Backups\Local\tsolperu_siges_seguridad_avicolakatty'+'.bak' BACKUP DATABASE tsolperu_siges_seguridad_avicolakatty TO DISK = @archivo WITH FORMAT,  MEDIANAME = 'D_SQLServerBackups'"
::-------------------------------------------------------------------------------------------------------------
::-------------------------------------------------------------------------------------------------------------
::ebook
:: copia del BK en peso bruto(sin comprimir)
copy "C:\Backups\Local\tsolperu_siges_ebook_avicolakatty.bak" "C:\Backups\SinComprimir\tsolperu_siges_ebook_avicolakatty.bak" /Y
copy "C:\Backups\Local\tsolperu_siges_ebook_avicolakatty.bak" "C:\Backups\SinComprimir\tsolperu_siges_ebook_avicolakatty%date:~-4,4%-%date:~-7,2%-%date:~-10,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%.bak" /Y
::Proceso de comprimido, realiza una copia temporal y posteriormente realiza el comprimid y guarda 
copy "C:\Backups\SinComprimir\tsolperu_siges_ebook_avicolakatty.bak" "c:\Backups"
powershell.exe Compress-Archive -Path c:\Backups\tsolperu_siges_ebook_avicolakatty.bak -CompressionLevel Optimal -DestinationPath C:\Backups\Drive\tsolperu_siges_ebook_avicolakatty%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.zip
del C:\Backups\SinComprimir\tsolperu_siges_ebook_avicolakatty.bak /Q
del c:\Backups\tsolperu_siges_ebook_avicolakatty.bak /Q
::-------------------------------------------------------------------------------------------------
::principal
:: copia del BK en peso bruto(sin comprimir)
copy "C:\Backups\Local\tsolperu_siges_principal_avicolakatty.bak" "C:\Backups\SinComprimir\tsolperu_siges_principal_avicolakatty.bak" /Y
copy "C:\Backups\Local\tsolperu_siges_principal_avicolakatty.bak" "C:\Backups\SinComprimir\tsolperu_siges_principal_avicolakatty%date:~-4,4%-%date:~-7,2%-%date:~-10,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%.bak" /Y
::Proceso de comprimido, realiza una copia temporal y posteriormente realiza el comprimid y guarda 
copy "C:\Backups\SinComprimir\tsolperu_siges_principal_avicolakatty.bak" "c:\Backups"
powershell.exe Compress-Archive -Path c:\Backups\tsolperu_siges_principal_avicolakatty.bak -CompressionLevel Optimal -DestinationPath C:\Backups\Drive\tsolperu_siges_principal_avicolakatty%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.zip
del C:\Backups\SinComprimir\tsolperu_siges_principal_avicolakatty.bak /Q
del c:\Backups\tsolperu_siges_principal_avicolakatty.bak /Q

::-------------------------------------------------------------------------------------------------
::efactura
:: copia del BK en peso bruto(sin comprimir)
copy "C:\Backups\Local\tsolperu_siges_efactura_avicolakatty.bak" "C:\Backups\SinComprimir\tsolperu_siges_efactura_avicolakatty.bak" /Y
copy "C:\Backups\Local\tsolperu_siges_efactura_avicolakatty.bak" "C:\Backups\SinComprimir\tsolperu_siges_efactura_avicolakatty%date:~-4,4%-%date:~-7,2%-%date:~-10,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%.bak" /Y
::Proceso de comprimido, realiza una copia temporal y posteriormente realiza el comprimid y guarda 
copy "C:\Backups\SinComprimir\tsolperu_siges_efactura_avicolakatty.bak" "c:\Backups"
powershell.exe Compress-Archive -Path c:\Backups\tsolperu_siges_efactura_avicolakatty.bak -CompressionLevel Optimal -DestinationPath C:\Backups\Drive\tsolperu_siges_efactura_avicolakatty%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.zip
del C:\Backups\SinComprimir\tsolperu_siges_efactura_avicolakatty.bak /Q
del c:\Backups\tsolperu_siges_efactura_avicolakatty.bak /Q

::-------------------------------------------------------------------------------------------------
::seguridad
:: copia del BK en peso bruto(sin comprimir)
copy "C:\Backups\Local\tsolperu_siges_seguridad_avicolakatty.bak" "C:\Backups\SinComprimir\tsolperu_siges_seguridad_avicolakatty.bak" /Y
copy "C:\Backups\Local\tsolperu_siges_seguridad_avicolakatty.bak" "C:\Backups\SinComprimir\tsolperu_siges_seguridad_avicolakatty%date:~-4,4%-%date:~-7,2%-%date:~-10,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%.bak" /Y
::Proceso de comprimido, realiza una copia temporal y posteriormente realiza el comprimid y guarda 
copy "C:\Backups\SinComprimir\tsolperu_siges_seguridad_avicolakatty.bak" "c:\Backups"
powershell.exe Compress-Archive -Path c:\Backups\tsolperu_siges_seguridad_avicolakatty.bak -CompressionLevel Optimal -DestinationPath C:\Backups\Drive\tsolperu_siges_seguridad_avicolakatty%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.zip
del C:\Backups\SinComprimir\tsolperu_siges_seguridad_avicolakatty.bak /Q
del c:\Backups\tsolperu_siges_seguridad_avicolakatty.bak /Q

