# Lab 09 - ServiceNow IAM Workflow

## Use Cases
Access requests, IAM incidents, changes, disconnected application fulfillment, certification remediation and termination validation.

## Example Flow

```mermaid
flowchart LR
    U[User Request] --> SN[ServiceNow]
    SN --> M[Manager Approval]
    M --> AO[App Owner Approval]
    AO --> IGA[IGA Provisioning]
    IGA --> APP[Target App]
    APP --> SN
    SN --> CLOSED[Closed with Evidence]
```

## Exercise
Use `data/servicenow_tickets.csv`.

Classify each item as request, incident, change or remediation, then determine priority, resolver group and required evidence.
