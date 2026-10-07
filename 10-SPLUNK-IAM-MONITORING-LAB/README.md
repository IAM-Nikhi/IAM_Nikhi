# Lab 10 - Splunk IAM Monitoring

## Monitoring Scenarios
- repeated failed logins
- disabled-account authentication
- privileged group changes
- provisioning failures
- access after termination
- connector errors

## SPL Examples

Failed logins:
```spl
index=iam action=failure
| stats count by user
| sort - count
```

Disabled user activity:
```spl
index=iam account_status=disabled action=login
| table _time user source_ip application
```

Privileged group changes:
```spl
index=ad EventCode=4728 OR EventCode=4732
| table _time SubjectUserName MemberName GroupName
```

Provisioning failures:
```spl
index=iga event_type=provisioning status=failed
| stats count by application error_code
```

## Exercise
Use `data/iam_events.csv` to identify suspicious post-termination activity, repeated failures and privileged changes.
