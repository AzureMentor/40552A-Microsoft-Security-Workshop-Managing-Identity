$su = New-PAMUser –SourceDomain adatum.com –SourceAccountName CorpAdmin01

$sp = ConvertTo-SecureString –AsPlaintext 'Pa55w.rd' –Force

Set-ADAccountPassword –Identity PRIV.CorpAdmin01 –NewPassword $sp -Reset

Set-ADUser –Identity PRIV.CorpAdmin01 –Enabled 1
