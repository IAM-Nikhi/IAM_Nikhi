Connect-MgGraph -Scopes "RoleManagement.Read.Directory","Directory.Read.All"

Get-MgRoleManagementDirectoryRoleAssignment -All |
Select-Object Id,PrincipalId,RoleDefinitionId,DirectoryScopeId |
Export-Csv "./entra_role_assignments.csv" -NoTypeInformation
