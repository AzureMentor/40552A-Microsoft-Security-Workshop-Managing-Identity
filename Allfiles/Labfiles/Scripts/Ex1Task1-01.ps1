New-ADGroup –Name CorpAdmins –GroupCategory Security –GroupScope Global –SamAccountName CorpAdmins

New-ADUser –SamAccountName CorpAdmin01 –Name CorpAdmin01

Add-ADGroupMember –Identity CorpAdmins –Members CorpAdmin01

$password = ConvertTo-SecureString 'Pa55w.rd' –AsPlainText –Force

Set-ADAccountPassword –Identity CorpAdmin01 –NewPassword $password

Set-ADUser –Identity CorpAdmin01 –Enabled 1 -DisplayName 'CorpAdmin 01'
