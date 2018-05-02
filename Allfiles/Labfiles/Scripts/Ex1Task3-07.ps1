$dbManagedAccount = Get-SPManagedAccount -Identity PRIV\SharePoint

New-SpWebApplication -Name 'MIM Portal' -ApplicationPool 'MIMAPPPool' -ApplicationPoolAccount $dbManagedAccount -AuthenticationMethod 'Kerberos' -Port 82 -URL http://PAM-SVR1.priv.adatum.com
