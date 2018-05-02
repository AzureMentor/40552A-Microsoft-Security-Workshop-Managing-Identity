Get-Service –Name wuauserv | Set-Service –StartupType Automatic 
Get-Service –Name wuauserv | Start-Service
