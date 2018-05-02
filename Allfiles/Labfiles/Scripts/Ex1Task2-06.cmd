dsacls "CN=AuthN Policies,CN=AuthN Policy Configuration,CN=Services,CN=configuration,DC=priv,DC=adatum,DC=com" /g PRIV\mimadmin:RPWPRCWD;;msDS-AuthNPolicy /i:s

dsacls "CN=AuthN Policies,CN=AuthN Policy Configuration,CN=Services,CN=configuration,DC=priv,DC=adatum,DC=com" /g PRIV\mimadmin:CCDC;msDS-AuthNPolicy

dsacls "CN=AuthN Silos,CN=AuthN Policy Configuration,CN=Services,CN=configuration,DC=priv,DC=adatum,DC=com" /g PRIV\mimadmin:RPWPRCWD;;msDS-AuthNPolicySilo /i:s

dsacls "CN=AuthN Silos,CN=AuthN Policy Configuration,CN=Services,CN=configuration,DC=priv,DC=adatum,DC=com" /g PRIV\mimadmin:CCDC;msDS-AuthNPolicySilo
