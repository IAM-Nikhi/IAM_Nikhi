# Lab 02 - Joiner, Mover, Leaver Practical Lab

## Scenario
Employee: **Nina Patel**
Employee ID: **E100500**
Initial department: **Finance**
New department: **Treasury**
Final status: **Terminated**

## Joiner
1. HR record arrives.
2. IGA correlates identity.
3. AD/Entra account is created.
4. Birthright groups are calculated.
5. Baseline M365 access is assigned.
6. Optional access uses request/approval.
7. Provisioning is reconciled.

| Rule | Condition | Access |
|---|---|---|
| BR-001 | workerType=Employee | Employees-All |
| BR-002 | department=Finance | Finance-Users |
| BR-003 | location=Raleigh | Raleigh-Users |
| BR-004 | active employee | M365-Baseline |

## Mover
When Nina moves from Finance to Treasury:
- remove Finance role-driven access,
- add Treasury role-driven access,
- retain global access,
- review manually granted access,
- detect SoD conflicts.

## Leaver
- disable directory account,
- block interactive sign-in,
- remove groups,
- remove application access,
- create ServiceNow fulfillment for disconnected apps,
- reconcile target state,
- alert in Splunk on activity after termination.

## Validation
- [ ] HR event received
- [ ] identity correlated
- [ ] account created
- [ ] birthright access correct
- [ ] old mover access removed
- [ ] new access added
- [ ] termination completed
- [ ] reconciliation complete
- [ ] evidence retained
