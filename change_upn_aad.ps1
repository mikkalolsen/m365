<# 
Created: 16.06.2022 
Author: mikael.olsen@arribatec.com
#>

<# If there is a mismatch between AD UPN, and AAD/M365 UPN, the UPN in AAD needs to be changed with powershell, to match AD #>

# Connect with admin credentals
Connect-MsolService

# Find AAD UPN
Get-MsolUser -SearchString "<first or last name>" 

# Change UPN in AAD to match AD
Set-MsolUserPrincipalName -UserPrincipalName old.upn@email.com -NewUserPrincipalName newcorrect.upn@email.com

# Lastly, wait for sync, or manually run sync from syncserver
start-adsyncsynccycle -policytype Deltadfsdfsd