$of = Get-ADOptionalFeature –Filter "name -eq 'privileged access management feature'"

Enable-ADOptionalFeature $of -Scope ForestOrConfigurationSet -Target "priv.adatum.com"
