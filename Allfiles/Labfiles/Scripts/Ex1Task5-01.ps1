$ca = Get-Credential
New-PAMTrust -SourceForest "adatum.com" -Credentials $ca
