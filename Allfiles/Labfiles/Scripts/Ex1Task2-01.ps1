$password = ConvertTo-SecureString "Pa55w.rd" –AsPlainText –Force

New-ADUser –SamAccountName MIMMA –Name MIMMA

Set-ADAccountPassword –Identity MIMMA –NewPassword $password

Set-ADUser –Identity MIMMA –Enabled 1 –PasswordNeverExpires 1

New-ADUser –SamAccountName MIMMonitor –Name MIMMonitor -DisplayName MIMMonitor

Set-ADAccountPassword –Identity MIMMonitor –NewPassword $password

Set-ADUser –Identity MIMMonitor –Enabled 1 –PasswordNeverExpires 1

New-ADUser –SamAccountName MIMComponent –Name MIMComponent -DisplayName MIMComponent

Set-ADAccountPassword –Identity MIMComponent –NewPassword $password

Set-ADUser –Identity MIMComponent –Enabled 1 –PasswordNeverExpires 1

New-ADUser –SamAccountName MIMSync –Name MIMSync

Set-ADAccountPassword –Identity MIMSync –NewPassword $password

Set-ADUser –Identity MIMSync –Enabled 1 –PasswordNeverExpires 1

New-ADUser –SamAccountName MIMService –Name MIMService

Set-ADAccountPassword –Identity MIMService –NewPassword $password

Set-ADUser –Identity MIMService –Enabled 1 –PasswordNeverExpires 1

New-ADUser –SamAccountName SharePoint –Name SharePoint

Set-ADAccountPassword –Identity SharePoint –NewPassword $password

Set-ADUser –Identity SharePoint –Enabled 1 –PasswordNeverExpires 1

New-ADUser –SamAccountName SqlServer –Name SqlServer

Set-ADAccountPassword –Identity SqlServer –NewPassword $password

Set-ADUser –Identity SqlServer –Enabled 1 –PasswordNeverExpires 1

New-ADUser –SamAccountName BackupAdmin –name BackupAdmin

Set-ADAccountPassword –Identity BackupAdmin –NewPassword $password

Set-ADUser –Identity BackupAdmin –Enabled 1 -PasswordNeverExpires 1

New-ADUser -SamAccountName MIMAdmin -Name MIMAdmin

Set-ADAccountPassword –Identity MIMAdmin -NewPassword $password

Set-ADUser -Identity MIMAdmin -Enabled 1 -PasswordNeverExpires 1

Add-ADGroupMember "Domain Admins" SharePoint

Add-ADGroupMember "Domain Admins" MIMService
