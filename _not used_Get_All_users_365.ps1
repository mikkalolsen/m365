#Export all users to .csv file
Get-MsolUser -All | Select DisplayName, FirstName, LastName, islicensed, Licenses | Export-Csv -Path c:\temp\users.csv -NoTypeInformation 