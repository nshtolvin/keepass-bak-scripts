# KeePass backup scripts

Scripts for creating archives with encrypted or unencrypted backups of KeePass (https://keepass.info/) password databases.

## Usage

[CreateKeePassBackup.bat](CreateKeePassBackup.bat) and [CreateKeePassBackup.ps1](CreateKeePassBackup.ps1) - old version of the script for Windows CMD and PowerShell.

They search the current directory for a KeePass password database named _"keydb.kdbx"_ and create an archive named _"keepass_backup.zip"_. To do this, simply call the script.

[CreateKeePassBackup.new.bat](CreateKeePassBackup.new.bat) and [CreateKeePassBackup.new.ps1](CreateKeePassBackup.new.ps1) - new versions of the script for Windows CMD and PowerShell.

Common usage patterns:
```bat
CreateKeePassBackup.new.bat [<input_filename> [output_archive_name [-p]]]
```
```powershell
CreateKeePassBackup.new.ps1 [-InputFile <input_filename>] [-OutputArchive <output_archive_name>] [-Password y]
```
If you do not specify any parameters when calling the script, they work as old version scripts, i.e. they search the current directory for a KeePass password database named _"keydb.kdbx"_ and create an archive named _"keepass_backup.zip"_.

## Allowed usage
For [CreateKeePassBackup.new.bat](CreateKeePassBackup.new.bat) script:
```bat
:: zip a file named "example.kdbx" (archive name - default keepass_backup.zip, no encryption)
CreateKeePassBackup.new.bat example.kdbx

:: zip a file named "example.kdbx" to archive "example.zip" (no encryption)
CreateKeePassBackup.new.bat example.kdbx example.zip

:: zip a file named "example.kdbx" to archive "example.zip" with encryption (password is requested further and is not displayed on the screen when entered)
CreateKeePassBackup.new.bat example.kdbx example.zip -p
```

For [CreateKeePassBackup.new.ps1](CreateKeePassBackup.new.ps1) script you can use parameters in any combination, for example:
```powershell
# zip a file named "example.kdbx" (archive name - default "keepass_backup.zip", no encryption)
CreateKeePassBackup.new.ps1 -InputFile example.kdbx

# zip a file named by default "keydb.kdbx" to archive "example.zip" (no encryption)
CreateKeePassBackup.new.ps1 -OutputArchive example.zip

# zip a default file "keydb.kdbx" to default archive "keepass_backup.zip" with encryption
CreateKeePassBackup.new.ps1 -InputFile example.kdbx -OutputArchive example.zip -Password y

# zip a file named "example.kdbx" to archive "example.zip" (no encryption)
CreateKeePassBackup.new.ps1 -InputFile example.kdbx -OutputArchive example.zip

# zip a file named "example.kdbx" to archive "example.zip" with encryption (password is requested further and is not displayed on the screen when entered)
CreateKeePassBackup.new.ps1 -InputFile example.kdbx -OutputArchive example.zip -Password y
```
