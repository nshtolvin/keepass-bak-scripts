::Изменить значение переменной sourceFile, указав необходимый файл для архивации
set sourceFile=keydb.kdbx
set destinationFile=keepass_backup.zip

::echo %CD%\%sourceFile%
::echo %CD%\%destinationFile%

::вызов архиватора 7zip (%SystemDrive% - диск, на котором установлен 7zip): 
::a - добавить файл в архив
::-tzip - формат архива (по умолчанию 7z), в данном случае zip-архив
::-ssw - включить файл в архив, даже если он в данный момент используется
::-mx7 - уровень сжатия = 7
::-r0 - рекурсивное архивирование для папок; задается числом от 0 (все каталоги) до количества уровней каталогов, которые нужно включить в архив
"%SystemDrive%\Program Files\7-Zip\7z.exe" a -tzip -ssw -mx7 -r0 "%CD%\%destinationFile%" "%CD%\%sourceFile%"

::timeout /t 10