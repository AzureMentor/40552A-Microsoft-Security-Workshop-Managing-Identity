$t = Get-SPWebTemplate -CompatibilityLevel 15 -Identity "STS#1"

$w = Get-SPWebApplication http://PAM-SVR1.priv.adatum.com:82

New-SPSite -Url $w.Url -Template $t -OwnerAlias PRIV\MIMAdmin -CompatibilityLevel 15 -Name 'MIM Portal' -SecondaryOwnerAlias PRIV\BackupAdmin

$contentService = [Microsoft.SharePoint.Administration.SPWebService]::ContentService

$contentService.ViewStateOnServer = $false

$contentService.Update()

Get-SPTimerJob hourly-all-sptimerservice-health-analysis-job | Disable-SPTimerJob
