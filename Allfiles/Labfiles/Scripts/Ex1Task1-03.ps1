New-Item -Path c:\corpfs -ItemType directory

New-SMBShare –Name corpfs –Path 'c:\corpfs' –ChangeAccess 'ADATUM\CorpAdmins'

$acl = Get-Acl c:\corpfs

$car = New-Object System.Security.AccessControl.FileSystemAccessRule( "ADATUM\CorpAdmins", "FullControl", "Allow")

$acl.SetAccessRule($car)

Set-Acl c:\corpfs $acl
