Get-AzureADGroupMember -ObjectId  | select userprincipalname, displayname, jobtitle, department, city | Export-Csv -Path .\bp-Funk-users.csv -NoTypeInformation
Get-AzureADGroupMember -ObjectId  | select userprincipalname, displayname, jobtitle, department, city | Export-Csv -Path .\bp-hand-users.csv -NoTypeInformation
Get-AzureADGroupMember -ObjectId  | select userprincipalname, displayname, jobtitle, department, city | Export-Csv -Path .\bso-funk-users.csv -NoTypeInformation
Get-AzureADGroupMember -ObjectId  | select userprincipalname, displayname, jobtitle, department, city | Export-Csv -Path .\bso-hand-users.csv -NoTypeInformation
Get-AzureADUser -Filter "Department eq ''" | select userprincipalname, displayname, jobtitle, department, city | Export-Csv -Path .\bso-all-users.csv

Set-MailboxFolderPermission -Identity :\calendar -User default -AccessRights Reviewer
Set-MailboxFolderPermission -Identity :\calendar -User default -AccessRights Reviewer
Set-MailboxFolderPermission -Identity :\calendar -User default -AccessRights Reviewer
