$user = Get-PAMUser -SourceAccountName CorpAdmin01 -SourceDomain ADATUM
Get-PAMRequest -User $user