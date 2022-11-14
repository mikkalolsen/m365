Enabled users with license.ps1


Get-MSOLUser -ENABLEDFILTER ENABLEDONLY -All | where {$_.isLicensed -eq $true} |
Select UserPrincipalName, DisplayName, firstname, lastname, @{Name="PrimaryEmailAddress";Expression={$_.ProxyAddresses | 
?{$_ -cmatch '^SMTP\:.*'}}} | 
Export-Csv C:\temp\active_licenced_users.csv -noTypeInformation -Encoding UTF8