# Изменить значение переменной SourceFile, указав необходимый файл для архивации
$SourceFile = "keydb.kdbx"
$DestinationFile = "keepass_backup.zip"
# $Env - диск, на котором установлен 7zip "C:\Program Files\7-Zip"
$7zipPath = "C:\Program Files\7-Zip\7z.exe"	#"$env:ProgramFiles\7-Zip\7z.exe"

# Write-Host $7zipPath

# вызов архиватора 7zip (7zip - псевдоним переменной $7zipPath):
# a - добавить файл в архив
# -tzip - формат архива (по умолчанию 7z), в данном случае zip-архив
# -ssw - включить файл в архив, даже если он в данный момент используется
# -mx7 - уровень сжатия = 7
# -r0 - рекурсивное архивирование для папок; задается числом от 0 (все каталоги) до количества уровней каталогов, которые нужно включить в архив
Set-Alias 7zip $7zipPath
7zip a -tzip -ssw -mx7 -r0 (Join-Path $PSScriptRoot $DestinationFile) (Join-Path $PSScriptRoot $SourceFile)

# альтернативный вариант вызова архиватора
# & $7zipPath a -tzip -ssw -mx7 -r0 (Join-Path $PSScriptRoot $DestinationFile) (Join-Path $PSScriptRoot $SourceFile)

# Start-Sleep -Seconds 5