# Configuration Drift

## Objective

Infrastructure differs from the Terraform configuration because of
manual changes.

## Failure Simulation

A controlled failure was simulated to validate the recovery process.

## Sample Logs

``` text
terraform plan shows unexpected resource changes.
```

## Root Cause Analysis

Manual updates made outside Terraform created configuration drift.

## Resolution Steps

1.  Run `terraform plan` to identify drift.
2.  Review manual changes.
3.  Restore the desired state using `terraform apply`.
4.  Validate infrastructure consistency.

## Validation

-   System recovered successfully.
-   Services operating normally.
-   Monitoring confirms healthy status.

## Prevention Strategy

-   Manage all infrastructure through Infrastructure as Code and
    restrict manual changes.

## Lessons Learned

Regular monitoring, backups, and documented procedures reduce recovery
time and operational risk.
