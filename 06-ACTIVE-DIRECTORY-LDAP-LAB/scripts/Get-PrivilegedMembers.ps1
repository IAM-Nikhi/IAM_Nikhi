Import-Module ActiveDirectory

$groups = "Domain Admins","Enterprise Admins"

foreach ($group in $groups) {
    Get-ADGroupMember $group -Recursive |
    Select-Object @{Name="Group";Expression={$group}},Name,SamAccountName,ObjectClass
}
