# Lab 06 - Active Directory and LDAP

## Topics
Users, groups, OUs, nested groups, privileged groups, stale accounts, LDAP searches, group membership and disabled accounts.

## Tasks
1. Export privileged group membership.
2. Find enabled users inactive for 90+ days.
3. Identify disabled users still in sensitive groups.
4. Review nested group membership.
5. Run LDAP queries in a lab directory.

## LDAP Examples

Active users:
```text
(&(objectClass=user)(!(userAccountControl:1.2.840.113556.1.4.803:=2)))
```

Finance users:
```text
(&(objectClass=user)(department=Finance))
```
