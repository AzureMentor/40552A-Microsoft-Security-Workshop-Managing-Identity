$r = Get-PAMRoleForRequest | Where-Object { $_.DisplayName -eq 'CorpAdmins' }
New-PAMRequest -Role $r