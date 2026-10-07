# Lab 01 - Enterprise IAM Architecture

## Goal
Design an enterprise IAM ecosystem supporting employees, contractors, cloud applications, legacy applications, audit and IT operations.

## Scenario
A fictional financial institution uses:
- HR system as authoritative source
- SailPoint / RSA IGL / Saviynt
- Active Directory
- Microsoft Entra ID
- LDAP
- ServiceNow
- Splunk
- SQL applications
- SAML/OIDC applications

## System-of-record matrix

| System | Purpose | Identity Source | Provisioning | Governance |
|---|---|---|---|---|
| HR | Worker source | HR | N/A | Authoritative |
| IGA | Governance | HR | AD, Entra, apps | Requests, certs |
| AD | On-prem directory | IGA | Legacy apps | Group reviews |
| Entra ID | Cloud identity | IGA/AD | SaaS | CA, access reviews |
| ServiceNow | ITSM | IGA | Tickets | Workflow evidence |
| Splunk | Monitoring | Logs | N/A | Alerts |

## Practical Exercise
Explain:
1. where identities originate,
2. how accounts are created,
3. how access is approved,
4. how access is reviewed,
5. how failures are monitored,
6. what evidence is retained.
