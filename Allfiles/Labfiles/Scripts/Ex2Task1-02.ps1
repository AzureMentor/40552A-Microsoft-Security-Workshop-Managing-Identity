$casp = ConvertTo-SecureString –AsPlaintext 'Pa55w.rd' –Force

$ca = New-Object –TypeName System.Management.Automation.PSCredential –ArgumentList ‘ADATUM\Administrator’,$casp

$pg = New-PAMGroup –SourceGroupName "CorpAdmins" –SourceDomain adatum.com –SourceDC LON-DC1.adatum.com –Credentials $ca

$pr = New-PAMRole –DisplayName "CorpAdmins" –Privileges $pg –Candidates $su
