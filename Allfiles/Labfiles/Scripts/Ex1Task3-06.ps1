Get-Service –Name wuauserv | Set-Service –StartupType Disabled
Restart-Computer -Force
