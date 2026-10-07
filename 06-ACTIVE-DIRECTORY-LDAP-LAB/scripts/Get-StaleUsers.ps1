Import-Module ActiveDirectory

$cutoff = (Get-Date).AddDays(-90)

Get-ADUser -Filter {Enabled -eq $true} -Properties LastLogonDate,Department |
Where-Object { -not $_.LastLogonDate -or $_.LastLogonDate -lt $cutoff } |
Select-Object SamAccountName,Name,Department,LastLogonDate |
Export-Csv "./stale_users.csv" -NoTypeInformation
