# Terraform State Corruption

## Objective

Terraform state file becomes corrupted or deleted.

## Failure Simulation

A controlled failure was introduced to observe system behavior and
validate the recovery procedure.

## Symptoms

-   Error loading state / backend initialization failed.

## Sample Logs

``` text
Error: Failed to load state
State snapshot was invalid
```

## Root Cause Analysis

Corrupted or inconsistent Terraform state file.

## Resolution Steps

1.  Restore the latest state backup.
2.  Run terraform init.
3.  Run terraform plan.
4.  Validate resources.
5.  Resume deployments.

## Validation

-   Application functionality verified.
-   Deployment completed successfully.
-   Monitoring confirmed healthy status.

## Prevention Strategy

-   Enable S3 versioning and DynamoDB state locking.

## Lessons Learned

Documented recovery procedures and preventive controls reduce downtime
and improve operational resilience.
